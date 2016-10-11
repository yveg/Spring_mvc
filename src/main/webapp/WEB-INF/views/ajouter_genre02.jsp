<%-- 
    Document   : ajouter_genre
    Created on : 10 oct. 2016, 16:37:59
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

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page d'ajout de genre</title>
    </head>
    <body>
        <h1>ajouter unn genre</h1>
        <c:set var="route2">
            <spring:url value="/ajouter_genre/" />
        </c:set>
            <form:form action="${route2}" modelAttribute="genradd">
                <label>Nom du genre</label>>
                <form:input path="nom"/>
                <input type="submit" value="ajouter"/>

                <br>
            </form:form>
        
    </body>
</html>
