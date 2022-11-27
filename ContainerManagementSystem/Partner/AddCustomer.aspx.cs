using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContainerManagementSystem.Partner
{
    public partial class AddCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = DataConnection.OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into customer values(@Password,@Email,@Address, @PhoneNo,@UserName,3,0)";
            cmd.Parameters.AddWithValue("@Password", Convert.ToString(txtpwd.Text));
            cmd.Parameters.AddWithValue("@Email", Convert.ToString(Email.Text));
            cmd.Parameters.AddWithValue("@Address", Convert.ToString(Address.Text));
            cmd.Parameters.AddWithValue("@PhoneNo", Convert.ToString(PhoneNo.Text));
            cmd.Parameters.AddWithValue("@UserName", Convert.ToString(UserName.Text));          
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Customer Added successfully.');</script>");
            
            con.Close();
        }
    }
}