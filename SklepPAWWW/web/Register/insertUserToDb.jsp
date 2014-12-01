<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : insertUserToDb
    Created on : 2014-12-01, 19:27:35
    Author     : Mateusz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:update var="result" dataSource="jdbc/Sklep">
            INSERT INTO user (login, name, lastName, email, password, city, address) VALUES (a, b, ?, ?, ?, ?, ?, false, false);

        </sql:update>
    </body>
</html>
