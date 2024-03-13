using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Routing;
using System.Configuration;
using System.IO;
using System.Data;

namespace MATH1.Admin
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        Achievement waow = new Achievement();
        database blue = new database();
        static string GetStudId = "";
        static string IsFinished = "";
        static int g = 0;
        static string grd = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                div1.Visible = true;
            }
            else
            {
                div1.Visible = false;
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            div1.Visible = true;
            //full name
            F_name.Text = blue.query2("select concat(FirstName,' ',LastName) as 'Name' from students where stud_id='" +search.Text + "' or username = '" + search.Text + "'");
            //email
            email.Text = blue.query2("select email from students where username = '"+search.Text+"' or stud_id = '"+search.Text+"'");
            //ID getter
            GetStudId = blue.query2("select stud_id from students where username ='"+search.Text+"'");
            //get gradelevel from progress table
            grd= blue.query2("select gradeLevel from progress where stud_id = '" + GetStudId + "'");
            //get gradelevel from students table
            GradeLevel.Text = blue.query2("select GradeLevel from students where username = '" + search.Text + "' or stud_id = '" + search.Text + "'");
            ID.Text = GetStudId;
            //if enrolled
            string isEnrolled = blue.query2("select stats from students where username = '"+search.Text+"' or stud_id = '"+search.Text+"'");
            
            if(isEnrolled == "inactive")
            {
                
                active.Text = "<button class='w3-button w3-red w3-round-large'>Not Enrolled </button>";
            }
            else
            {
                active.Text = "";
            }
            try
            {
                switch (grd)
                {
                    case "1":
                        progressBar.Text = waow.grade1(int.Parse(GetStudId), GradeLevel.Text);
                        break;
                    case "2":
                        progressBar.Text = waow.grade1(int.Parse(GetStudId), GradeLevel.Text);
                        break;
                    case "3":
                        progressBar.Text = waow.grade3(int.Parse(GetStudId), GradeLevel.Text);
                        break;
                    case "4":
                        progressBar.Text = waow.grade3(int.Parse(GetStudId), GradeLevel.Text);
                        break;
                    default:
                        progressBar.Text = waow.grade3(int.Parse(GetStudId), GradeLevel.Text);
                        break;

                }
                //edit button
                Edit.Visible = false;
                if (progressBar.Text == "<div class='w3-border w3-white'><div class='w3-green' style='height:24px;width:100%'>100%</div></div>")
                {
                    Edit.Visible = true;
                }

                    string waow2 = "server=localhost;user id=root;database=math1";
                using (MySqlConnection cons = new MySqlConnection(waow2))
                {
                    try
                    {
                        GridView1.Visible = false;
                        cons.Open();

                        MySqlCommand utos = new MySqlCommand("SELECT score_title as 'Title',score as 'Score',TypeOfTask as 'Type' FROM `achievements` where stud_id = '"+ID.Text+"' ORDER BY `achievements`.`TypeOfTask` ASC;", cons);
                        MySqlDataReader myRead = utos.ExecuteReader();

                        if (myRead.HasRows == true)
                        {
                            GridView1.DataSource = myRead;
                            GridView1.DataBind();
                            GridView1.Visible = true;
                            //Label1.Text = " ";
                        }                      
                        else
                        {
                            GridView1.Visible = false;
                        }
                    }
                    catch (Exception err)
                    {
                        Response.Write(err);
                    }
                    cons.Close();
                }
                //exercise
                using (MySqlConnection cons = new MySqlConnection(waow2))
                {
                    try
                    {
                        GridView2.Visible = false;
                        cons.Open();

                        MySqlCommand utos = new MySqlCommand("select distinct score_title as 'Topic', score from achievements where stud_id ='" + ID.Text + "' and typeOfTask ='exercise'", cons);
                        MySqlDataReader myRead = utos.ExecuteReader();

                        if (myRead.HasRows == true)
                        {
                            GridView2.DataSource = myRead;
                            GridView2.DataBind();
                            GridView2.Visible = true;
                            //Label1.Text = " ";
                        }
                        else
                        {
                            GridView2.Visible = false;
                        }
                    }
                    catch (Exception err)
                    {
                        Response.Write(err);
                    }
                    cons.Close();
                }
                //exercise
                using (MySqlConnection cons = new MySqlConnection(waow2))
                {
                    try
                    {
                        GridView2.Visible = false;
                        cons.Open();

                        MySqlCommand utos = new MySqlCommand("select score_title as 'Exercise', score from achievements where stud_id ='" + ID.Text + "' and typeOfTask ='exercise'", cons);
                        MySqlDataReader myRead = utos.ExecuteReader();

                        if (myRead.HasRows == true)
                        {
                            GridView2.DataSource = myRead;
                            GridView2.DataBind();
                            GridView2.Visible = true;
                            //Label1.Text = " ";
                        }
                        else
                        {
                            GridView2.Visible = false;
                        }
                    }
                    catch (Exception err)
                    {
                        Response.Write(err);
                    }
                    cons.Close();
                }
                //quizes
                using (MySqlConnection cons = new MySqlConnection(waow2))
                {
                    try
                    {
                        GridView3.Visible = false;
                        cons.Open();

                        MySqlCommand utos = new MySqlCommand("select score_title as 'Challenges', score from achievements where stud_id ='" + ID.Text + "' and typeOfTask ='Quiz'", cons);
                        MySqlDataReader myRead = utos.ExecuteReader();

                        if (myRead.HasRows == true)
                        {
                            GridView3.DataSource = myRead;
                            GridView3.DataBind();
                            GridView3.Visible = true;
                            //Label1.Text = " ";
                        }
                        else
                        {
                            GridView3.Visible = false;
                        }
                    }
                    catch (Exception err)
                    {
                        Response.Write(err);
                    }
                    cons.Close();
                }
            }
            catch(Exception error)
            {
                DataTable ds = new DataTable();
                ds = null;
                GridView1.DataSource = ds;
                GridView1.DataBind();
                GridView2.DataSource = ds;
                GridView2.DataBind();
                GridView3.DataSource = ds;
                GridView3.DataBind();
                F_name.Text = "NOT FOUND";
          
            }
        }

        protected void print_Click(object sender, EventArgs e)
        {
            if(progressBar.Text == "<div class='w3-border w3-white'><div class='w3-green' style='height:24px;width:100%'>100%</div></div>")
            {
                IsFinished = "Completed";
            }
            else
            {
                IsFinished = "Incomplete";
            }
            try
            {
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = "application/ms-excel";
                Response.AddHeader("content-disposition", "attachment; filename="+F_name.Text+".xls");
                Response.Charset = "";
                StringWriter sw = new StringWriter();
                HtmlTextWriter htw = new HtmlTextWriter(sw);
                GridView1.RenderControl(htw);
                Response.Output.Write(sw.ToString());
                Response.End();

               /*
                string[] lines = { F_name.Text, ID.Text, GradeLevel.Text, IsFinished };

                string docPath =
                  Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);

                
                using (StreamWriter outputFile = new StreamWriter(Path.Combine(docPath, "Student "+ID.Text+" "+DateTime.Now.ToString("MM dd yyyy")+".txt")))
                {
                    foreach (string line in lines)
                        outputFile.WriteLine(line);
                    print.Text = "file printed!";
                }
                */
            }
            catch(Exception err)
            {
                
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            g = int.Parse(GradeLevel.Text);
            g = g + 1;
            Response.Write(blue.query2("update students set gradelevel = '" + g + "' where stud_id = '" + ID + "' or username = '" + search.Text + "'")+ g);
            Edit.Text = "Student has been enrolled to higher grade.";

        }
    }
}