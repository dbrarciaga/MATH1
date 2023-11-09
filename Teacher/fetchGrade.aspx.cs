using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Teacher
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        database blue = new database();
        Achievement waow = new Achievement();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            tasks.Visible = false;
            tasks2.Visible = false;
            tasks3.Visible = false;
            tasks4.Visible = false;
            con1.Visible = false;
            string id = blue.query2("select teacher_id from teacher where username = '"+Session["username"].ToString()+"'");
           if(!IsPostBack)
            {
                //dropdown for student
                string waow = "server=localhost;user id=root;database=math1";
                using (MySqlConnection cons = new MySqlConnection(waow))
                {
                    cons.Open();
                    string query = "SELECT classlist.stud_id as 'ID', concat(students.FirstName,' ', students.LastName) as 'Student' FROM `classlist` Inner join students on classlist.stud_id = students.stud_id where classlist.teacher_id = '" + id + "'";
                    try
                    {
                        using (MySqlCommand cmd = new MySqlCommand(query, cons))
                        {

                            DropDownList1.DataSource = cmd.ExecuteReader();
                            DropDownList1.DataTextField = "Student";
                            DropDownList1.DataValueField = "ID";
                            DropDownList1.DataBind();


                            cons.Close();
                        }
                    }
                    catch (Exception error)
                    {
                        Response.Write(error);
                    }

                }
            }

        }
        //this will appear the progress bar
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con1.Visible = true;
            student.Text = "Student: " + blue.query2("select concat(FirstName,' ',LastName) as 'Name' from students where stud_id='"+DropDownList1.SelectedValue+"'");
            string grade = blue.query2("select gradeLevel from progress where stud_id = '"+DropDownList1.SelectedValue+"'");

            switch(grade)
            {
                case "1":
                    progressBar.Text = waow.grade1(int.Parse(DropDownList1.SelectedValue),grade);
                    break;
                case "2":
                    progressBar.Text = waow.grade1(int.Parse(DropDownList1.SelectedValue), grade);
                    break;
                case "3":
                    progressBar.Text = waow.grade3(int.Parse(DropDownList1.SelectedValue), grade);
                    break;
                case "4":
                    progressBar.Text = waow.grade3(int.Parse(DropDownList1.SelectedValue), grade);
                    break;
                default:
                    progressBar.Text = waow.grade3(int.Parse(DropDownList1.SelectedValue), grade);
                    break;

            }            
            
            //grade1
            ADDITION.Visible = false;
            SUBTRATION.Visible = false;
            MULTIPLICATION.Visible = false;
            DIVISION.Visible = false;
            if (blue.query2("select gradeLevel from progress where stud_id = '" + DropDownList1.SelectedValue + "' and gradelevel = 1") == "1")
            {
                tasks.Visible = true;
                //addition
                if(blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'ADDITION'") == "ADDITION")
                {
                    ADDITION.Visible = true;
                }
                //subraction
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'SUBTRACTION'") == "SUBTRACTION")
                {
                    SUBTRATION.Visible = true;
                }
                //multiplication
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'MULTIPLICATION'") == "MULTIPLICATION")
                {
                    MULTIPLICATION.Visible = true;
                }
                //division
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'DIVISION'") == "DIVISION")
                {
                    DIVISION.Visible = true;
                }
            }
            // grade 2
            ADDITION2.Visible = false;
            SUBTRATION2.Visible = false;
            MULTIPLICATION2.Visible = false;
            DIVISION2.Visible = false;
            if (blue.query2("select gradeLevel from progress where stud_id = '" + DropDownList1.SelectedValue + "' and gradelevel = 2") == "2")
            {
                tasks2.Visible = true;
                //addition
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'ADDITION'") == "ADDITION")
                {
                    ADDITION2.Visible = true;
                }
                //subraction
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'SUBTRACTION'") == "SUBTRACTION")
                {
                    SUBTRATION2.Visible = true;
                }
                //multiplication
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'MULTIPLICATION'") == "MULTIPLICATION")
                {
                    MULTIPLICATION2.Visible = true;
                }
                //division
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'DIVISION'") == "DIVISION")
                {
                    DIVISION2.Visible = true;
                }
            }
            // grade 3
            ADDITION3.Visible = false;
            SUBTRATION3.Visible = false;
            MULTIPLICATION3.Visible = false;
            DIVISION3.Visible = false;
            ADDSUBINT.Visible = false;
            MULTIINT.Visible = false;
            if (blue.query2("select gradeLevel from progress where stud_id = '" + DropDownList1.SelectedValue + "' and gradelevel = 3") == "3")
            {
                tasks3.Visible = true;
                //addition
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'ADDITION'") == "ADDITION")
                {
                    ADDITION2.Visible = true;
                }
                //subraction
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'SUBTRACTION'") == "SUBTRACTION")
                {
                    SUBTRATION2.Visible = true;
                }
                //multiplication
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'MULTIPLICATION'") == "MULTIPLICATION")
                {
                    MULTIPLICATION2.Visible = true;
                }
                //division
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'DIVISION'") == "DIVISION")
                {
                    DIVISION2.Visible = true;
                }
                //addsub_int
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'ADDSUBINT'") == "ADDSUBINT")
                {
                    ADDSUBINT.Visible = true;
                }
                //multi_int
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'MULTIINT'") == "MULTIINT")
                {
                    MULTIINT.Visible = true;
                }
            }
            // grade 4
            ADDITION4.Visible = false;
            SUBTRATION4.Visible = false;
            MULTIPLICATION4.Visible = false;
            DIVISION4.Visible = false;
            ADDSUBINT4.Visible = false;
            MULTIINT4.Visible = false;
            if (blue.query2("select gradeLevel from progress where stud_id = '" + DropDownList1.SelectedValue + "' and gradelevel = 4") == "4")
            {
                tasks4.Visible = true;
                //addition
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'ADDITION'") == "ADDITION")
                {
                    ADDITION4.Visible = true;
                }
                //subraction
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'SUBTRACTION'") == "SUBTRACTION")
                {
                    SUBTRATION4.Visible = true;
                }
                //multiplication
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'MULTIPLICATION'") == "MULTIPLICATION")
                {
                    MULTIPLICATION4.Visible = true;
                }
                //division
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'DIVISION'") == "DIVISION")
                {
                    DIVISION4.Visible = true;
                }
                //addsub_int
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'ADDSUBINT'") == "ADDSUBINT")
                {
                    ADDSUBINT4.Visible = true;
                }
                //multi_int
                if (blue.query2("select topic from progress where stud_id = '" + DropDownList1.SelectedValue + "' and topic = 'MULTIINT'") == "MULTIINT")
                {
                    MULTIINT4.Visible = true;
                }
            }
        }
    }
}