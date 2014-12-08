<%-- 
    Document   : updateUserData
    Created on : 2014-12-08, 20:32:14
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
    <c:if test="${not empty param.name and not empty param.lastName and not empty param.email and not empty param.address}">
        <c:if test="${empty param.oldpass and empty param.newpass1 and empty param.newpass2}">
            <sql:update var="update" dataSource="jdbc/Sklep">
                UPDATE user
                SET name = ?, lastName = ?, email = ?, address = ?
                WHERE userID = ?

                <sql:param value="${param.name}"/>
                <sql:param value="${param.lastName}"/>
                <sql:param value="${param.email}"/>
                <sql:param value="${param.address}"/>
                <sql:param value="${sessionScope.loggedIn}"/>
            </sql:update>
        </c:if>
    </c:if>

    <c:if test="${not empty param.oldpass and not empty param.newpass1 and not empty param.newpass2}">

        <sql:query var="oldpass" dataSource="jdbc/Sklep">
            SELECT password FROM user
            WHERE userID = ?

            <sql:param value="${sessionScope.loggedIn}"/>
        </sql:query>

        <c:if test="${param.oldpass == oldpass.rows[0].password}">
            <c:if test="${param.newpass1==param.newpass2}">
                <sql:update var="uppassword" dataSource="jdbc/Sklep">

                    UPDATE user
                    SET password = ?
                    WHERE userID = ?

                    <sql:param value="${param.newpass1}"/>
                    <sql:param value="${sessionScope.loggedIn}"/>
                </sql:update>
            </c:if>
        </c:if>
    </c:if>



    <c:redirect url="accountSettings.jsp" /> 


</body>
</html>
