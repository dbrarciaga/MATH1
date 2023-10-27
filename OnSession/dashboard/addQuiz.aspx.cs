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

namespace MATH1.OnSession
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                database testing = new database();

                string waow = "server=localhost;user id=root;database=math1";
                using (MySqlConnection cons = new MySqlConnection(waow))
                {
                    cons.Open();

                    string query = "SELECT QuestionNumber FROM `addeditquiz`";
                    try
                    {
                        using (MySqlCommand cmd = new MySqlCommand(query, cons))
                        {
                            DropDownList1.DataSource = cmd.ExecuteReader();
                            DropDownList1.DataTextField = "QuestionNumber";
                            DropDownList1.DataValueField = "QuestionNumber";
                            DropDownList1.DataBind();

                        }
                    }
                    catch (Exception error)
                    {

                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBoxQuestion.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            database testing = new database();

            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "INSERT INTO addeditquiz (QuestionType, Question, Answer) VALUES('"+DropDownList1.Text+"','"+TextBoxQuestion.Text+"','"+TextBoxAnswer.Text+"')";
                try
                {
                    MySqlCommand cmd = cons.CreateCommand();
                    cmd.CommandType=CommandType.Text;
                    cmd.CommandText=query;
                    cmd.ExecuteNonQuery(); 
                    cons.Close();
                }
                catch (Exception error)
                {
                    
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            database testing = new database();

            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "UPDATE `addeditquiz` SET `QuestionType`='" + DropDownList1.Text+ "', `Question`='" + TextBoxQuestion.Text+ "', `Answer`='" + TextBoxAnswer.Text+ "' WHERE `QuestionNumber` =" + int.Parse(DropDownList1.SelectedItem.ToString()) + ";";
                try
                {
                    MySqlCommand cmd = cons.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = query;
                    cmd.ExecuteNonQuery();
                    cons.Close();
                }
                catch (Exception error)
                {

                }
            }
        }
    }
}