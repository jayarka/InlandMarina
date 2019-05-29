using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Marina(localDB)"].ConnectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Customer values (@FirstName, @LastName, @PhoneNumber, @City, @Email, @Password)", con);

            cmd.Parameters.AddWithValue("FirstName", TextBox1.Text);
            cmd.Parameters.AddWithValue("LastName", TextBox2.Text);
            cmd.Parameters.AddWithValue("PhoneNumber", TextBox3.Text);
            cmd.Parameters.AddWithValue("City", TextBox4.Text);
            cmd.Parameters.AddWithValue("Email", TextBox5.Text);
            cmd.Parameters.AddWithValue("Password", Encryption.Encrypt(TextBox6.Text));

            cmd.ExecuteNonQuery();

            Label1.Visible = true;
            Label1.Text = "User registered successfully";



            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox1.Focus();
        }
    }
}