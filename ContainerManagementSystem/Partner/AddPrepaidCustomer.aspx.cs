using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContainerManagementSystem.Partner
{
    public partial class AddPrepaidCustomer : System.Web.UI.Page
    {
        SqlConnection con = DataConnection.OpenConnection();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindddl();
            }

        }

        private void bindddl()
        {
            // cmd.Connection = con;
            string sqlq = "select * from customer";
            SqlDataAdapter da = new SqlDataAdapter(sqlq, con);
            da.Fill(dt);

            ddlcustomer.DataSource = dt;
            //  ddlcustomer.DataBind();
            ddlcustomer.DataTextField = "Name";
            ddlcustomer.DataValueField = "CustomerID";
            ddlcustomer.DataBind();
            ddlcustomer.Items.Insert(0, new ListItem("--Select Customer--", "0"));
        }

        protected void btnAddPrepaid_Click(object sender, EventArgs e)
        {
            cmd.Connection = con;
            cmd.CommandText = "update customer set Balance=" + txtamount.Text + " where CustomerID=" + ddlcustomer.SelectedValue ;
            Int32 newId = cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Prepaid amount added to customer.');</script>");
        }
    }
}