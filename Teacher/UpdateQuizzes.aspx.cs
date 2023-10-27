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
using System.Data;
using System.Configuration;


namespace MATH1.Teacher
{
    public partial class WebForm8 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {if(!this.IsPostBack)
            gvbind();
        }
        protected void gvbind()
        {
            database testing = new database();

            string waow1 = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow1))
            {


                string query = "select * from quiz";
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

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.gvbind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            int id = 0;// Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0].ToString());
            string question = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string opt1 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string opt2 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string opt3 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            int answer = 0;//Convert.ToInt32((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]);
            int type = 0;// Convert.ToInt32((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]);
            int quiz_no = 0;// Convert.ToInt32((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]);
            int number = 0;// Convert.ToInt32((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]);

            database testing = new database();

            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "UPDATE `quiz` SET `question`='" + question+ "', `option1`='" + opt1+ "', `option2`='" + opt2+ "', `option3`='" + opt3+ "', `answer`=" + answer+ " , `Type`=" + type+ " , `Quiz_no`=" + quiz_no+ " , `number`=" + number+" where id="+id;
                try
                {
                    MySqlCommand cmd = cons.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = query;
                    cmd.ExecuteNonQuery();
                    cons.Close();
                    // database testing = new database();

                    
                }
                catch (Exception error)
                {
                    Label1.Text = error.ToString();
                }
                try
                {
                    this.gvbind();
                    GridView1.EditIndex = -1;
                }
                catch (Exception error1)
                {
                    Label2.Text = error1.ToString();
                }

            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gvbind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
                string deletereq = "DELETE from `quiz`  WHERE id =" + id + "; ";
                string konnn = "server=localhost;user id=root;database=math1";
                MySqlConnection dataKonnn = new MySqlConnection(konnn);
                MySqlCommand utos2 = new MySqlCommand(deletereq, dataKonnn);
                try
                {
                    dataKonnn.Open();
                    MySqlDataReader myReader = utos2.ExecuteReader();
                    if (myReader.HasRows)
                    {
                        while (myReader.Read()) ;
                        deletereq = myReader.GetString(0);
                    }
                    else
                    {
                        Label1.Text = "wow";
                    }

                }
                catch (Exception ewaow)
                {
                    Label1.Text = ewaow.ToString();
                }
            }
            catch(ArgumentOutOfRangeException argumentoutofrangeexeception)
            {
                Label1.Text = argumentoutofrangeexeception.ToString();
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            gvbind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}