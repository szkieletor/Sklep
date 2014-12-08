<%-- 
    Document   : adminPanel
    Created on : 2014-12-08, 21:13:25
    Author     : Mateusz
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<sql:query var="dbquery" dataSource="jdbc/BazaSklepu">
    SELECT * FROM category
</sql:query>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Dodaj nowy przedmiot:</h1>

        <form action="newProduct" method="POST">
            <div class="blok">
                <div class="dodawanie">
                    Kategoria: <select name="category">
                        <c:forEach var="kat" items="${dbquery.rows}">
                            <option value="${kat.id}" >${kat.nazwa}</option>
                        </c:forEach>
                    </select>
                </div>


                <div class="dodawanie">
                    Nazwa: <input type="text" name="name" value="" size="35" />
                </div>

                <div class="dodawanie">
                    Opis:
                    <textarea name="description" rows="6" cols="29">
                    </textarea>
                </div>

                <div class="dodawanie">
                    Cena: <input type="text" name="price" value="" size="37" />
                </div>

                <div class="dodawanie">
                    % zniżki: <input type="text" name="discount" value="" size="30" />
                </div>

                <div class="dodawanie">
                    Dostępne sztuki: <input type="text" name="quantity" value="" size="19" />
                </div>

                <div class="dodawanie">
                    Nazwa zdjęcia: <input type="text" name="image" value="" size="22" />
                </div>

                <div class="dodawanie">
                    <input type="submit" value="Akceptuj" />
                </div>
            </div>

        </form>
    </body>
</html>
