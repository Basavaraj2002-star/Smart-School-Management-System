using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace smart_school_management_system
{
    public partial class ShowStudents : Page
    {
        SqlConnection con = new SqlConnection(
            "Data Source=DESKTOP-0C0KBK0\\SQLEXPRESS02;" +
            "Initial Catalog=SchoolManagementDB;" +
            "Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
                Response.Redirect("AdminLogin.aspx");

            if (!IsPostBack)
                LoadStudents();
        }

        void LoadStudents()
        {
            SqlCommand cmd = new SqlCommand(
                "SELECT StudentID, Name, Email, Phone, Class, Gender FROM Students", con);

            con.Open();
            gvStudents.DataSource = cmd.ExecuteReader();
            gvStudents.DataBind();
            con.Close();
        }

        protected void gvStudents_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvStudents.EditIndex = e.NewEditIndex;
            LoadStudents();
        }

        protected void gvStudents_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvStudents.EditIndex = -1;
            LoadStudents();
        }

        protected void gvStudents_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(gvStudents.DataKeys[e.RowIndex].Value);

            GridViewRow row = gvStudents.Rows[e.RowIndex];

            string name = ((TextBox)row.FindControl("txtName")).Text;
            string email = ((TextBox)row.FindControl("txtEmail")).Text;
            string phone = ((TextBox)row.FindControl("txtPhone")).Text;
            string clas = ((TextBox)row.FindControl("txtClass")).Text;
            string gender = ((TextBox)row.FindControl("txtGender")).Text;

            SqlCommand cmd = new SqlCommand(
                "UPDATE Students SET Name=@n, Email=@e, Phone=@p, Class=@c, Gender=@g WHERE StudentID=@id", con);

            cmd.Parameters.AddWithValue("@n", name);
            cmd.Parameters.AddWithValue("@e", email);
            cmd.Parameters.AddWithValue("@p", phone);
            cmd.Parameters.AddWithValue("@c", clas);
            cmd.Parameters.AddWithValue("@g", gender);
            cmd.Parameters.AddWithValue("@id", id);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            gvStudents.EditIndex = -1;
            lblMsg.Text = "Student Updated Successfully";
            LoadStudents();
        }

        protected void gvStudents_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvStudents.DataKeys[e.RowIndex].Value);

            SqlCommand cmd = new SqlCommand(
                "DELETE FROM Students WHERE StudentID=@id", con);

            cmd.Parameters.AddWithValue("@id", id);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblMsg.Text = "Student Deleted Successfully";
            LoadStudents();
        }
    }
}
