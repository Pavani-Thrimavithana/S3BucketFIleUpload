<%--
  Created by IntelliJ IDEA.
  User: Pavi
  Date: 14-Jun-18
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File/Photo Upload</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container h-100">
    <div class="h-100">
        <div class="row h-100 justify-content-center align-items-center">
            <div class="col-sm-5">
                <h2>File/Photo Uploading Application</h2>
                <form method="POST"  enctype="multipart/form-data" id="UploadForm" action="/upload">
                    <div class="form-group">
                        <label class="control-label" for="upload">Upload Your File/Photo:</label>
                        <input type="file" class="multipart/form-control" id="upload" placeholder="Upload File/Photo"  name="file">
                    </div>
                    <button type="submit" class="btn btn-default" id="btnSubmit" >Upload</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
