<%--
  Created by IntelliJ IDEA.
  User: 82530
  Date: 27.09.2020
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/DownlandServlet">скавыавы </a>
<form method="post" action="UploadServlet"
      enctype="multipart/form-data">
    Select file to upload: <input type="file" name="file" size="60" /><br />
    <br /> <input type="submit" value="Upload" />
</form>
</body>
</html>
