package net.edutest.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import net.edutest.dao.QuizresultDao;
import net.edutest.model.edutest;

import java.io.IOException;
import java.util.List;

@WebServlet("/submitQuiz")
public class SubmitquizServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
   
    private QuizresultDao quizResultDao;

    public void init() {
        quizResultDao = new QuizresultDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve student name
        String studentName = request.getParameter("studentName");
       
        // Retrieve the questions list from the session
        HttpSession session = request.getSession(false);
        List<edutest> questionsList = (List<edutest>) session.getAttribute("questionsList");
       
        if (studentName == null || questionsList == null || questionsList.isEmpty()) {
            request.setAttribute("error", "Something went wrong. Please retake the test.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/student.jsp");
            dispatcher.forward(request, response);
            return;
        }

        // Calculate score
        int score = 0;
        for (edutest question : questionsList) {
            String selectedAnswer = request.getParameter("q" + question.getId());
            if (selectedAnswer != null && selectedAnswer.equals(question.getCorrectAnswer())) {
                score++;
            }
        }

        // Store result in database
        boolean resultSaved = QuizresultDao.saveResult(studentName, score);

        // Check if result was saved successfully and then display result page
        if (resultSaved) {
            request.setAttribute("score", score);
            RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/result.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("error", "Failed to save the result. Please try again.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/student.jsp");
            dispatcher.forward(request, response);
        }
    }
}