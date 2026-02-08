using System;
using System.Web.UI;

namespace smart_school_management_system
{
    public partial class TeacherDashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // ✅ SESSION CHECK (FINAL)
            if (Session["Teacher"] == null)
            {
                Response.Redirect("~/TeacherLogin.aspx");
            }


            if (!IsPostBack)
            {
                lblTeacher.Text = Session["Teacher"].ToString();
            }
        }
    }
}
