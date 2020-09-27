<%@ page import="java.io.File" %>
<%@ page import="java.nio.file.attribute.BasicFileAttributes" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.nio.file.attribute.FileTime" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 26.09.2020
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>All Info</title>
</head>
<body>
<%
    File file = new File("C:\\Users\\82530\\Desktop\\UploadFiles");
%>
<div class="header">
    <h1 style="font-size:2vw;" class="Name">Kazakh Cloud</h1>
</div>
<div class="all">
    <h1 style="font-size:2vw;">Path Name: <%=file.getPath()%></h1>
</div>
<div class="all">
    <button >
        <a href="">Back</a>
    </button>
    <button >
        <a href="">Create New File</a>
    </button>
    <button >
        <a href="">Create New Directory</a>
    </button>
</div>
<div class="all">
    <%
        File[] files = file.listFiles();
        String str ="";
        for(File file1: files){
            str = file1.getPath();
            str = str.replace("\\","%2F");
            out.println("<a href=\""+request.getContextPath()+"/Servlet?fileRoot="+str+"\">");
            out.println("<div class=\"files\">");
            if(file1.isFile()){
                out.println("<img src=\"https://icon-library.com/images/file-icon/file-icon-6.jpg\" class=\"d-block w-50\" alt=\"\">");
            }
            else{
                out.println("<img src=\"https://cdn.onlinewebfonts.com/svg/img_720.png\" class=\"d-block w-50\" alt=\"\">");
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
            out.println("<p style=\"font-size:1.2vw;\"> Name: "+file1.getName()+"</p>");
            double size = (double)file1.length()/(1024);
            out.println("<p style=\"font-size:1.2vw;\"> Size: "+Math.round(size)+"kb</p>");
            out.println("<p style=\"font-size:1.2vw;\"> Date"+simpleDateFormat.format(file1.lastModified())+"</p>");
            out.println("</div>");
            out.println("</a>");

        }
    %>

</div>
<form method="post" action="UploadServlet"
      enctype="multipart/form-data">
    Select file to upload: <input type="file" name="file" size="60" /><br />
    <br /> <input type="submit" value="Upload" />
</form>
<%%>
</body>
</html>