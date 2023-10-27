using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MATH1
{
    public class RegisterClass
    {
        database blue = new database();
        static string username = "";
        static string F_name = "";
        static string L_name = "";
        static string password = "";
        static int age = 0;
        static int GradeLevel = 0;


        //GetSetter
        public string username1
        {
            get { return username; }
            set { username = value; }
        }
        public string password1
        {
            get { return password; }
            set { password = value; }
        }
        public string Fname1
        {
            get { return F_name; }
            set { F_name = value; }
        }
        public string Lname1
        {
            get { return L_name; }
            set { L_name = value; }
        }
        public int age1
        {
            get { return age; }
            set { age = value; }
        }
        public int GradeLevel1
        {
            get { return GradeLevel; }
            set { GradeLevel = value; }
        }
        //WebForm1

        public RegisterClass(string first, string last, int a,int grade)
        {
            F_name = first;
            L_name = last;
            age = a;
            GradeLevel = grade;
        }

        //webform2
        public RegisterClass(string user, string pass)
        {
            username = user;
            password = pass;            
        }
        public RegisterClass()
        {

        }
        string getId()
        {
            DateTime MyTime = DateTime.Now;
            string formattedTime = MyTime.ToString("yyyyMMdd HHmmss");
            return formattedTime;
        }
        public void InputDetails()
        {
            blue.query("Insert into students(username,pass,FirsName,LastName,age,gradeLevel,score,userType) values ('"+username+"','"+password+"','"+F_name+"','"+L_name+"','"+age+"','"+GradeLevel+"',0,'student');");
        }
    }
}