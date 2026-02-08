using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace smart_school_management_system.Admin
{
    public partial class AdminLogin : Page
    {
        SqlConnection con = new SqlConnection(
            "Data Source=DESKTOP-0C0KBK0\\SQLEXPRESS02;" +
            "Initial Catalog=SchoolManagementDB;" +
            "Integrated Security=True");

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT COUNT(*) FROM Admins WHERE Username=@u AND Password=@p", con);

            cmd.Parameters.AddWithValue("@u", txtUsername.Text.Trim());
            cmd.Parameters.AddWithValue("@p", txtPassword.Text.Trim());

            con.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            if (count == 1)
            {
                Session["Admin"] = txtUsername.Text.Trim();

                // ✅ USE ONE OF THESE (BASED ON YOUR FILE LOCATION)

                // OPTION 1: If AdminDashboard.aspx is in ROOT
                Response.Redirect("~/AdminDashboard.aspx");

                // OPTION 2: If AdminDashboard.aspx is in Admin folder
                // Response.Redirect("~/Admin/AdminDashboard.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Username or Password";
            }
        }
    }
}
