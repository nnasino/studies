/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core;

/**
 *
 * @author chigozirim
 */
public class Course {

    public Course(String courseCode, int creditLoad) {
        this.courseCode = courseCode;
        this.creditLoad = creditLoad;
    }

    private String courseCode;

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public int getCreditLoad() {
        return creditLoad;
    }

    public void setCreditLoad(int creditLoad) throws Exception{
        if (creditLoad <= 20 && creditLoad >= 0) {
            this.creditLoad = creditLoad;
        }
        throw new Exception("Please enter credit load greater than 0 and less than 20");
    }

    public char getGradeLetter() {
        return gradeLetter;
    }

    public void setGradeLetter(char gradeLetter) throws Exception {
        switch (gradeLetter) {
            case 'a':
            case 'A':
                this.gradeLetter = 'A';
                this.score = 5 * creditLoad;
            case 'b':
            case 'B':
                this.gradeLetter = 'B';
                this.score = 4 * creditLoad;
            case 'c':
            case 'C':
                this.gradeLetter = 'C';
                this.score = 3 * creditLoad;
            case 'd':
            case 'D':
                this.gradeLetter = 'D';
                this.score = 2 * creditLoad;
            case 'e':
            case 'E':
                this.gradeLetter = 'E';
                this.score = 1 * creditLoad;
            case 'f':
            case 'F':
                this.gradeLetter = 'F';
                this.score = 0;
            default:
                throw new Exception("Please enter a grade letter from A to F");
        }
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
    private int creditLoad;
    private char gradeLetter;
    private int score;
}
