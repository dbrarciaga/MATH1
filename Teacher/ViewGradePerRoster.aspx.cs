using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Teacher
{
    public partial class WebForm7 : System.Web.UI.Page
    {      
        Roster obj = new Roster();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.DataTextField = "select entry";
            Label1.Text = obj.GetGrade.ToString();
            if(!IsPostBack)
            {
               
                try
                {
                    string conString = "server=localhost;user id=root;database=math1";
                    using (MySqlConnection waow = new MySqlConnection(conString))
                    {
                        waow.Open();
                        string query = "select stud_id from classlist where gradelevel = '"+obj.GetGrade+ "' and teacher = '" + Session["username"].ToString() + "'";
                        using (MySqlCommand utos = new MySqlCommand(query,waow))
                        {
                            DropDownList1.DataSource = utos.ExecuteReader();
                            DropDownList1.DataTextField = "stud_id";
                            DropDownList1.DataValueField = "stud_id";
                            DropDownList1.DataBind();
                        }
                    }
                }
                catch (Exception er)
                {
                    Response.Write(er);
                }
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select distinct(topic), stud_id, score from achievement where id ='" + DropDownList1.SelectedValue + "' and teacher ='"+Session["username"].ToString()+"'", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();
                    if (myRead.HasRows == true)
                    {
                        GridView1.DataSource = myRead;
                        GridView1.DataBind();

                    }

                }
                catch (Exception err)
                {
                    Response.Write(err);
                }
            }
        }
    }
}