using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace smart_school_management_system
{
    public partial class ViewMarks : Page
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
                LoadMarks();
            }
        }

        private void LoadMarks()
        {
            SqlCommand cmd = new SqlCommand(
                @"SELECT Subject, Marks 
                  FROM Marks 
                  WHERE StudentID = (
                        SELECT StudentID FROM Students WHERE Name=@name
                  )", con);

            cmd.Parameters.AddWithValue("@name", Session["Student"].ToString());

            con.Open();
            gvMarks.DataSource = cmd.ExecuteReader();
            gvMarks.DataBind();
            con.Close();
        }
    }
}
