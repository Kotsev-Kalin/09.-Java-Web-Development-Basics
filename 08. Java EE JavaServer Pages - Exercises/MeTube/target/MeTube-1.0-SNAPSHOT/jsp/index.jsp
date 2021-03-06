<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:import url="templates/head.jsp"/>
</head>
<body>
<div class="container">
    <main>
        <div class="jumbotron">
            <div class="row">
                <div class="col col-md-12 d-flex justify-content-center">
                    <h1>Welcome to MeTube!</h1>
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col col-md-12 d-flex justify-content-center">
                    <h3>Cool app in beta version</h3>
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-md-6 text-center">
                    <a href="/tubes/create" class="btn btn-primary">Create Tube</a>
                </div>
                <div class="col-md-6 text-center">
                    <a href="/tubes/all" class="btn btn-primary">All Tubes</a>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <c:import url="templates/footer.jsp"/>
    </footer>
</div>
</body>
</html>
