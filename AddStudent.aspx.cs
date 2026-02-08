using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace smart_school_management_system
{
    public partial class AddStudent : Page
    {
        SqlConnection con = new SqlConnection(
            "Data Source=DESKTOP-0C0KBK0\\SQLEXPRESS02;" +
            "Initial Catalog=SchoolManagementDB;" +
            "Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
                Response.Redirect("AdminLogin.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            SqlCommand cmd = new SqlCommand(
                "INSERT INTO Students (Name, Email, Phone, Class, Gender, Password) " +
                "VALUES (@n,@e,@p,@c,@g,@pw)", con);

            cmd.Parameters.AddWithValue("@n", txtName.Text);
            cmd.Parameters.AddWithValue("@e", txtEmail.Text);
            cmd.Parameters.AddWithValue("@p", txtPhone.Text);
            cmd.Parameters.AddWithValue("@c", ddlClass.SelectedValue);
            cmd.Parameters.AddWithValue("@g", rblGender.SelectedValue);
            cmd.Parameters.AddWithValue("@pw", txtPassword.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblMsg.Text = "Student Added Successfully";

            ClearFields();
        }

        void ClearFields()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            ddlClass.SelectedIndex = 0;
            rblGender.ClearSelection();
            txtPassword.Text = "";
        }
    }
}
