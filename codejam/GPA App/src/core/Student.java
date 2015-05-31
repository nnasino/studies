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
public class Student {
    private String nameOfStudent;
    private double CGPA;
    private int TTNU;
    private int TTGP;
    private int noOfYears;

    public String getNameOfStudent() {
        return nameOfStudent;
    }

    public void setNameOfStudent(String nameOfStudent) {
        this.nameOfStudent = nameOfStudent;
    }

    public double getCGPA() {
        return CGPA;
    }

    public void setCGPA(double CGPA) {
        this.CGPA = CGPA;
    }

    public int getTTNU() {
        return TTNU;
    }

    public void setTTNU(int TTNU) {
        this.TTNU = TTNU;
    }

    public int getTTGP() {
        return TTGP;
    }

    public void setTTGP(int TTGP) {
        this.TTGP = TTGP;
    }

    public int getNoOfYears() {
        return noOfYears;
    }

    public void setNoOfYears(int noOfYears) {
        this.noOfYears = noOfYears;
    }

    public Semester[] getSemesters() {
        return semesters;
    }

    public void setSemesters(Semester[] semesters) {
        this.semesters = semesters;
    }

    public Student(String nameOfStudent, int noOfYears) {
        this.nameOfStudent = nameOfStudent;
        this.noOfYears = noOfYears;
        //initialize the semester list
        semesters = new Semester[noOfYears * 2];
    }
    private Semester[] semesters;
}
