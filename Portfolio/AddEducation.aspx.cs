using MySql.Data.MySqlClient;
using Org.BouncyCastle.Tls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio
{
    public partial class AddEducation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void add(object sender, EventArgs e)
        {
            
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            MySqlConnection connection = new MySqlConnection(connectionString);

            try
            {
                connection.Open();
                string query = "INSERT INTO education ( title, description, date) values (@title , @description,@date)";
                MySqlCommand command = new MySqlCommand(query, connection);

                command.Parameters.AddWithValue("@title", TitleAdd.Text);
                command.Parameters.AddWithValue("@description", DescriptionAdd.Text);
                command.Parameters.AddWithValue("@date", DateAdd.Text);
                

                int d = command.ExecuteNonQuery();

                if (d > 0)
                {
                    Response.Write("<script>alert('Education Added Successfully.');</script>");
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