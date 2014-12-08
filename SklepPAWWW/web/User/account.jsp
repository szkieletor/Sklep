<%-- 
    Document   : account
    Created on : 2014-12-08, 19:24:04
    Author     : Mateusz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<sql:query var="dbklient" dataSource="jdbc/BazaSklepu">
    SELECT * FROM klient
    WHERE id=?  
    <sql:param value="${pageContext.request.queryString}"/>;
</sql:query>


<div id="right">
    <c:if test="${sessionScope.zalogowany!=pageContext.request.queryString}">
        Brak dostępu!
    </c:if>

    <c:if test="${sessionScope.zalogowany==pageContext.request.queryString}">
        <h3> Witaj ${dbklient.rows[0].imie}! </h3>

        <div class="lista">
            Lista zamówionych przedmiotów:

            <div class="wkoszyku">
                <div class="elementnazwa"> <b>Nazwa przedmiotu</b> </div>
                <div class="element"> <b>Cena</b> </div>
                <div class="element"> <b>Ilość</b> </div>
            </div>

            <c:forEach var="przedmiot" items="${dbprzedmioty.rows}">
                <div class="wkoszyku">
                    <div class="elementnazwa"> ${przedmiot.nazwa}</div>
                    <div class="element"> ${przedmiot.cena} zł</div>
                    <div class="element"> ${przedmiot.ilosc} </div>
                    <div> 

                        <form action="deleteProduct">
                            <input type="hidden" name="product" value="${przedmiot.id}"/>
                            <input type="hidden" name="zp" value="${przedmiot.idd}"/>
                            <input type="hidden" name="ilosc" value="${przedmiot.ilosc}"/>
                            <input class="elementusun" type="submit" value="Usuń" />
                        </form>
                    </div></div>
                </c:forEach>
            

            <div class="wkoszyku">
                <div class="elementnazwa"> <b>Razem:</b> </div>

                <div class="element"> <b>${dbprzedmioty.rows[0].wartosc} zł</b> </div>
            </div>
            
            <form action="podsumowanie" method="GET">
                <input type="hidden" name="klient" value="${dbklient.rows[0].id}"/>
                
                <input type="submit" value="Zamawiam" />
            </form>
            
        </div>

        <div class="dane">
            Aktualizuj dane:
            <form action="updateUserData">
                <div class="wierszdanych">
                    <input size="5" type="text" name="imie" value="${dbklient.rows[0].imie}" /> <- Imię
                </div>
                <div class="wierszdanych">
                    <input size="7" type="text" name="nazwisko" value="${dbklient.rows[0].nazwisko}" /> <- Nazwisko
                </div>
                <div class="wierszdanych">
                    <input size="7" type="text" name="telefon" value="${dbklient.rows[0].telefon}" /> <- Telefon
                </div>
                <div class="wierszdanych">
                    <input type="text" name="adres" value="${dbklient.rows[0].adres}" size="10" height="4"/> <- Adres
                </div>

                <input type="hidden" name="user" value="${dbklient.rows[0].id}"/>

                <div class="wierszdanych">
                    <input type="submit" value="Zatwierdź" />
                </div>
            </form>
        </div>
        <div class="dane2">
            Zmień hasło:
            <form action="updateUserData">

                <input type="hidden" name="user" value="${dbklient.rows[0].id}"/>

                <div class="wierszdanych">
                    <input size="5" type="password" name="oldpass"  /> <- stare hasło
                </div>

                <form action="updateUserData">
                    <div class="wierszdanych">
                        <input size="5" type="password" name="newpass1"  /> <- nowe hasło
                    </div>

                    <form action="updateUserData">
                        <div class="wierszdanych">
                            <input size="5" type="password" name="newpass2"  /> <- powtórz nowe hasło
                        </div>
                        <input type="submit" value="OK" />

                    </form>
                    </div>

                </c:if>
                </div>
