using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class AvailableSlips : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Session["CustomerID"] == null)
            {
                Response.Redirect("Register.aspx");
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Marina(localDB)"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Lease values (@SlipID, @CustomerID)", con);

            cmd.Parameters.AddWithValue("SlipID", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("CustomerID", Convert.ToInt32(Session["CustomerID"]));

            cmd.ExecuteNonQuery();
            Response.Redirect("HeldLeases.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["CustomerID"] == null)
            {
                Response.Redirect("Register.aspx");
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Marina(localDB)"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Lease values (@SlipID, @CustomerID)", con);

            cmd.Parameters.AddWithValue("SlipID", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("CustomerID", Convert.ToInt32(Session["CustomerID"]));

            cmd.ExecuteNonQuery();
            Response.Redirect("HeldLeases.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["CustomerID"] == null)
            {
                Response.Redirect("Register.aspx");
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Marina(localDB)"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Lease values (@SlipID, @CustomerID)", con);

            cmd.Parameters.AddWithValue("SlipID", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("CustomerID", Convert.ToInt32(Session["CustomerID"]));

            cmd.ExecuteNonQuery();
            Response.Redirect("HeldLeases.aspx");
        }
    }
}