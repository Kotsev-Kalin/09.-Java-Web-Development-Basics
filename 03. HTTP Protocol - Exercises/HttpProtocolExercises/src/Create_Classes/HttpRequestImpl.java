package Create_Classes;

import java.util.LinkedHashMap;
import java.util.Map;

public class HttpRequestImpl implements HttpRequest {

    private String method;
    private String requestUrl;
    private Map<String, String> headers;
    private Map<String, String> bodyParameters;

    public HttpRequestImpl(String request) {
        this.headers = new LinkedHashMap<>();
        this.bodyParameters = new LinkedHashMap<>();
        this.parseData(request);
    }

    private void parseData(String request) {
        this.parseRequestLineData(request);
        this.parseHeaders(request);
        this.parseBodyParameters(request);
    }

    @Override
    public String getMethod() {
        return this.method;
    }

    @Override
    public void setMethod(String method) {
        this.method = method;
    }

    @Override
    public String getRequestUrl() {
        return this.requestUrl;
    }

    @Override
    public void setRequestUrl(String requestUrl) {
        this.requestUrl = requestUrl;
    }

    @Override
    public void addHeader(String header, String value) {
        this.headers.put(header, value);
    }

    @Override
    public void addBodyParameter(String parameter, String value) {
        this.bodyParameters.put(parameter, value);
    }

    @Override
    public Map<String, String> getHeaders() {
        return this.headers;
    }

    @Override
    public Map<String, String> getBodyParameters() {
        return this.bodyParameters;
    }

    @Override
    public boolean isResource() {
        return !this.requestUrl.contains(".");
    }

    private void parseRequestLineData(String request) {
        String[] requestLine = request.split("\r\n")[0].split("\\s+");
        this.setMethod(requestLine[0]);
        this.setRequestUrl(requestLine[1]);
    }

    private void parseBodyParameters(String request) {
        String[] tokens = request.split("\r\n");
        if (!"<CRLF>".equals(tokens[tokens.length - 1])) {
            String[] bodyParams = tokens[tokens.length - 1].split("[=&]");
            for (int i = 0; i < bodyParams.length - 1; i += 2) {
                this.addBodyParameter(bodyParams[i], bodyParams[i + 1]);
            }
        }
    }

    private void parseHeaders(String request) {
        String[] tokens = request.split("\r\n");
        for (int i = 1; i < tokens.length; i++) {
            if (tokens[i].equals("<CRLF>")) {
                break;
            }
            String[] pair = tokens[i].split(":\\s");
            this.addHeader(pair[0], pair[1]);
        }
    }
}
