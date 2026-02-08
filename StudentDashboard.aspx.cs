using System;
using System.Web.UI;

namespace smart_school_management_system
{
    public partial class StudentDashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student"] == null)
            {
                Response.Redirect("~/StudentLogin.aspx");
            }

            if (!IsPostBack)
            {
                lblStudent.Text = Session["Student"].ToString();
            }
        }
    }
}
