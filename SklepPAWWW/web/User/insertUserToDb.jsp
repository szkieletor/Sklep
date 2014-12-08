<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


    <c:if test="${not empty param.login and not empty param.password}">
        <sql:query var="login" dataSource="jdbc/Sklep">
            SELECT * FROM user WHERE login=? AND password=?

            <sql:param value="${param.login}" />
            <sql:param value="${param.password}" />
        </sql:query>


        <c:if test="${login.rowCount>0}">
            <c:set scope="session" var="loggedIn" value="${login.rows[0].userID}" />
            <c:set scope="session" var="isAdmin" value="false" />
        </c:if>
    </c:if>
    
    <c:redirect url="../" />
</body>
</html>
