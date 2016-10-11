<%-- 
    Document   : genre_lister
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
        <title>JSP listage Genre</title>
    </head>
    <body>
        <h1>Liste de tous les Genres !</h1>
        <p><a href="<spring:url value="/ajouter_genre/"></spring:url>">Ajouter un genre ?</a></p>
            <c:forEach  var="type" items="${nomdugenre}">
                <p>mon genre est: ${type.nom} 
                    <a href="supprimer_genre/${type.id}">supprimer ?</a>&nbsp;&nbsp;&nbsp;
                    <a href="modifier_genre/${type.id}">Editer ceci </a>
                
                        </p>
                        </c:forEach></p>
                    <p><a href="/springmvc"> vers Homepage</a></p>
                    <p><a href="/springmvc/lister_film"> vers lister_film</a></p>

                </body>
            </html>
