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
    public partial class Master : System.Web.UI.MasterPage
    {   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustomerID"] == null)
            {
                leaseLink.Visible = false;
                loginDiv.Visible = true;
            }
            else
            {
                leaseLink.Visible = true;
                loginDiv.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Marina(localDB)"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("select * from Customer where email = @Email", con);

            cmd.Parameters.AddWithValue("Email", txtLoginEmail.Text);
            SqlDataReader dataReader = cmd.ExecuteReader();
           
            if (dataReader.HasRows)
            {
                while (dataReader.Read())
                {
                    if (Encryption.Decrypt(dataReader["Password"].ToString()) == txtLoginPassword.Text)
                    {
                        Session["CustomerID"] = dataReader["ID"];

                    }
                }
            }
            else
            {
                //no record found
                if (Session["CustomerID"] == null)
                {
                    Response.Redirect("Register.aspx");
                }
            }
            
        }
    }
}