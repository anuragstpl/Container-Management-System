using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContainerManagementSystem.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         //   RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = DataConnection.OpenConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into Partner values(@Password,@Email,@Address, @PhoneNo,@UserName,2)";
            cmd.Parameters.AddWithValue("@Password", Convert.ToString(txtpwd.Text));
            cmd.Parameters.AddWithValue("@Email", Convert.ToString(Email.Text));
            cmd.Parameters.AddWithValue("@Address", Convert.ToString(Address.Text));
            cmd.Parameters.AddWithValue("@PhoneNo", Convert.ToString(PhoneNo.Text));
            cmd.Parameters.AddWithValue("@UserName", Convert.ToString(UserName.Text));



            cmd.ExecuteNonQuery();

            con.Close();
        }
    }
}