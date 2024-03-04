using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio
{
    public partial class Education : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = int.Parse(Request.QueryString["id"]);
                string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
                MySqlConnection connection = new MySqlConnection(connectionString);

                try
                {
                    connection.Open();
                    string query = "SELECT * FROM education WHERE id = @id";
                    MySqlCommand command = new MySqlCommand(query, connection);

                    command.Parameters.AddWithValue("@id", id);

                    using (MySqlDataReader reader = command.ExecuteReader())
                    {
                        int i = 1;

                        while (reader.Read())
                        {
                            string name = reader["title"].ToString();
                            string detail = reader["description"].ToString();
                            String date = reader["date"].ToString();



                            DateUpdate.Text = date;
                            TitleUpdate.Text = name;
                            DescriptionUpdate.Text = detail;



                        }


                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine($"An error occurred: {ex.Message}");
                }

                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }

        protected void update(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            MySqlConnection connection = new MySqlConnection(connectionString);

            try
            {
                connection.Open();
                string query = "UPDATE education SET title=@title, description=@description, date=@date WHERE id = @id";
                MySqlCommand command = new MySqlCommand(query, connection);

                command.Parameters.AddWithValue("@title", TitleUpdate.Text); 
                command.Parameters.AddWithValue("@description", DescriptionUpdate.Text); 
                command.Parameters.AddWithValue("@date", DateUpdate.Text);
                command.Parameters.AddWithValue("@id", id);

                int d = command.ExecuteNonQuery();

                if (d > 0)
                {
                    Response.Redirect("Listeducaion.aspx");
                }




            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
            }

            if (connection.State == System.Data.ConnectionState.Open)
            {
                connection.Close();
            }
        }
    }
}