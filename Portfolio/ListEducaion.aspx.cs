using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio
{
    public partial class ListEducaion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            show();
        }

        protected void show()
        {
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            MySqlConnection connection = new MySqlConnection(connectionString);

            try
            {
                connection.Open();
                string query = "SELECT * FROM education";
                MySqlCommand command = new MySqlCommand(query, connection);

                using (MySqlDataReader reader = command.ExecuteReader())
                {
                    int i = 1;

                    while (reader.Read())
                    {
                        string name = reader["title"].ToString();
                        string detail = reader["description"].ToString();
                        String date = reader["date"].ToString();

                        String id = reader["id"].ToString();

                        TableRow row1 = new TableRow();

                        TableCell ccell = new TableCell();
                        ccell.Text = date;
                        row1.Cells.Add(ccell);

                        TableCell ccell2 = new TableCell();
                        ccell2.Text = name;
                        row1.Cells.Add(ccell2);

                        TableCell ccell3 = new TableCell();
                        ccell3.Text = detail;
                        row1.Cells.Add(ccell3);



                        TableCell ccell5 = new TableCell();
                        Button update1 = new Button();
                        update1.Text = "Update";
                        update1.CommandArgument = id;
                        update1.Command += Update_Command; 
                        ccell5.Controls.Add(update1);

                        Button delete1 = new Button();
                        delete1.Text = "Delete";
                        delete1.CommandArgument = id; 
                        delete1.Command += Delete_Command; 

                        ccell5.Controls.Add(new LiteralControl(" ")); 
                        ccell5.Controls.Add(delete1);
                        row1.Cells.Add(ccell5);

                        dynamicTable.Rows.Add(row1);
                        i++;

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
        protected void Update_Command(object sender, CommandEventArgs e)
        {
            Response.Redirect("~/Education.aspx?id=" + e.CommandArgument + "");

        }

        protected void Delete_Command(object sender, CommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            MySqlConnection connection = new MySqlConnection(connectionString);

            try
            {
                connection.Open();


                string query = "DELETE FROM education WHERE ID = @id";
                MySqlCommand command = new MySqlCommand(query, connection);
                command.Parameters.AddWithValue("@id", id);

                int rowsAffected = command.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    //Console.WriteLine("Row deleted successfully");
                    SuccessLabel.Text = "Row deleted successfully";
                    Response.Redirect("~/listEducaion.aspx");

                }
                else
                {
                    //Console.WriteLine("No row deleted. ID not found.");
                    ErrorLabel.Text = "No row deleted. ID not found.";
                }
            }
            catch (Exception ex)
            {
                //Console.WriteLine($"An error occurred: {ex.Message}");
                ErrorLabel.Text = $"An error occurred: {ex.Message}";

            }
            finally
            {
                connection.Close();
            }
           
        }

        protected void submit(object sender, EventArgs e)
        {
            Response.Redirect("portfolio.aspx");
        }

        protected void add(object sender, EventArgs e)
        {
            Response.Redirect("AddEducation.aspx");
        }
    }
    }