using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Hospital_Managment_System
{
    public class DataBaseConnection
    {
        public static SqlConnection dataBaseConnection()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["usmanDB"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            return connection;
        }
    }
}