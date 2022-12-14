using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ContainerManagementSystem.Admin
{
    public partial class TrackShipMent : System.Web.UI.Page
    {
        SqlConnection con = DataConnection.OpenConnection();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindddl();
                BindGrid1();
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
        protected void BindGrid()
        {

            cmd.Connection = con;
            string sqlq = "Select * from Shipment where Custmid="+ddlcustomer.SelectedValue+"";
            SqlDataAdapter da = new SqlDataAdapter(sqlq, con);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();



        }

        protected void BindGrid1()
        {

            cmd.Connection = con;
            string sqlq = "Select * from Shipment";
            SqlDataAdapter da = new SqlDataAdapter(sqlq, con);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();



        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //if (e.CommandName == "Edit")
            //{

            //}
            //else
            //    if (e.CommandName == "Delete")
            //    {

            //    }
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //GridView1.EditIndex = e.NewEditIndex;
            //BindGrid();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            //Label ShipmentID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblShipmentID");
            //string ShipmentID1 = ShipmentID.Text.ToString();
            //DropDownList PackageType = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("packagetypedrop");
            //TextBox Price = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtPrice");
            //TextBox Weight = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtWeight");
            //TextBox Description = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtDescription");


            //SqlCommand cmd = new SqlCommand("update shipment set PackageType=@PackageType, Price=@Price, Weight=@Weight, Description=@Description where ShipmentID=@ShipmentID", con);


            //cmd.Parameters.AddWithValue("@ShipmentID", ShipmentID1);
            //cmd.Parameters.AddWithValue("@PackageType", PackageType.SelectedValue.ToString());
            //cmd.Parameters.AddWithValue("@Price", Convert.ToString(Price.Text));
            //cmd.Parameters.AddWithValue("@Weight", Convert.ToString(Weight.Text));
            //cmd.Parameters.AddWithValue("@Description", Convert.ToString(Description.Text));

            //// con.Open();
            //cmd.ExecuteNonQuery();
            //con.Close();

            //GridView1.EditIndex = -1;
            //BindGrid();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //GridView1.EditIndex = -1;
            //BindGrid();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            //Label ShipmentID = (Label)row.FindControl("txtShipmentID");
            ////  string CustomerID1 = CustomerID.Text.ToString();

            //SqlCommand cmd = new SqlCommand("delete from shipment where ShipmentID=@ShipmentID", con);
            //cmd.Parameters.AddWithValue("@ShipmentID", ShipmentID.Text);
            //int result = cmd.ExecuteNonQuery();
            //con.Close();
            //if (result == 1)
            //{
            //    BindGrid();

            //}
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            //    if ((e.Row.RowState & DataControlRowState.Edit) > 0)
            //    {
            //        //DropDownList ddList = (DropDownList)e.Row.FindControl("packagetypedrop");

            //        //ViewState["packagetypedrop"] = ddList.SelectedValue.ToString();

            //    }
            //}
        }

        protected void ddlcustomer_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindGrid();
        }
    }
}