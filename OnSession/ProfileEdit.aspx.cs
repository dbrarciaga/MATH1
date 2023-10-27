using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.OnSession
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        static string first = "";
        static string last = "";
        static string pas = "";
        void getInfo(string user)
        {
            string connectionString = "Server=localhost;Database=math1;Uid=root;";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                string query = "Select FirsName, LastName from students where username= '"+user+"'";
                using (MySqlCommand command = new MySqlCommand(query, connection))
                {
                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        while(reader.Read())
                        {
                            first = reader.GetString("FirsName");
                            last = reader.GetString("LastName");
                        }

                    }
                }
                connection.Close();
            }

        }

        void update(string user)
        {
            string connectionString = "Server=localhost;Database=math1;Uid=root;";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                string passwordchecker = "select pass from `students` where username='" + user + "'";
                using (MySqlCommand cmd = new MySqlCommand(passwordchecker, connection))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            pas = reader.GetString("pass");

                        }
                    }
                }
                if (pas==oldpass.Text)
                {
                    string query = "UPDATE `students` SET `FirsName`='" + first + "',`LastName`='" + last + "',`pass`='"+Con_newPass.Text+"' where username = '" + user + "';";
                    MySqlCommand command = new MySqlCommand(query, connection);
                    MySqlDataReader myreader2;
                    myreader2 = command.ExecuteReader();

                        connection.Close();
                    Label1.Text = "fields has been updated!";
                }
                else
                {
                    Label1.Text = "there is some error";
                }
                         
                
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!= null)
            {
                getInfo(Session["username"].ToString());
                F_name.Text = first;
                L_name.Text = last;
            }
            else
            {
                Response.Redirect("/Main/Login/LogIn.aspx");
            }
            
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            update(Session["username"].ToString());

            
        }
    }
}