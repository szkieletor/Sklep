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
        <form name="insert" action="insertProductToDb.jsp" method="POST">

            <div id="main">

                <a name="DodawanieProduktu"></a>
                <h1>Dodaj nowy produkt</h1>

                <div id="sidebar">

                    <img  style="height:164px;width:171px;" />
                    <br />
                    <br />
                    <input type="file" name="image" style="height:21px;width:214px;" />
                </div>

                <div id="rightcolumn">

                    <span id="defaultContent_Label1">Nazwa produktu</span>

                    <br />
                    <input name="name" type="text" />
                    <br />
                    <br />

                    <span id="defaultContent_Label2">Cena</span>
                    <br />
                    <input name="price" type="text" />
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
                <span>Opis produktu</span>
                <textarea name="description" rows="50" cols="20"  style="height:357px;width:437px;">
                </textarea>
                <br />
                <br />
                <input type="submit" value="Akceptuj" />
                <br />
                <br />
            </div>
        </form>
    </body>
</html>
<jsp:include page="masterpage2.jsp" />