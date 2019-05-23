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

            System.Diagnostics.Debug.WriteLine(DropDownList3.SelectedValue);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Marina(localDB)"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Lease values (@SlipID, @CustomerID)", con);

            cmd.Parameters.AddWithValue("SlipID", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("CustomerID", 4);

            cmd.ExecuteNonQuery();
        }
    }
}