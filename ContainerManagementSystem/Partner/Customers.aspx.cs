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
    public partial class Customers : System.Web.UI.Page
    {
        SqlConnection con = DataConnection.OpenConnection();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
           {
               BindGrid();
           }
        }
        protected void BindGrid()
        {
            
            cmd.Connection = con;
            string sqlq = "Select * from customer";
            SqlDataAdapter da= new SqlDataAdapter(sqlq,con);
            da.Fill(dt);
            GridView1.DataSource=dt;
            GridView1.DataBind();
            con.Close();

         
            
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {

            }
            else
                if (e.CommandName == "Delete")
                {

                }
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
         
            Label CustomerID = (Label)GridView1.Rows[e.RowIndex].FindControl("lblCustomerID");
            string CustomerId1 = CustomerID.Text.ToString();
            TextBox Password = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtPassword");
            TextBox Email = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtEmail");
            TextBox Address = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtaddress");
            TextBox PhoneNo = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtPhoneNo");
            TextBox UserName = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtName");


            SqlCommand cmd = new SqlCommand("update customer set Password=@Password,Email=@Email, Address=@Address, PhoneNo=@PhoneNo, Name=@UserName where CustomerID=@CustomerID", con);


            cmd.Parameters.AddWithValue("@CustomerID", CustomerId1);
            cmd.Parameters.AddWithValue("@Password", Convert.ToString(Password.Text));
            cmd.Parameters.AddWithValue("@Email", Convert.ToString(Email.Text));
            cmd.Parameters.AddWithValue("@Address", Convert.ToString(Address.Text));
            cmd.Parameters.AddWithValue("@PhoneNo", Convert.ToString(PhoneNo.Text));
            cmd.Parameters.AddWithValue("@UserName", Convert.ToString(UserName.Text));

           // con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            BindGrid();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label CustomerID = (Label)row.FindControl("txtCustomerID");
          //  string CustomerID1 = CustomerID.Text.ToString();

            SqlCommand cmd = new SqlCommand("delete from customer where CustomerID=@CustomerID", con);
            cmd.Parameters.AddWithValue("@CustomerID", CustomerID.Text);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            if (result == 1)
            {
                BindGrid();
              
            }
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //string stor_id = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "stor_id"));
                //Button lnkbtnresult = (Button)e.Row.FindControl("ButtonDelete");
                //if (lnkbtnresult != null)
                //{
                //    lnkbtnresult.Attributes.Add("onclick", "javascript:return deleteConfirm('" + stor_id + "')");
                //}
            }
        }
    }
}