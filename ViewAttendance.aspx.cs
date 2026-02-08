using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace smart_school_management_system
{
    public partial class ViewAttendance : Page
    {
        SqlConnection con = new SqlConnection(
            "Data Source=DESKTOP-0C0KBK0\\SQLEXPRESS02;" +
            "Initial Catalog=SchoolManagementDB;" +
            "Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student"] == null)
            {
                Response.Redirect("~/StudentLogin.aspx");
            }

            if (!IsPostBack)
            {
                LoadAttendance();
            }
        }

        private void LoadAttendance()
        {
            SqlCommand cmd = new SqlCommand(
                @"SELECT Date, Status 
                  FROM Attendance 
                  WHERE StudentID = (
                        SELECT StudentID FROM Students WHERE Name=@name
                  )", con);

            cmd.Parameters.AddWithValue("@name", Session["Student"].ToString());

            con.Open();
            gvAttendance.DataSource = cmd.ExecuteReader();
            gvAttendance.DataBind();
            con.Close();
        }
    }
}
