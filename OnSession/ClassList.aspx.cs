using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.OnSession
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        database blue = new database();
        protected void Page_Load(object sender, EventArgs e)
        {
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {
                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("select FirsName,LastName from students where gradeLevel = '" + blue.Role + "' ", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();
                    if (myRead.HasRows == true)
                    {
                        GridView1.DataSource = myRead;
                        GridView1.DataBind();
                       
                    }
              
                }
                catch (Exception err)
                {
                    Label1.Text = err.ToString();
                }
            }
        }
    }
}