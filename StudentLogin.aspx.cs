using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace smart_school_management_system
{
    public partial class StudentLogin : Page
    {
        SqlConnection con = new SqlConnection(
            "Data Source=DESKTOP-0C0KBK0\\SQLEXPRESS02;" +
            "Initial Catalog=SchoolManagementDB;" +
            "Integrated Security=True");

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string query = "SELECT Name FROM Students WHERE Email=@e AND Password=@p";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@e", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@p", txtPassword.Text.Trim());

            con.Open();
            object result = cmd.ExecuteScalar();
            con.Close();

            if (result != null)
            {
                // ✅ LOGIN SUCCESS
                Session["Student"] = result.ToString();
                Response.Redirect("~/StudentDashboard.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Email or Password";
            }
        }
    }
}
