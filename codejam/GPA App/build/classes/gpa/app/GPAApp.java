/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gpa.app;

import core.Semester;
import core.Student;
import java.util.Scanner;

/**
 * @author chigozirim
 *
 *
 */
public class GPAApp {

    static int gradeValue(Scanner scan, String courseTitle) {
        char letter = 'f';
        while (true) {
            System.out.printf("Please enter the grade letter of %s: ", courseTitle);
            letter = scan.nextLine().charAt(0); //Select the first character only
        }
    }
    
    static int getCreditLoad(Scanner scan, String courseTitle) { //The function takes the scanner object and the course title as it's parameters
        int result = 0; //The result to be returned
        JMe
        while (true) { //Keep asking for the credit load
            try { //Put the code in a try block to catch any exception that is thrown
                System.out.printf("Please enter the credit load of %s: ", courseTitle); //Formatted print: this will be explained later on
                result = Integer.parseInt(scan.nextLine());
                //If the program reaches here then that means there was no error
                //Let us now make sure that the user doesn't give us a ridiculous value. Credit load shouldn't be more than 25 at most
                if (result > 25) {
                    //the value is too large
                    throw new NumberFormatException("Credit load is too large"); //this throws our own exception, which will be handled also 
                } else if (result < 0) {
                    //credit load cannot be negative
                    throw new NumberFormatException("Credit Load cannot be negative");
                }
            } catch (NumberFormatException exc) {
                System.out.println("Error: " + exc.getMessage()); //Exceptions usually have information about themselves, including the errormessage
                //exc.printStackTrace(); //This method is useful for debugging, it gives you a trace of all where and how the exceptions were generated
                continue; //continue to the beginning of the loop
            }
            //if we get here then the program is fine and the credit load was read successfully so we leave the loop
            break;
        }
        return result;

    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String tempString;
        int tempInteger;
        Student student;
        Scanner scan = new Scanner(System.in);
        System.out.print("Welcome, enter your name: ");
        tempString = scan.nextLine();
        System.out.print("Please enter the number of years: ");
        tempInteger = Integer.parseInt(scan.nextLine());
        student = new Student(tempString, tempInteger);

        for (int semester = 1; semester <= student.getSemesters().length; semester++) {
            System.out.printf("Please enter the number of courses for Semester %d: ", semester);
            student.getSemesters()[semester - 1] = new Semester(Integer.parseInt(scan.nextLine()));
            //for all courses in the semester
            for (int course = 0; course < student.getSemesters()[semester - 1].getNoOfCourses(); course++) {
                //get the title/code of the course
                System.out.print("Please enter the title/code of the course: ");
                tempString = scan.nextLine();
                //get the credit load/unit of the course
                tempInteger = getCreditLoad(scan, title);
                student.getSemesters()[semester - 1].getCourses()[course] = new Course(tempString, tempInteger);
                 //Add the grade point of this course to the total grade point of this semester
            TGP += creditLoad * gradeValue(scan, title);
            //Add the credit load of this course to the total number of units of this semester
            TNU += creditLoad;
            }
        }
/////////////////////////////////////////////////////////////////////////////////////////        
        int numOfCourses = 0; //the number of courses for a semester
        String title = null; //title of a course
        int creditLoad = 0; //Credit load of a course
        char gradeLetter = 'F'; //Grade letter of a course
        double CGPA = 0.0; //Cumulative grade point average

        //For all courses
        for (int course = 0; course < numOfCourses; course++) {
            //calculate Total number of units and total grade point of the semester
            //Convert the grade letter to a point A - 5, B -4 etc
            //Add the grade point of this course to the total grade point of this semester
            TGP += creditLoad * gradeValue(scan, title);
            //Add the credit load of this course to the total number of units of this semester
            TNU += creditLoad;
        }
    }
    TTNU += TNU ;
    TNU  = 0;
    TTGP += TGP ;
    TGP  = 0;
}
CGPA = TTGP / TTNU;
        System.out.printf("Your CGPA is: %.3f%n", CGPA);
    }
}
