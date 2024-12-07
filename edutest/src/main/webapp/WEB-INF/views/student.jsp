<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List" %>
<%@ page import="net.edutest.model.edutest" %>

<html>
<head>
    <title>Student Portal</title>
    <link href="css/question.css" rel="stylesheet"/>
</head>
<body>
    <h1>Take Test</h1>

    <form action="<%= request.getContextPath() %>/answer" method="post">
     <input type="text" name="studentName" placeholder="Enter your name" required><br><br>
    

        <%
            // Retrieve the questionsList from request attributes
            List<edutest> questionsList = (List<edutest>) session.getAttribute("questionsList");
            if (questionsList != null && !questionsList.isEmpty()) {
                for (edutest edutest : questionsList) {
        %>
            <div>
                <h3><%= edutest.getQuestionText() %></h3>
                <input type="radio" name="q<%= edutest.getId() %>" value="A"> <%= edutest.getOptionA() %> <br>
                <input type="radio" name="q<%= edutest.getId() %>" value="B"> <%= edutest.getOptionB() %> <br>
                <input type="radio" name="q<%= edutest.getId() %>" value="C"> <%= edutest.getOptionC() %> <br>
                <input type="radio" name="q<%= edutest.getId() %>" value="D"> <%= edutest.getOptionD() %> <br>
            </div>
        <%
                }
            } else {
        %>
            <p>No questions available.</p>
        <%
            }
        %>
        <button type="submit">Submit Answer</button>
    </form>
</body>
</html>