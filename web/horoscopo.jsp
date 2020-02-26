<%-- 
    Document   : horoscopo
    Created on : 26-feb-2020, 17:13:22
    Author     : Ángel Plaza Cámara
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Horoscopo</h1>
        <form action="horoscopo">
            <label for="nombre">Nombre:</label><input type="text" id="nombre" name="nombre">
            <% ArrayList<String> meses = (ArrayList<String>)
            request.getAttribute("meses");
            %>
            
            
            <label for="mes">Mes:</label>
            <select type="text" id="mes">
                <% for(int i = 0; i<meses.size(); i++){ %>
                <option value=""><%=meses.get(i) %></option>
                
                <%}%>
            </select>
            <% ArrayList<String> dias = (ArrayList<String>)
            request.getAttribute("dias");
            %>
            <label for="dia">Dia:</label><select type="text" id="dia">
                <% for(int i = 0; i<dias.size(); i++){ %>
                <option value=""><%=dias.get(i) %></option>
                
                <%}%>
            </select>
            <input type="text" value="enviar">
        </form>
            <% String signo = (String) request.getAttribute("signo");
            if (signo!=null){%>
            <h1>Eres del signo: <%=signo%></h1>
            <% } %>
    </body>
</html>
