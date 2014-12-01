<%-- 
    Document   : register
    Created on : 2014-12-01, 19:48:06
    Author     : QuAntic

--%>
<jsp:include page="masterpage.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="main" class="two-col">
                    <FORM ACTION = "09-new.php" METHOD = "POST">
                    <br>
                     Rejestracja:
                     <br>Login:<br>
                    <INPUT TYPE ="text" NAME = "Login">
                    <br>Hasło:<br>
                    <INPUT TYPE ="text" NAME = "Password">
                    <br>Powtórz hasło:<br>
                    <INPUT TYPE ="text" NAME = "Password2">
                    <br>Imie:<br>
                    <INPUT TYPE ="text" NAME = "Name">
                    <br>Nazwisko:<br>
                    <INPUT TYPE ="text" NAME = "LastName">
                    <br>Email:<br>
                    <INPUT TYPE ="text" NAME = "Email">
                    <br>
                    <INPUT TYPE="SUBMIT" VALUE="Dodaj">
            </FORM>
            </div>
    </body>
</html>
<jsp:include page="masterpage2.jsp" />