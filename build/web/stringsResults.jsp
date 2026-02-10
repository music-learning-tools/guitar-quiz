<%-- 
    Document   : stringsResults
    Created on : 10.02.2026, 13:05:51
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learn Guitar</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles.css">
        <link rel="icon" type="image/webp" href="assets/logo/logo1.ico">
    </head>
    <body>
        <%
            String[] strings = (String[]) session.getAttribute("strings");
            int zahl = (int) session.getAttribute("zahl");

            String stringsInput = request.getParameter("strings");
            String test = strings[zahl];
            String Ergebnis = "";
            if (stringsInput.equals(test)) {
                Ergebnis = "True";
            } else {
                Ergebnis = "False";
            }
        %>
        <section>

            <h1><span style="color: #ee5253;"><%= stringsInput%></span> is <%= Ergebnis%></h1>
            <br>
            <h2> It was <span style="color: #ee5253;"><%= test%></span></h2>
            
            <a href="strings.jsp"><button>back</button></a>
        </section>
    </body>
</html>
