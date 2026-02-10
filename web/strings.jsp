<%-- 
    Document   : strings
    Created on : 10.02.2026, 12:25:26
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
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
    <%
        Random rand = new Random();
        int zahl = rand.nextInt(5);
        String[] strings = {"E", "A", "D", "G", "B"};
        String test = strings[zahl];
        session.setAttribute("strings", strings);
        session.setAttribute("zahl", zahl);
    %>
    <body>
        <section>
            <img class="pixel-art" src="assets/strings/<%=test%>.png"  class="pixel-art" alt="Pixel Art" width="200px">
            <br>
            <form action="stringsResults.jsp" method="get">
                <input type="text" name="strings" autocomplete="off" required >
                <input type="submit" value="submit">
            </form>
            <br>
            <a href="index.html"><button>home</button></a>
        </section>
    </body>
</html>
