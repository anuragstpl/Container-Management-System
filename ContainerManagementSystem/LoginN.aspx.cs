using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContainerManagementSystem
{
    public partial class LoginN : System.Web.UI.Page
    {
        //SqlConnection con = DataConnection.OpenConnection();
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            cmd.Connection = con;
            string sqlq = "Select * from customer where name='" + txtUserName.Text + "' and Password='" + txtPwd.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sqlq, con);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                if (Convert.ToInt16(dt.Rows[0]["RoleId"]) == 3)
                {
                    Session["UserName"] = dt.Rows[0]["Name"].ToString();
                    Session["Custmid"] = dt.Rows[0]["CustomerID"].ToString();
                    Response.Redirect("~\\Customer\\Default.aspx");
                }
            }

            string sqlqP = "Select * from Partner where name='" + txtUserName.Text + "' and Password='" + txtPwd.Text + "'";
            SqlDataAdapter dap = new SqlDataAdapter(sqlqP, con);
            dap.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                if (Convert.ToInt16(dt.Rows[0]["RoleId"]) == 2)
                {
                    Session["UserName"] = dt.Rows[0]["Name"].ToString();
                    Response.Redirect("~\\Partner\\Default.aspx");
                }
            }

            if (txtUserName.Text == "Admin" && txtPwd.Text == "123456")
            {
                Session["UserName"] = "Admin";
                Response.Redirect("~\\Admin\\Default.aspx");
            }

            con.Close();
        }
    }
}