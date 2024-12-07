package net.edutest.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class QuizresultDao {
    private static String jdbcURL = "jdbc:mysql://localhost:3306/quiz_db?useSSL=false";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "root";
   
    // Method to save quiz result to database
    public static boolean saveResult(String studentName, int score) {
        boolean rowInserted = false;
        String sql = "INSERT INTO results (student_name, score) VALUES (?, ?)";

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, studentName);
            statement.setInt(2, score);
           
            rowInserted = statement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowInserted;
    }
}