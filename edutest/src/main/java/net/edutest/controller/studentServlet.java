 package net.edutest.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import net.edutest.model.edutest;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class studentsServlet
 */
@WebServlet("/answer")
public class studentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public studentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		ArrayList<edutest> questionsList = new ArrayList<>();

        try {
        	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz_db?useSSL=false", "root", "root");
            String SELECT_SQL = "select * from questions;";
            PreparedStatement ps = connection.prepareStatement(SELECT_SQL);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	edutest Edutest = new edutest();
            	Edutest.setId(rs.getInt("id"));
            	Edutest.setQuestionText(rs.getString("question_text"));
            	Edutest.setOptionA(rs.getString("option_a"));
            	Edutest.setOptionB(rs.getString("option_b"));
                Edutest.setOptionC(rs.getString("option_c"));
                Edutest.setOptionD(rs.getString("option_d"));
                Edutest.setCorrectAnswer(rs.getString("correct_answer"));
                questionsList.add(Edutest);
                
            }

            rs.close(); 
            ps.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        HttpSession session = request.getSession();
        session.setAttribute("questionsList", questionsList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/student.jsp");
        dispatcher.forward(request, response);
    }
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the list of questions from the database or session if needed
    	HttpSession session = request.getSession();
    	ArrayList<edutest> questionsList = (ArrayList<edutest>) session.getAttribute("questionsList");
        int score = 0;

        if (questionsList != null) {
            for (edutest question : questionsList) {
                String studentAnswer = request.getParameter("q" + question.getId());
                // Check if the answer matches the correct answer
                if (studentAnswer != null && studentAnswer.equals(question.getCorrectAnswer())) {
                    score++;
                }
            }
        }

        // Set the score as a request attribute
        request.setAttribute("score", score);
        // Forward to a result page
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/result.jsp");
        dispatcher.forward(request, response);
	}
}



