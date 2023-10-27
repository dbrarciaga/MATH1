using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace MATH1
{
    public class profile
    {
        public string getFullname(string username)
        {
            string sum = "";
            try
            {
                string connectionString = "server=localhost;user id=root;database=math1";
                using (MySqlConnection conn = new MySqlConnection(connectionString))
                {
                    conn.Open();
                    string query = "select FirsName, LastName from students where username ='" + username + "'";
                    MySqlCommand cmd = new MySqlCommand(query, conn);

                    MySqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        string first = reader["FirsName"].ToString();
                        string last = reader["LastName"].ToString();
                        sum = first+" "+last;
                        return sum;
                    }
                    else
                    {
                        return username = "wala";
                        //noice
                    }
                }
            }catch(Exception error)
            {
                return error.ToString();
            }
        }
    }
}