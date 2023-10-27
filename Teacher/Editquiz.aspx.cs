using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Reflection.Emit;
using System.Web.Services.Description;

namespace MATH1.Teacher
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        QuizClass blue = new QuizClass();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "";
            //dropdownlist value
            quizNo.Text = blue.Selected.ToString();
            if (!IsPostBack)
            {
                DropDownList1.DataTextField = "select number";
                database testing = new database();

                string waow = "server=localhost;user id=root;database=math1";
                using (MySqlConnection cons = new MySqlConnection(waow))
                {
                    cons.Open();

                    string query = "SELECT number, count(number) FROM `quiz`where Quiz_no = '" + blue.Selected + "' group by number having count(number) > 0";
                    try
                    {
                        using (MySqlCommand cmd = new MySqlCommand(query, cons))
                        {
                            DropDownList1.DataSource = cmd.ExecuteReader();
                            DropDownList1.DataTextField = "number";
                            DropDownList1.DataValueField = "number";
                            DropDownList1.DataBind();

                        }
                        //fill gridview
                        string waow1 = "server=localhost;user id=root;database=math1";
                        using (MySqlConnection cons1 = new MySqlConnection(waow1))
                        {


                            string query1 = "select  number as 'Item Number ', title as 'Title ' ,  question as 'Question ' , option1 as 'Option 1 ', option2 as 'Option 2 ' , option3 as 'Option 3 ', answer as 'Answer ', Type as 'Type ', grade as 'Grade ' from quiz where Quiz_no='" + blue.Selected + "' and number ='" + DropDownList1.Text + "'";
                            MySqlCommand sqlcom1 = new MySqlCommand(query1, cons1);
                            cons1.Open();
                            MySqlDataAdapter sda = new MySqlDataAdapter(sqlcom1);
                            DataTable dt1 = new DataTable();
                            sda.Fill(dt1);
                            GridView1.DataSource = dt1;
                            GridView1.DataBind();
                            cons1.Close();
                        }

                    }
                    catch (Exception error)
                    {
                        testing1.Text = error.ToString();
                    }
                }
            }
            //filling the text box from database
            string waow2 = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow2))
            {
                
                try
                {
                    cons.Open();
                    string queryWaow = "select question, answer, option1, option2, option3 from quiz where Quiz_no= '"+blue.Selected+"' and number = '" + DropDownList1.Text + "'";
                    using (MySqlCommand utos = new MySqlCommand(queryWaow, cons))
                    {
                        using (MySqlDataReader basa = utos.ExecuteReader())
                        {
                            if(basa.Read())
                            {
                                q.Text = basa.GetString(0);
                                a.Text = basa.GetString(1);
                                o1.Text = basa.GetString(2);
                                o2.Text = basa.GetString(3);
                                o3.Text = basa.GetString(4);

                            }
                           
                        }
                    }
                    cons.Close();                  

                }
                catch(Exception err)
                {
                    testing1.Text = err.ToString();
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
            string selectedquizno = DropDownList1.SelectedItem.Text;
            database testing = new database();

            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {


                string query = "select  number as 'Item Number ', title as 'Title ' ,  question as 'Question ' , option1 as 'Option 1 ', option2 as 'Option 2 ' , option3 as 'Option 3 ', answer as 'Answer ', Type as 'Type ', grade as 'Grade ' from quiz where Quiz_no='" + blue.Selected + "' and number ='" + DropDownList1.Text + "'";
                MySqlCommand sqlcom = new MySqlCommand(query, cons);
                cons.Open();
                MySqlDataAdapter sda = new MySqlDataAdapter(sqlcom);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                cons.Close();
            }

        }

        protected void update_Click(object sender, EventArgs e)
        {
            if (!CheckBox1.Checked)
            {
                question.Text = q.Text;
            }
            if (!CheckBox2.Checked)
            {
                answer.Text = a.Text;                
            }
            if (!CheckBox3.Checked)
            {
                a1.Text = o1.Text  ;
            }
            if (!CheckBox4.Checked)
            {
                a2.Text = o2.Text;
            }
            if (!CheckBox5.Checked)
            {
                a3.Text = o3.Text;
            }
            string conString = "server=localhost;user id=root;database=math1";
            using (MySqlConnection connect = new MySqlConnection(conString))
            {
                connect.Open();
                string updateQuery = "update quiz set question = '" + question.Text + "', option1 = '" + a1.Text + "',option2 = '" + a2.Text + "',option3 = '" + a3.Text + "', answer = '" + answer.Text + "' where Quiz_no='" + blue.Selected.ToString() + "' and number ='" + DropDownList1.SelectedValue.ToString() + "' ";
                using (MySqlCommand utos = new MySqlCommand(updateQuery, connect))
                {
                    int rowsAffected = utos.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Label2.Text = "Great Success for item number: " + DropDownList1.SelectedValue + "in QUIZ #" + blue.Selected;
                    }
                    else
                    {
                        Label2.Text = "Failed";
                    }
                }
                connect.Close();

            }




        }
    }
}
