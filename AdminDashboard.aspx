<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AdminDashboard.aspx.cs"
    Inherits="smart_school_management_system.AdminDashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Dashboard</title>

    <style>
       body {
    font-family: Arial, sans-serif;
    background-image: url('Images/AD.jpg'); /* your image file */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    min-height: 100vh;
}


        .container {
            width: 600px;
            margin: 60px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
            text-align: center;
        }

        h1 {
            color: #2c3e50;
        }

        h2 {
            color: #34495e;
            margin-top: 25px;
        }

        h3 {
            color: #16a085;
        }

        hr {
            margin: 20px 0;
        }

        .btn {
            width: 200px;
            padding: 10px;
            margin: 10px;
            font-size: 15px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        .student {
            background-color: #3498db;
            color: white;
        }

        .teacher {
            background-color: #9b59b6;
            color: white;
        }

        .logout {
            background-color: #e74c3c;
            color: white;
            width: 150px;
        }

        .btn:hover {
            opacity: 0.85;
        }
    </style>

</head>
<body>
<form id="form1" runat="server">

    <div class="container">

        <h1>Admin Dashboard</h1>

        <h3>
            Welcome,
            <asp:Label ID="lblAdmin" runat="server"></asp:Label>
        </h3>

        <hr />

        <!-- ================= STUDENT MANAGEMENT ================= -->
        <h2>Student Management</h2>

        <asp:Button runat="server"
            Text="Add Student"
            CssClass="btn student"
            PostBackUrl="AddStudent.aspx" />

        <asp:Button runat="server"
            Text="Show Students"
            CssClass="btn student"
            PostBackUrl="ShowStudents.aspx" />

        <!-- ================= TEACHER MANAGEMENT ================= -->
        <h2>Teacher Management</h2>

        <asp:Button runat="server"
            Text="Add Teacher"
            CssClass="btn teacher"
            PostBackUrl="AddTeacher.aspx" />

        <asp:Button runat="server"
            Text="Show Teachers"
            CssClass="btn teacher"
            PostBackUrl="ShowTeachers.aspx" />

        <hr />

        <!-- ================= LOGOUT ================= -->
        <asp:Button ID="btnLogout" runat="server"
            Text="Logout"
            CssClass="btn logout"
            OnClick="btnLogout_Click" />

    </div>

</form>
</body>
</html>
