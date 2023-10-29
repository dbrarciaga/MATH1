using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using MySql.Data.MySqlClient;

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
        static string email = "";

        
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
        public string Email1
        {
            get { return email; }
            set { email = value; }
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
        public RegisterClass(string e,string user, string pass)
        {
            email = e;
            username = user;
            password = pass;            
        }
        public RegisterClass()
        {

        }
        //email checker
        public bool Email_Checker(string val)
        {
            string pattern = @"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
            Regex emailCheck = new Regex(pattern);
            bool hasEmail = emailCheck.IsMatch(val);
            if(!hasEmail)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        //database id checker
        bool checker(string val)
        {
            if(blue.query("select stud_id from students where stud_id ='"+val+"'") == null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        //generate ID
        public string getId()
        {
            Random waowRand = new Random();
            DateTime MyTime = DateTime.Now;
            string id = "";
            string formattedTime = "";
            int selected = waowRand.Next(10,1001);
            do
            {
               formattedTime = MyTime.ToString("yyyy");
                id = formattedTime + "10" + selected.ToString();
            } while (!checker(id));
            return id;
        }
        public void InputDetails(int getIdNow)
        {
            blue.query("insert into students(stud_id,username,pass,email,birthday,FirstName,LastName,GradeLevel) values('"+getIdNow+"','"+username+"','"+password+"','"+email+"','"+age+"','"+F_name+"','"+L_name+"','"+GradeLevel+"')");
        }
        //checks if the string has special char
        public bool hasSpecialChar(string val)
        {
            string pattern = @"[^a-zA-Z0-9\s]";
            Regex MyRegex = new Regex(pattern);

            bool containsSpecialChar = MyRegex.IsMatch(val);

            if(containsSpecialChar)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
    }
}