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
        <input name="ctl00$defaultContent$TextBox1" type="text" id="defaultContent_TextBox1" />
    </p>
    <p>
        Login:<br />
        <input name="ctl00$defaultContent$TextBox2" type="text" id="defaultContent_TextBox2" />
    </p>
    <p>
        Hasło:<br />
        <input name="ctl00$defaultContent$TextBox3" type="text" id="defaultContent_TextBox3" />
    </p>
    <p>
        Powtórz hasło:</p>
    <p>
        <input name="ctl00$defaultContent$TextBox4" type="text" id="defaultContent_TextBox4" />
    </p>
    <p>
        Stare hasło:<br />
        <input name="ctl00$defaultContent$TextBox5" type="text" id="defaultContent_TextBox5" />
    </p>
    <h1>Moje dane</h1>
    <p>
        Imię:<br />
        <input name="ctl00$defaultContent$TextBox6" type="text" id="defaultContent_TextBox6" />
    </p>
    <p>
        Nazwisko:<br />
        <input name="ctl00$defaultContent$TextBox7" type="text" id="defaultContent_TextBox7" />
    </p>
    <p>
        Adres:<br />
        <input name="ctl00$defaultContent$TextBox8" type="text" id="defaultContent_TextBox8" />
    </p>
    <p>
        Kod pocztowy<br />
        <input name="ctl00$defaultContent$TextBox9" type="text" id="defaultContent_TextBox9" />
    </p>
    <p>
        Tel kom. :<br />
        <input name="ctl00$defaultContent$TextBox10" type="text" id="defaultContent_TextBox10" />
    </p>

    </div>

    </body>
</html>
<jsp:include page="masterpage2.jsp" />