<%-- 
    Document   : chords
    Created on : 11.02.2026, 15:02:45
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
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
    <%
        Random rand = new Random();
        int chordzahl = rand.nextInt(8);
        String[] chords = {"Em", "E", "Am", "C", "A", "G", "D", "Dm"};
        String test = chords[chordzahl];
        session.setAttribute("chords", chords);
        session.setAttribute("chordzahl", chordzahl);
    %>
    <body>
        <section>
            <img class="pixel-art" src="assets/chords/<%=test%>.png"  class="pixel-art" alt="Pixel Art" width="200px">
            <br>
            <form action="chordsResults.jsp" method="get">
                <input type="text" name="chords" autocomplete="off" required >
                <input type="submit" value="submit">
            </form>
            <br>
            <a href="index.html"><button>home</button></a>
        </section>
    </body>
</html>
