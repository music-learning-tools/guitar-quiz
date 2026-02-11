<%-- 
    Document   : chordsResults
    Created on : 11.02.2026, 15:18:00
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learn Guitar chords</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles.css">
        <link rel="icon" type="image/webp" href="assets/logo/logo1.ico">
    </head>
    <body>
        <%
            String[] chords = (String[]) session.getAttribute("chords");
            int chordzahl = (int) session.getAttribute("chordzahl");

            String chordsInput = request.getParameter("chords");
            String test = chords[chordzahl];
            String Ergebnis = "";
            if (chordsInput.equals(test)) {
                Ergebnis = "True";
            } else {
                Ergebnis = "False";
            }
        %>
        <section>

            <h1><span style="color: #ee5253;"><%= chordsInput%></span> is <%= Ergebnis%></h1>
            <br>
            <h2> It was <span style="color: #ee5253;"><%= test%></span></h2>

            <a href="chords.jsp"><button>back</button></a>
        </section>
    </body>
</html>
