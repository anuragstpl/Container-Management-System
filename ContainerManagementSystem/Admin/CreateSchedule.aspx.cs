using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContainerManagementSystem.Admin
{
    public partial class CreateSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = DataConnection.OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into Schedule values(@PackageType,@Noofdays)";

            cmd.Parameters.AddWithValue("@PackageType", Convert.ToString(packagetypedrop.SelectedValue));
            cmd.Parameters.AddWithValue("@Noofdays", Convert.ToString(txtNoOfDays.Text));
           
            cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Record Save Successfully!!";
        }
    }
}