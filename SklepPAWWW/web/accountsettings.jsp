<%-- 
    Document   : addproduct
    Created on : 2014-12-01, 21:00:05
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
        <div id="main">
          
    <a name="Moje konto"></a>
    <h1>Ustawienia konta</h1>
    <p>
        Email:<br />
        <input name="email" type="text"  />
    </p>
    <p>
        Login:<br />
        <input name="login" type="text" />
    </p>
    <p>
        Hasło:<br />
        <input name="password" type="text"  />
    </p>
    <p>
        Powtórz hasło:</p>
    <p>
        <input name="confirmPassword" type="text"  />
    </p>
    <p>
        Stare hasło:<br />
        <input name="oldPassword" type="text"  />
    </p>
    <h1>Moje dane</h1>
    <p>
        Imię:<br />
        <input name="name" type="text" />
    </p>
    <p>
        Nazwisko:<br />
        <input name="lastName" type="text"  />
    </p>
    <p>
        Adres:<br />
        <input name="address" type="text"  />
    </p>
    <p>
        Kod pocztowy<br />
        <input name="postCode" type="text"  />
    </p>
    <p>
        Tel kom. :<br />
        <input name="number" type="text"  />
    </p>

    </div>

    </body>
</html>
<jsp:include page="masterpage2.jsp" />