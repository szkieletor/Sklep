<%-- 
    Document   : accountSettings
    Created on : 2014-12-08, 20:27:34
    Author     : Mateusz
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<sql:query var="dbklient" dataSource="jdbc/Sklep">
    SELECT * FROM user
    WHERE userID=?  
    <sql:param value="${sessionScope.loggedIn}"/>
</sql:query>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="dane">
            Aktualizuj dane:
            <form action="updateUserData.jsp" method="POST">
                <div class="wierszdanych">
                    <input size="5" type="text" name="name" value="${dbklient.rows[0].name}" />
                </div>
                <div class="wierszdanych">
                    <input size="7" type="text" name="lastName" value="${dbklient.rows[0].lastName}" />
                </div>
                <div class="wierszdanych">
                    <input size="7" type="text" name="email" value="${dbklient.rows[0].email}" />
                </div>
                <div class="wierszdanych">
                    <input type="text" name="address" value="${dbklient.rows[0].address}" size="10" height="4"/>
                </div>
                <input type="hidden" name="user" value="${dbklient.rows[0].id}"/>

                <div class="wierszdanych">
                    <input type="submit" value="Zatwierdź" />
                </div>
            </form>
        </div>
        <div class="dane2">
            Zmień hasło:
            <form action="updateUserData.jsp">

                <input type="hidden" name="user" value="${dbklient.rows[0].userID}"/>

                <div class="wierszdanych">
                    <input size="5" type="password" name="oldpass"  /> 
                </div>

                <form action="updateUserData.jsp">
                    <div class="wierszdanych">
                        <input size="5" type="password" name="newpass1"  />
                    </div>
                    <div class="wierszdanych">
                        <input size="5" type="password" name="newpass2"  />
                    </div>
                    <input type="submit" value="OK" />

                </form>
        </div>

    </div>
</body>
</html>
