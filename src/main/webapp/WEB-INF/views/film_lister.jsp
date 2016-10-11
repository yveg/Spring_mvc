<%-- 
    Document   : film_lister
    Created on : 10 oct. 2016, 11:01:34
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- <link rel="stylesheet" type="text/css" href="/springmvc/csuper.css"/>-->
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
        <title>JSP listage film</title>
    </head>
    <body>
        <h1>Films dispo dans la database!</h1>
        <p><a href="<spring:url value="/ajouter_film/"></spring:url>">Ajouter un film ?</a></p>
            <c:forEach  var="type" items="${nomdufilm}">
                <p>mon film est: ${type.titre} <br>
                    synospsis: ${type.synopsis}<br>
                    sortie en ${type.anneeProd}<br>
                <a href="modifier_film/${type.id}">Editer ceci </a>&nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="supprimer_film/${type.id}">supprimer ?</a>      
                        </c:forEach></p>
                    <p><a href="/springmvc"> vers Homepage</a></p>
                    <p><a href="/springmvc/lister_genre"> vers lister_genre</a></p>

                </body>
            </html>
