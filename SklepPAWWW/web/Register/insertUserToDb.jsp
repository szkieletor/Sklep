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
            INSERT INTO user (login, name, lastName, email, password, city, address, isAdmin, isBlocked) VALUES (?, ?, ?, ?, ?, ?, ?, false, false);
            <sql:param value="${param.login}" />
            <sql:param value="${param.name}" />
            <sql:param value="${param.lastName}" />
            <sql:param value="${param.email}" />
            <sql:param value="${param.password}" />
            <sql:param value="${param.city}" />
            <sql:param value="${param.address}" />
        </sql:update>
    </body>
</html>
