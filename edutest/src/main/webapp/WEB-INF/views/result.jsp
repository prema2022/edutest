<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="net.edutest.dao.*"%>
<%@ page import="java.util.List" %>

<%@ page import="net.edutest.model.edutest" %>
<html>
<head>
    <title>Test Results</title>
</head>
<body>
    <h1>Your Test Results</h1>
    <%
        Integer score = (Integer) request.getAttribute("score");
        List<edutest> questionsList = (List<edutest>) session.getAttribute("questionsList");
    %>
        <h3>Your score: <%= score %> out of <%=questionsList.size() %></h3>
        <a href="<%= request.getContextPath() %>/student">Retake Test</a>
</body>
</html>