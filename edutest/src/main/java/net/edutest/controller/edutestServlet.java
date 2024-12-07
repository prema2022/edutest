package net.edutest.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import net.edutest.dao.edutestDao;
import net.edutest.model.edutest;

import java.io.IOException;

/**
 * Servlet implementation class edutestServlet
 */
@WebServlet("/upload")
public class edutestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private edutestDao EdutestDao = new	edutestDao();

	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public edutestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/question.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String questionText = request.getParameter("questionText");
        String optionA = request.getParameter("optionA");
        String optionB = request.getParameter("optionB");
        String optionC = request.getParameter("optionC");
        String optionD = request.getParameter("optionD");
        String correctAnswer = request.getParameter("correctAnswer");
        
        edutest Edutest = new edutest();
        Edutest.setQuestionText(questionText);
        Edutest.setOptionA(optionA);
        Edutest.setOptionB(optionB);
        Edutest.setOptionC(optionC);
        Edutest.setOptionD(optionD);
        Edutest.setCorrectAnswer(correctAnswer);
        
        try {
        	edutestDao.registerstaff(Edutest);
        }catch(ClassNotFoundException e) {
        	e.printStackTrace();
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/success.jsp");
        dispatcher.forward(request, response);
	}
	
	public edutestDao getEdutestDao() {
		return EdutestDao;
	}
	
	public void setEdutestDao(edutestDao edutestDao) {
		edutestDao = EdutestDao;
	}
		
	}


