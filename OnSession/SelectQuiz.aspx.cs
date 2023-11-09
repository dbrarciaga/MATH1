using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace MATH1.OnSession
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        database blue = new database();
        static int count = 1;
        static string test = "";
        static string number = "";
        void getQuizNumber()
        {
            string connectionString = "Server=localhost;Database=math1;Uid=root;";
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT count(`quiz_id`) as brian FROM quiz";
                using (MySqlCommand command = new MySqlCommand(query, connection))
                {
                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            number = reader.GetString("brian");
                        }

                    }
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (count < 3)
            {
                nxt.Visible = true;///true
 
            }
            if (count == 1)
            {
                prev.Visible = false;
                noBut.Visible = true;

            }
            if (count == 3)
            {
                nxt.Visible = false;
            }
            if (count > 1)
            {
                prev.Visible = true;///true
                noBut.Visible = false;

            }

            getQuizNumber();
            select.Text = "Challenge # " + count.ToString();
        }

        protected void select_Click(object sender, EventArgs e)
        {
            if (count == 3)
            {
                Response.Redirect("/OnSession/DragAndDrop.aspx");
            }
            blue.waow = count;
            Response.Redirect("/OnSession/QuizPage.aspx");
        }

        protected void prev_Click(object sender, EventArgs e)
        {
            if (count > 1)
            {
                count = count - 2;
                select.Text = "Quiz # "+count.ToString();
                

            }
            if (count < 3) 
            {
                nxt.Visible = true;
            }
            if (count ==1)
            {
                prev.Visible = false;
                noBut.Visible = true;
            }

        }

        protected void nxt_Click(object sender, EventArgs e)
        {

            if (Int32.Parse(number) > count)
            {
                count = count + 2;
                select.Text = "Challenge # " + count.ToString();
            }
            if(count==3)
            {
                nxt.Visible = false;
                select.Text = "Challenge # 2";
            }
            if (count > 1)
            {
                prev.Visible = true;
                noBut.Visible = false;
            }
        }
    }
}