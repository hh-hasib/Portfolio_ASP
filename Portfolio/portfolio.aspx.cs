using Google.Protobuf.WellKnownTypes;
using MySql.Data.MySqlClient;
using Mysqlx.Crud;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio
{
    public partial class portfolio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
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
                        if (reader.Read())
                        {
                            string name = reader["title"].ToString();
                            string detail = reader["description"].ToString();
                            String date = reader["date"].ToString();
                            et1.InnerText = name;
                            e1.InnerText = detail;
                            dt1.InnerText = date;

                        }
                        if (reader.Read())
                        {
                            string name = reader["title"].ToString();
                            string detail = reader["description"].ToString();
                            String date = reader["date"].ToString();
                            et2.InnerText = name;
                            e2.InnerText = detail;
                            dt2.InnerText = date;

                        }
                        if (reader.Read())
                        {
                            string name = reader["title"].ToString();
                            string detail = reader["description"].ToString();
                            String date = reader["date"].ToString();
                            et3.InnerText = name;
                            e3.InnerText = detail;
                            dt3.InnerText = date;

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
    }
}