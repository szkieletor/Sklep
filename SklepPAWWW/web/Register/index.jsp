<%-- 
    Document   : register
    Created on : 2014-12-01, 19:19:57
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
        <form action="insertUserToDb.jsp" method="POST">
            <table border="1">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Login:</td>
                    <td><input type="text" name="login"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="text" name="lastName"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="text" name="email"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="text" name="password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="text" name="city"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Save"></td>
                </tr>
            </tbody>
        </table>

        </form>

    </body>
</html>
