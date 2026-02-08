using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace smart_school_management_system
{
    public partial class ViewExamTimeTable : Page
    {
        SqlConnection con = new SqlConnection(
            "Data Source=DESKTOP-0C0KBK0\\SQLEXPRESS02;" +
            "Initial Catalog=SchoolManagementDB;" +
            "Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            // STUDENT SESSION CHECK
            if (Session["Student"] == null)
            {
                Response.Redirect("~/StudentLogin.aspx");
            }

            if (!IsPostBack)
            {
                LoadExamTimeTable();
            }
        }

        private void LoadExamTimeTable()
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT Class, Subject, ExamDate, StartTime, EndTime FROM ExamTimeTable ORDER BY ExamDate", con);

            con.Open();
            gvExam.DataSource = cmd.ExecuteReader();
            gvExam.DataBind();
            con.Close();
        }
    }
}
