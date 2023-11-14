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
        protected void Page_Load(object sender, EventArgs e)
        {
           
           if(!IsPostBack)
            {
                //dropdown for student
                string waow = "server=localhost;user id=root;database=math1";

                using (MySqlConnection cons = new MySqlConnection(waow))
                {
                    cons.Open();
                    string query = "SELECT ID, concat(FirstName,' ',LastName) as 'Applicant name' FROM `applicants`";
                    try
                    {
                        using (MySqlCommand cmd = new MySqlCommand(query, cons))
                        {

                            DropDownList1.DataSource = cmd.ExecuteReader();
                            DropDownList1.DataTextField = "Applicant name";
                            DropDownList1.DataValueField = "ID";
                            DropDownList1.DataBind();
                            DropDownList1.Items.Add("select");

                            cons.Close();
                        }
                    }
                    catch (Exception error)
                    {
                        Response.Write(error);
                    }

                }
                //end of dropdownlist datasource
                div2.Visible = false;
            }



        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            F_name.Text = blue.query2("select FirstName from applicants where ID = '"+DropDownList1.SelectedValue+"'");
            L_name.Text = blue.query2("select LastName from applicants where ID = '" + DropDownList1.SelectedValue + "'");
            email.Text = blue.query2("select email from applicants where ID = '" + DropDownList1.SelectedValue + "'");
            pitch1.Text = blue.query2("select pitch from applicants where ID = '" + DropDownList1.SelectedValue + "'");
            //2nd page
            F_name2.Text = F_name.Text;
            L_name2.Text = L_name.Text;
            email2.Text = email.Text;
        }

        protected void accept_Click(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedItem.ToString() == "select")
            {
               error.Text= "Select a applicant first! ";
            }
            else
            {
                if (div1.Visible)
                {
                    div1.Visible = false;
                    div2.Visible = true;
                    reject.Visible = false;
                    accept.Text = "Back";
                    error.Text = " ";
                }
                else
                {
                    div1.Visible = true;
                    div2.Visible = false;
                    reject.Visible = true;
                    accept.Text = "Accept";
                }
            }
        }
    }
}