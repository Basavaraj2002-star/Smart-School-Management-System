using System;
using System.Web.UI;

namespace smart_school_management_system
{
    public partial class AdminDashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // SESSION CHECK
            if (Session["Admin"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
            }

            // SHOW ADMIN NAME
            lblAdmin.Text = "Welcome " + Session["Admin"];
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
    }
}
