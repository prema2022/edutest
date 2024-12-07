package net.edutest.model;

public class Submitquiz {
	
    private String studentName;
    private int score;

    // Constructor
    public Submitquiz(String studentName, int score) {
        this.studentName = studentName;
        this.score = score;
    }

    // Getters and setters
    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}