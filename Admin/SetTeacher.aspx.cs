using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace MATH1.Admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.Visible = false;

            DropDownList1.DataTextField = "select number";
            database testing = new database();

            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "SELECT stud_id, count(stud_id) FROM `enrollmentrequest` group by stud_id having count(stud_id) > 0";
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, cons))
                    {
                        DropDownList1.DataSource = cmd.ExecuteReader();
                        DropDownList1.DataTextField = "stud_id";
                        DropDownList1.DataValueField = "stud_id";
                        DropDownList1.DataBind();

                    }

                    string waow1 = "server=localhost;user id=root;database=math1";
                    using (MySqlConnection cons1 = new MySqlConnection(waow1))
                    {


                        string query1 = "Select stud_id, FirstName,LastName, GradeLevel from enrollmentrequest";
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
                    Label1.Text = error.ToString();
                }
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {      
            database testing = new database();

            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                string query = "Select stud_id,FirstName,LastName,GradeLevel from enrollmentrequest where stud_id =" + DropDownList1.SelectedItem.Text;
                MySqlCommand sqlcom = new MySqlCommand(query, cons);
                cons.Open();
                MySqlDataAdapter sda = new MySqlDataAdapter(sqlcom);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                cons.Close();
            }
            Label1.Text = DropDownList1.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            database blue = new database();
            blue.query("insert into classlist(teacher,stud_id,f_name) values ('"+teacher1.Text+"', '"+stud.Text+"','"+blue.getInfo(stud.Text)+"') ");
            blue.query("delete from enrollmentrequest where stud_id = '"+stud.Text+"'");
            Response.Redirect("SetTeacher.aspx");
        }
    }
}