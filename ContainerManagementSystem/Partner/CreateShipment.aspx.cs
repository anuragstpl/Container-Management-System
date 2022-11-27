using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace ContainerManagementSystem.Partner
{
    public partial class CreateShipment : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            // SqlConnection con = DataConnection.OpenConnection();
            //  SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into shipment values(@PackageType,@Price, @Weight,@Description,@Custmid);SELECT SCOPE_IDENTITY();";

            cmd.Parameters.AddWithValue("@PackageType", Convert.ToString(packagetypedrop.SelectedValue));
            cmd.Parameters.AddWithValue("@Price", Convert.ToString(Price.Text));
            cmd.Parameters.AddWithValue("@Weight", Convert.ToString(Weight.Text));
            cmd.Parameters.AddWithValue("@Description", Convert.ToString(Description.Text));
            cmd.Parameters.AddWithValue("@Custmid", Convert.ToInt16(ddlcustomer.SelectedValue));
            Int32 newId = (Int32)cmd.ExecuteScalar();
            con.Close();
            Response.Write("<script>alert('Shipment id has been generated. Your id is " + newId.ToString() + "');</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sqlq = "select noofdays from schedule where PackageType='" + packagetypedrop.SelectedItem.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sqlq, con);
            da.Fill(dt);

            lblmsg1.Text = dt.Rows[0]["noofdays"].ToString();



        }
    }
}