<%-- 
    Document   : addproduct
    Created on : 2014-12-01, 21:16:06
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
          
    <a name="DodawanieProduktu"></a>
                <h1>Dodaj nowy produkt</h1>

        <div id="sidebar">
            
            <img id="defaultContent_Image1" style="height:164px;width:171px;" />
             <br />
            <br />
             <input type="file" name="ctl00$defaultContent$FileUpload1" id="defaultContent_FileUpload1" style="height:21px;width:214px;" />
        </div>

        <div id="rightcolumn">

            <span id="defaultContent_Label1">Nazwa produktu</span>

            <br />
            <input name="ctl00$defaultContent$TextBox1" type="text" id="defaultContent_TextBox1" />
            <br />
            <br />

            <span id="defaultContent_Label2">Cena</span>
            <br />
            <input name="ctl00$defaultContent$TextBox2" type="text" id="defaultContent_TextBox2" />
            <br />

        </div>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <span id="defaultContent_Label3">Opis produktu</span>
    <textarea name="ctl00$defaultContent$TextBox3" rows="50" cols="20" id="defaultContent_TextBox3" style="height:357px;width:437px;">
</textarea>
    <br />
    <br />
    <input type="submit" name="ctl00$defaultContent$Button1" value="Akceptuj" id="defaultContent_Button1" />
    <br />
    <br />


       
          
    </div>

    </body>
</html>
<jsp:include page="masterpage2.jsp" />