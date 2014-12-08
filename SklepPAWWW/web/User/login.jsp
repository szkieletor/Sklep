<%-- 
    Document   : login
    Created on : 2014-12-08, 19:25:30
    Author     : Mateusz
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${not empty param.login and not empty param.password}">
            <sql:query var="login" dataSource="jdbc/Sklep">
                SELECT * FROM user WHERE login=? AND password=?

                <sql:param value="${param.login}" />
                <sql:param value="${param.password}" />
            </sql:query>


            <c:if test="${login.rowCount>0}">'

                <c:set scope="session" var="loggedIn" value="${login.rows[0].userID}" />

                <c:if test="${login.rows[0].isAdmin==true}">
                    <c:set scope="session" var="isAdmin" value="true" />
                </c:if>

                <c:if test="${login.rows[0].isAdmin==false}">
                    <c:set scope="session" var="isAdmin" value="false" />
                </c:if>
            </c:if>
        </c:if>

        <c:if test="${empty param.login}">
            <c:remove scope="session" var="isAdmin" />
            <c:remove scope="session" var="loggedIn" />
        </c:if>
        <c:redirect url="../" />
    </body>
</html>
