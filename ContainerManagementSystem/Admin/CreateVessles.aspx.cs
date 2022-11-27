using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContainerManagementSystem.Admin
{
    public partial class CreateVessles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = DataConnection.OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into Vessels values(@ShipType,@Built,@Size,@GT)";

            cmd.Parameters.AddWithValue("@ShipType", Convert.ToString(txtShipType.Text));
            cmd.Parameters.AddWithValue("@Built", Convert.ToString(txtBuilt.Text));

            cmd.Parameters.AddWithValue("@Size", Convert.ToString(txtSize.Text));
            cmd.Parameters.AddWithValue("@GT", Convert.ToString(txtGT.Text));

            


            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Save Successfully!!";
        }
    }
}