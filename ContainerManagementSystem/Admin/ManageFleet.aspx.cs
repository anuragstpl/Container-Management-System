using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContainerManagementSystem.Admin
{
    public partial class ManageFleet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = DataConnection.OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into fleet values(@Aircraft,@TotalinService,@Seats,@Engines,@CruisingSpeed)";

            cmd.Parameters.AddWithValue("@Aircraft", Convert.ToString(txtAircraft.Text));
            cmd.Parameters.AddWithValue("@TotalinService", Convert.ToString(txtTotalinService.Text));

            cmd.Parameters.AddWithValue("@Seats", Convert.ToString(txtSeats.Text));
            cmd.Parameters.AddWithValue("@Engines", Convert.ToString(txtEngines.Text));

            cmd.Parameters.AddWithValue("@CruisingSpeed", Convert.ToString(txtCruisingSpeed.Text));
            

            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Save Successfully!!";
        }
    }
}