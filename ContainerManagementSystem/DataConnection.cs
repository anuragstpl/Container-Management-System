using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ContainerManagementSystem
{
    public class DataConnection
    {
        public static SqlConnection OpenConnection()
        {
            SqlConnection con = new SqlConnection("Server=tcp:contserverdb.database.windows.net,1433;Initial Catalog=contdb;Persist Security Info=False;User ID=contadmin;Password=contpass@123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            //SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=Container;Integrated Security=True;");
            con.Open();
            return con;
        }
    }
}