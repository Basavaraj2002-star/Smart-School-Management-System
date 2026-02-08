<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="smart_school_management_system.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Smart School Management System</title>

    <style>
        body {
    font-family: Arial, sans-serif;
    background-image: url('Images/sc.jpg'); /* Only file path */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    min-height: 100vh;
}


   .container {
    width: 400px;
    margin: 100px auto;
    padding: 30px;
    text-align: center;
    background-color: rgba(255, 255, 255, 0.92);
    border-radius: 10px;
    box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
}


        h1 {
            color: #2c3e50;
            font-size: 24px;
        }

        h3 {
            color: #34495e;
        }

        .btn {
            width: 200px;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            margin: 10px 0;
        }

        .admin {
            background-color: #e74c3c;
            color: white;
        }

        .teacher {
            background-color: #3498db;
            color: white;
        }

        .student {
            background-color: #2ecc71;
            color: white;
        }

        .btn:hover {
            opacity: 0.85;
        }
    </style>

</head>
<body>
<form id="form1" runat="server">

    <div class="container">

        <h1>Smart School Management System</h1>
        <hr />

        <h3>Select Your Role</h3>

        <asp:Button ID="btnAdmin" runat="server"
            Text="Admin"
            CssClass="btn admin"
            PostBackUrl="AdminLogin.aspx" />

        <asp:Button ID="btnTeacher" runat="server"
            Text="Teacher"
            CssClass="btn teacher"
            PostBackUrl="TeacherLogin.aspx" />

        <asp:Button ID="btnStudent" runat="server"
            Text="Student"
            CssClass="btn student"
            PostBackUrl="StudentLogin.aspx" />

    </div>

</form>
</body>
</html>
