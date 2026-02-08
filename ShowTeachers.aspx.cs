using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace smart_school_management_system.Admin
{
    public partial class ShowTeachers : Page
    {
        SqlConnection con = new SqlConnection(
            "Data Source=DESKTOP-0C0KBK0\\SQLEXPRESS02;" +
            "Initial Catalog=SchoolManagementDB;" +
            "Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            // Admin session check
            if (Session["Admin"] == null)
            {
                Response.Redirect("~/AdminLogin.aspx");
            }

            if (!IsPostBack)
            {
                LoadTeachers();
            }
        }

        private void LoadTeachers()
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT TeacherID, Name, Email, Phone, Subject FROM Teachers", con);

            con.Open();
            gvTeachers.DataSource = cmd.ExecuteReader();
            gvTeachers.DataBind();
            con.Close();
        }

        protected void gvTeachers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvTeachers.EditIndex = e.NewEditIndex;
            LoadTeachers();
        }

        protected void gvTeachers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvTeachers.EditIndex = -1;
            LoadTeachers();
        }

        protected void gvTeachers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(gvTeachers.DataKeys[e.RowIndex].Value);

            GridViewRow row = gvTeachers.Rows[e.RowIndex];

            string name = ((TextBox)row.Cells[2].Controls[0]).Text;
            string email = ((TextBox)row.Cells[3].Controls[0]).Text;
            string phone = ((TextBox)row.Cells[4].Controls[0]).Text;
            string subject = ((TextBox)row.Cells[5].Controls[0]).Text;

            SqlCommand cmd = new SqlCommand(
                "UPDATE Teachers SET Name=@n, Email=@e, Phone=@p, Subject=@s WHERE TeacherID=@id", con);

            cmd.Parameters.AddWithValue("@n", name);
            cmd.Parameters.AddWithValue("@e", email);
            cmd.Parameters.AddWithValue("@p", phone);
            cmd.Parameters.AddWithValue("@s", subject);
            cmd.Parameters.AddWithValue("@id", id);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            gvTeachers.EditIndex = -1;
            lblMsg.Text = "Teacher updated successfully";
            LoadTeachers();
        }

        protected void gvTeachers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvTeachers.DataKeys[e.RowIndex].Value);

            SqlCommand cmd = new SqlCommand(
                "DELETE FROM Teachers WHERE TeacherID=@id", con);

            cmd.Parameters.AddWithValue("@id", id);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblMsg.Text = "Teacher deleted successfully";
            LoadTeachers();
        }

        // ✅ FINAL FIX — DASHBOARD REDIRECT
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminDashboard.aspx");
        }
    }
}
