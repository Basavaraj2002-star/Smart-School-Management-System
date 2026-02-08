using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace smart_school_management_system
{
    public partial class AddExamTimeTable : Page
    {
        SqlConnection con = new SqlConnection(
            "Data Source=DESKTOP-0C0KBK0\\SQLEXPRESS02;" +
            "Initial Catalog=SchoolManagementDB;" +
            "Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Teacher"] == null)
            {
                Response.Redirect("~/TeacherLogin.aspx");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(
                "INSERT INTO ExamTimeTable (Class, Subject, ExamDate, StartTime, EndTime) VALUES (@c,@s,@d,@st,@et)", con);

            cmd.Parameters.AddWithValue("@c", ddlClass.SelectedValue);
            cmd.Parameters.AddWithValue("@s", ddlSubject.SelectedValue);
            cmd.Parameters.AddWithValue("@d", txtDate.Text);
            cmd.Parameters.AddWithValue("@st", txtStart.Text);
            cmd.Parameters.AddWithValue("@et", txtEnd.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblMsg.Text = "Exam timetable added successfully ✔";

            ddlClass.SelectedIndex = 0;
            ddlSubject.SelectedIndex = 0;
            txtDate.Text = "";
            txtStart.Text = "";
            txtEnd.Text = "";
        }
    }
}
