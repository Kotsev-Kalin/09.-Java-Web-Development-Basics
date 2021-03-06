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
                    <h1>Create Tube!</h1>
                </div>
            </div>
            <hr/>
            <form action="/tubes/create" method="post">
                <div class="row">
                    <div class="col col-md-12">
                        <div class="row d-flex justify-content-center">
                            <label for="name">Title</label>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <input type="text" id="name" name="name">
                        </div>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col col-md-12">
                        <div class="row d-flex justify-content-center">
                            <label for="description">Description</label>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <textarea id="description" name="description"></textarea>
                        </div>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col col-md-12">
                        <div class="row d-flex justify-content-center">
                            <label for="youtubeLink">Youtube Link</label>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <input type="text" id="youtubeLink" name="youtubeLink">
                        </div>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col col-md-12">
                        <div class="row d-flex justify-content-center">
                            <label for="uploader">Uploader</label>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <input type="text" id="uploader" name="uploader">
                        </div>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <input type="submit" class="btn btn-primary" value="Create Tube">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center mt-5">
                        <a href="/">Back to Home.</a>
                    </div>
                </div>

            </form>
        </div>
    </main>
    <footer>
        <c:import url="templates/footer.jsp"/>
    </footer>
</div>
</body>
</html>
