<%-- 
    Document   : home_index
    Created on : 10 oct. 2016, 11:06:19
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                  <style type="text/css">
  body {
    color: purple;
    background-color: #1C1C1C;
  font-family: Lucida Handwriting;
  }
  h1 {
      align-content: center;
      text-align: center;
      text-decoration: none;
      font-family: Comic sans ms;
  }
  a,a:visited,a:link {
      color: #FBFBEF;
      text-decoration: none;
  }
  a:hover {
      color: yellow;
      text-decoration: underline;
  }
  
   </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Homepage</title>
    </head>
    <body>
        <h1>Home page du site</h1>
        <p align="left">${titre}</p>
        <p><a href="/springmvc/lister_genre"> vers lister_genre</a></p>
    </body>
</html>
