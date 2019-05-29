using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class HeldLeases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustomerID"] == null)
            {
                Response.Redirect("Register.aspx");
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Marina(localDB)"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("select ID as 'LeaseID', SlipID  from lease where CustomerID = @CustomerID", con);
            cmd.Parameters.AddWithValue("CustomerID", Session["CustomerID"]);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                gvLeases.DataSource = reader;
                gvLeases.DataBind();
            }

        }

    }
}