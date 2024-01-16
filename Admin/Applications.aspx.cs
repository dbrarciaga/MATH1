using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace MATH1.Admin
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        database blue = new database();
        RegisterClass waow = new RegisterClass();
        static string selected = "";
        static string dynamiceName = "";
        static string pangalan = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           
           if(!IsPostBack)
            {
                div2.Visible = false;
                div3.Visible = false;
                

            }
            // dynamice buttons ~
            try
            {
                int vert = 10;
                string connectionString = "server=localhost;user id=root;database=math1";

                using (MySqlConnection conn = new MySqlConnection(connectionString))
                {
                    conn.Open();
                    string query = "SELECT email FROM applicants";
                    MySqlCommand utos = new MySqlCommand(query, conn);

                    using (MySqlDataReader myRead = utos.ExecuteReader())
                    {
                        while (myRead.Read())
                        {
                            pangalan = myRead["email"].ToString();

                            Button NewButton = new Button
                            {
                                Text = pangalan,
                                ID = "btn_" + pangalan, // Assign a unique ID for each button
                                OnClientClick = "buttonClick('" + pangalan + "');", // Add client-side click event
                                CommandArgument = pangalan, // Set the associated value
                                CssClass= "w3-button w3-card w3-margin w3-grey w3-round-large"
                            };
                            this.Controls.Add(NewButton);
                            vert += 40;
                            NewButton.Click += new EventHandler(NewButton_Click);

                            PlaceHolder1.Controls.Add(new LiteralControl("<br />"));
                            PlaceHolder1.Controls.Add(NewButton);
                        }

                    }

                }

            }
            catch (Exception error)
            {
                Response.Write(error);
            }


        }
        private void NewButton_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;           
            string buttonValue = clickedButton.CommandArgument;
            Response.Write(buttonValue);
            F_name.Text = blue.query2("select FirstName from applicants where email = '" + buttonValue + "'");
            L_name.Text = blue.query2("select LastName from applicants where email = '" + buttonValue + "'");
            email.Text = blue.query2("select email from applicants where email = '" + buttonValue + "'");
            pitch1.Text = blue.query2("select pitch from applicants where email = '" + buttonValue + "'");
           
            //2nd page
            F_name2.Text = F_name.Text;
            L_name2.Text = L_name.Text;
            email2.Text = email.Text;
        }
      

        protected void accept_Click(object sender, EventArgs e)
        {
            if (div1.Visible)
            {
                div1.Visible = false;
                div2.Visible = true;
                reject.Visible = false;
                accept.Text = "Back";
                error.Text = " ";
                Label1.Text = waow.getId_Teacher();
            }
            else
            {
                div1.Visible = true;
                div2.Visible = false;
                reject.Visible = true;
                accept.Text = "Accept";
            }


        }

        protected void register_Click(object sender, EventArgs e)
        {
            if (username.Text == "" && password.Text == "")
            {
                username.CssClass = "w3-red";
                password.CssClass = "w3-red";
                error2.Text = "Enter the requred fields! ";
            }
            else
            {
                div3.Visible = true;
                div2.Visible = false;
                register.Visible = false;
                blue.query2("insert into teacher(teacher_id,username,pass,email,FirstName,LastName,birthday,stats) values ('"+Label1.Text+"','"+username.Text+"','"+password.Text+"','"+email2.Text+"','"+F_name2.Text+"','"+L_name2.Text+"','"+age.Text+"','inactive')");
                blue.query2("delete from applicants where ID = '"+selected+"'");
                blue.query2("insert into auditlog(actionTaken, username, dateAction) values ('Registered a teacher ','" + Session["username"].ToString() + "','" + DateTime.Now.ToString("MM/dd/yyyy hh:mm:ss") + "')");
            }
        }
    }
}