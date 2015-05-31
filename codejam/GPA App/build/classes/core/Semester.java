/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core;

import java.util.logging.Logger;

/**
 *
 * @author chigozirim
 */
public class Semester {

    private int TNU;
    private int TGP;
    private int noOfCourses;
    private double GPA;
    private Course[] courses;

    public int getTNU() {
        return TNU;
    }

    public void setTNU(int TNU) {
        this.TNU = TNU;
    }

    public int getTGP() {
        return TGP;
    }

    public void setTGP(int TGP) {
        this.TGP = TGP;
    }

    public int getNoOfCourses() {
        return noOfCourses;
    }

    public void setNoOfCourses(int noOfCourses) {
        this.noOfCourses = noOfCourses;
    }

    public double getGPA() {
        return TGP/TNU * 1.0;
    }

    public Course[] getCourses() {
        return courses;
    }

    public void setCourses(Course[] courses) {
        this.courses = courses;
    }

    public Semester(int noOfCourses) {
        this.noOfCourses = noOfCourses;
        courses = new Course[noOfCourses];
    }

}
