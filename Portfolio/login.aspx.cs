using MySql.Data.MySqlClient;
using System;
using System.Web;

namespace Portfolio
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_button(object sender, EventArgs e)
        {
            string user = t1.Text;
            string password = t2.Text;
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            MySqlConnection connection = new MySqlConnection(connectionString);

            try
            {
                connection.Open();
                string query = "SELECT * FROM login";
                MySqlCommand command = new MySqlCommand(query, connection);

                using (MySqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string name = reader["username"].ToString();
                        string pass = reader["password"].ToString();

                        if (name == user && pass == password)
                        {
                            
                            HttpCookie userCookie = new HttpCookie("UserInfo");
                            userCookie["Username"] = name;
                            userCookie.Expires = DateTime.Now.AddHours(1);
                            Response.Cookies.Add(userCookie);

                            string script = "alert('Logged in Successfully.');";
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);

                            Response.Redirect("ListEducaion.aspx");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
            }
            finally
            {
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }
    }
}
