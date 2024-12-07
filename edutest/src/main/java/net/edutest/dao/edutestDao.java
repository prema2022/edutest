package net.edutest.dao;


import net.edutest.model.edutest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;

public class edutestDao {
	public static int registerstaff(edutest Edutest) throws ClassNotFoundException {
	      String INSERT_USERS_SQL = "INSERT INTO questions ( question_text, option_a, option_b, option_c, option_d, correct_answer) VALUES (?, ?, ?, ?, ?, ?)";
	      int result = 0;
	      
	      Class.forName("com.mysql.cj.jdbc.Driver");


        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz_db?useSSL=false", "root", "root");
            PreparedStatement ps = connection.prepareStatement(INSERT_USERS_SQL);
            
            ps.setString(1, Edutest.getQuestionText());
            ps.setString(2, Edutest.getOptionA());
            ps.setString(3, Edutest.getOptionB());
            ps.setString(4, Edutest.getOptionC());
            ps.setString(5, Edutest.getOptionD());
            ps.setString(6, Edutest.getCorrectAnswer());
            System.out.println(ps);
             result= ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
			return result;
    }
}
