<%-- 
    Document   : modifier_genre
    Created on : 10 oct. 2016, 14:43:37
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
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
            label            {
                display: block;
                width: 150px;
                float: left;
                background-color: #1C1C1C;
                color: purple;
            }



        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edition du Film</h1>
        <p>
            <c:set var="chemin">
                <spring:url value="/modifier_film/" />
            </c:set>
            <form:form action="${chemin}" modelAttribute="filmo">
                <form:hidden path="id"/>
                <label>Nom du Film</label>
                <form:input path="titre"/><br>
                <label>Synopsis</label>
                <form:textarea path="synopsis"/><br>
                <label>Ann&eacute;e de sortie du Film</label>
                <form:input path="anneeProd"/><br>
                <input type="submit" value="modifier"/>

                <br>
            </form:form>
        <p><a href="/springmvc"> vers Homepage</a></p>
        <p><a href="/springmvc/lister_film"> vers lister_film</a></p>
        <p><a href="/springmvc/lister_genre"> vers lister_genre</a></p>
    </p>

</body>
</html>
