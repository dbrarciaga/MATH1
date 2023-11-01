using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace MATH1
{
    public class database
    {
        //variables
        static int test = 0;
        public int waow {
            get { return test; }
            set { test = value; }
        }
        static int role = 0;
        public int Role
        {
            get { return role; }
            set { role = value;  }
        }
        //methods
        // QUERY
        public string query2(string user)
        {
            try
            {
                string connectionString = "server=localhost;user id=root;database=math1";
                using (MySqlConnection conn = new MySqlConnection(connectionString))
                {
                    conn.Open();

                    MySqlCommand cmd = new MySqlCommand(user, conn);

                    MySqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        string wow = reader.GetString(0);
                        return wow;
                    }
                    else
                    {
                        return null;
                        //noice
                    }
                }
            }
            catch(Exception error)
            {
                return error.ToString();
            }
        }

        // QUERY
        public string query(string user)
        {
            string connectionString = "server=localhost;user id=root;database=math1";
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                conn.Open();
                
                MySqlCommand cmd = new MySqlCommand(user, conn);

                MySqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    string wow = reader["userType"].ToString();
                    return "sucess";
                }
                else
                {
                    return  null;
                    //noice
                }
            }
        }

        //usertype
        public string getValue(string user)
        {
            string connectionString = "server=localhost;user id=root;database=math1";
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                conn.Open();
                string query = "select userType from students where username ='" + user + "'";
                MySqlCommand cmd = new MySqlCommand(query, conn);

                MySqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    string wow = reader["userType"].ToString();
                    return wow;
                }
                else
                {
                    return user = "wala";
                    //noice
                }
            }
        }
        //retrieving score for students
        public string getScore(string val)
        {

            string score = "";
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "SELECT score FROM students where username =@user";
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, cons))
                    {
                        cmd.Parameters.AddWithValue("@user", val);
                        score = cmd.ExecuteScalar().ToString();
                        if (cmd.ExecuteScalar() == null)
                        {
                            return "0";
                        }
                        else
                        {
                            return score;
                        }
                    }
                }
                catch (Exception error)
                {
                    return error.ToString();
                }
            }
        }
        //geting grade level of students
        public string getGradeLevel(string val)
        {

            string level = "";
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "SELECT GradeLevel FROM students  where username =@user";
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, cons))
                    {
                        cmd.Parameters.AddWithValue("@user", val);

                        if (cmd.ExecuteScalar() != null)
                        {
                            level = cmd.ExecuteScalar().ToString();
                            return level;

                        }
                        else
                        {
                            return "error";
                        }

                    }
                }
                catch (Exception error)
                {
                    return error.ToString();
                }
            }
        }
        //add score in exercise
        public string ScoreAdd(string val, string score)
        {
            
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "UPDATE `students` SET score = score + @score where username = @user ";
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, cons))
                    {
                        cmd.Parameters.AddWithValue("@user", val);
                        cmd.Parameters.AddWithValue("@score", score);

                        if (cmd.ExecuteScalar() != null)
                        {
                            //level = cmd.ExecuteScalar().ToString();
                            return "You receive: " + score + " stars!";

                        }
                        else
                        {
                            return "error";
                        }

                    }
                }
                catch (Exception error)
                {
                    return error.ToString();
                }
            }
        }
        public string Progress(string val,string topic, string score)
        {

            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "INSERT INTO `achievement`(`stud_id`, `topic`, `IsCompleted`, `score`) VALUES (@user,@topic,1,@score) ";
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, cons))
                    {
                        cmd.Parameters.AddWithValue("@user", val);
                        cmd.Parameters.AddWithValue("@topic", topic);
                        cmd.Parameters.AddWithValue("@score", score);

                        if (cmd.ExecuteScalar() != null)
                        {
                            //level = cmd.ExecuteScalar().ToString();
                            return "You receive: " + score + " stars!";

                        }
                        else
                        {
                            return "error";
                        }

                    }
                }
                catch (Exception error)
                {
                    return error.ToString();
                }
            }
        }
        //geting teacher from classlist
        public string getTeacher(string val)
        {
            string score = "";
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "SELECT teacher.FirstName FROM `classlist` inner join teacher on classlist.teacher_id = teacher.teacher_id where stud_id =@user";
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, cons))
                    {
                        cmd.Parameters.AddWithValue("@user", val);

                        if (cmd.ExecuteScalar() != null)
                        {
                            score = cmd.ExecuteScalar().ToString();
                            return score;

                        }
                        else
                        {
                            return "No teacher assigned";
                        }

                    }
                }
                catch (Exception error)
                {
                    return error.ToString();
                }
            }

        }
        //geting teacherID from classlist
        public string getTeacherID(string val)
        {
            string score = "";
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "SELECT teacher_id FROM `classlist` where stud_id =@user";
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, cons))
                    {
                        cmd.Parameters.AddWithValue("@user", val);

                        if (cmd.ExecuteScalar() != null)
                        {
                            score = cmd.ExecuteScalar().ToString();
                            return score;

                        }
                        else
                        {
                            return "No teacher assigned";
                        }

                    }
                }
                catch (Exception error)
                {
                    return error.ToString();
                }
            }

        }
        //getting Firstname
        public string getInfo(string val)
        {
            string score = "";
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "SELECT concat(FirstName,' ',Lastname) FROM students  where stud_id =@user or username =@user";
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, cons))
                    {
                        cmd.Parameters.AddWithValue("@user", val);

                        if (cmd.ExecuteScalar() != null)
                        {
                            score = cmd.ExecuteScalar().ToString();
                            return score;

                        }
                        else
                        {
                            return "error";
                        }

                    }
                }
                catch (Exception error)
                {
                    return error.ToString();
                }
            }
        }
        public int getId(string name)
        {
            int idNum = 0;
            string waow = "server=localhost;user id=root;database=math1";
            using (MySqlConnection cons = new MySqlConnection(waow))
            {
                cons.Open();

                string query = "SELECT stud_id FROM students  where stud_id =@user or username =@user";
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, cons))
                    {
                        cmd.Parameters.AddWithValue("@user", name);

                        if (cmd.ExecuteScalar() != null)
                        {
                            idNum = Int32.Parse(cmd.ExecuteScalar().ToString());
                            return idNum;

                        }
                        else
                        {
                            return 0;
                        }

                    }
                }
                catch (Exception error)
                {
                    return 0;
                }
            }
           
        }
    }
}