  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<html>
<head>
    <title>Staff Portal</title>
    <link href="css/question.css" rel="stylesheet"/>
</head>
<body>
<a href="<%= request.getContextPath() %>/login" class="button"></a>
    <h1>Upload Questions</h1>
<div>
    <form action="<%= request.getContextPath() %>/upload" method="post">
        <label>Question:</label><br>
        <input type="text" name="questionText"><br><br>

        <label>Option A:</label><br>
        <input type="text" name="optionA"><br><br>

        <label>Option B:</label><br>
        <input type="text" name="optionB"><br><br>

        <label>Option C:</label><br>
        <input type="text" name="optionC"><br><br>

        <label>Option D:</label><br>
        <input type="text" name="optionD"><br><br>

        <label>Correct Answer (A/B/C/D):</label><br>
        <input type="text" name="correctAnswer"><br><br>

        <button type="submit">Submit Question</button>
        
        
        <button type="button" onclick="window.location.href = '<%= request.getContextPath() %>/index.jsp';">Go to Home Page</button>
    </form>
</div>
    <%
        // Check if the status parameter is present and equals "success"
        String status = request.getParameter("status");
        if ("success".equals(status)) {
    %>
        <p>Question uploaded successfully!</p>
        
    <%
        }
    %>
</body>
</html>