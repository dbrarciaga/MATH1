﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.Admin
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("Select GradeLevel as 'Grade',stud_id as 'ID', concat(FirstName,' ',LastName) as 'Name',stats as 'Status', username from students  ", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();

                    if (myRead.HasRows == true)
                    {
                        GridView1.DataSource = myRead;
                        GridView1.DataBind();
                        Label1.Text = " ";
                    }
                    else
                    {
                        Label1.Text = "<div class='button1'> user not found! </div>";

                    }

                }
                catch (Exception err)
                {
                    Response.Write(err);
                }
                cons.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label1.Text = "Enter the required field ! ! !";
            }
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                try
                {

                    cons.Open();

                    MySqlCommand utos = new MySqlCommand("Select stud_id as 'ID', concat(FirstName,' ',LastName) as 'Name', username as 'Username' from students where stud_id = '" + TextBox1.Text + "' or username = '" + TextBox1.Text + "'  ", cons);
                    MySqlDataReader myRead = utos.ExecuteReader();

                    if (myRead.HasRows == true)
                    {
                        GridView1.DataSource = myRead;
                        GridView1.DataBind();
                        Label1.Text = " ";
                    }
                    else
                    {
                        Label1.Text = "<div class='w3-button w3-red'> user not found! </div>";

                    }

                }
                catch (Exception err)
                {
                    Response.Write(err);
                }
                cons.Close();
            }
        }
    }
}