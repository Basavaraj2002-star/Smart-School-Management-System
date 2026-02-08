using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace smart_school_management_system
{
    public partial class AddTeacher : Page
    {
        SqlConnection con = new SqlConnection(
            "Data Source=DESKTOP-0C0KBK0\\SQLEXPRESS02;" +
            "Initial Catalog=SchoolManagementDB;" +
            "Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            SqlCommand cmd = new SqlCommand(
                "INSERT INTO Teachers (Name, Email, Phone, Subject, Password) VALUES (@n,@e,@p,@s,@pw)", con);

            cmd.Parameters.AddWithValue("@n", txtName.Text.Trim());
            cmd.Parameters.AddWithValue("@e", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@p", txtPhone.Text.Trim());
            cmd.Parameters.AddWithValue("@s", txtSubject.Text.Trim());
            cmd.Parameters.AddWithValue("@pw", txtPassword.Text.Trim());

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblMsg.Text = "Teacher added successfully";

            // clear fields
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtSubject.Text = "";
            txtPassword.Text = "";
        }
    }
}
