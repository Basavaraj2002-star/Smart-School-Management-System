using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace smart_school_management_system
{
    public partial class Attendance : Page
    {
        SqlConnection con = new SqlConnection(
            "Data Source=DESKTOP-0C0KBK0\\SQLEXPRESS02;" +
            "Initial Catalog=SchoolManagementDB;" +
            "Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            // ✅ SESSION CHECK
            if (Session["Teacher"] == null)
            {
                Response.Redirect("~/TeacherLogin.aspx");
            }

            if (!IsPostBack)
            {
                LoadStudents();
                txtDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
        }

        private void LoadStudents()
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT StudentID, Name FROM Students", con);

            con.Open();
            ddlStudent.DataSource = cmd.ExecuteReader();
            ddlStudent.DataTextField = "Name";
            ddlStudent.DataValueField = "StudentID";
            ddlStudent.DataBind();
            con.Close();

            ddlStudent.Items.Insert(0, new ListItem("Select Student", "0"));
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(
                "INSERT INTO Attendance (StudentID, Date, Status) VALUES (@sid,@date,@status)", con);

            cmd.Parameters.AddWithValue("@sid", ddlStudent.SelectedValue);
            cmd.Parameters.AddWithValue("@date", txtDate.Text);
            cmd.Parameters.AddWithValue("@status", rblStatus.SelectedValue);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblMsg.Text = "Attendance saved successfully ✔";

            ddlStudent.SelectedIndex = 0;
            rblStatus.ClearSelection();
        }
        // ✅ ADDED BACK BUTTON FIX
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TeacherDashboard.aspx");
        }

    }
}
