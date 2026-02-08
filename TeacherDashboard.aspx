<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="TeacherDashboard.aspx.cs"
    Inherits="smart_school_management_system.TeacherDashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Teacher Dashboard</title>

    <style>
        body {
    font-family: Arial, sans-serif;
    background-image: url('Images/TD.jpg'); /* your image file */
    background-size: cover;        /* fills full screen */
    background-position: center;   /* centers image */
    background-repeat: no-repeat;  /* no repeat */
    min-height: 100vh;
}


        .container {
            width: 500px;
            margin: 80px auto;
            background-color: #ffffff;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 10px;
        }

        h3 {
            color: #16a085;
            margin-bottom: 25px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            margin-top: 14px;
            font-size: 15px;
            border-radius: 6px;
            border: none;
            cursor: pointer;
            color: white;
            transition: transform 0.2s, opacity 0.2s;
        }

        .btn:hover {
            opacity: 0.9;
            transform: scale(1.02);
        }

        /* Button colors */
        .attendance {
            background-color: #3498db; /* Blue */
        }

        .marks {
            background-color: #9b59b6; /* Purple */
        }

        .exam {
            background-color: #27ae60; /* Green */
        }

        .logout {
            background-color: #e74c3c; /* Red */
        }
    </style>

</head>
<body>
<form id="form1" runat="server">

<div class="container">

    <h2>Teacher Dashboard</h2>

    <h3>
        Welcome,
        <asp:Label ID="lblTeacher" runat="server" ForeColor="#2ecc71"></asp:Label>
    </h3>

    <!-- ATTENDANCE -->
    <asp:Button runat="server"
        Text="Mark Attendance"
        CssClass="btn attendance"
        PostBackUrl="~/Attendance.aspx" />

    <!-- UPLOAD MARKS -->
    <asp:Button runat="server"
        Text="Upload Marks"
        CssClass="btn marks"
        PostBackUrl="~/UploadMarks.aspx" />

    <!-- CREATE EXAM TIMETABLE -->
    <asp:Button runat="server"
        Text="Create Exam Timetable"
        CssClass="btn exam"
        PostBackUrl="~/AddExamTimeTable.aspx" />

    <!-- LOGOUT -->
    <asp:Button runat="server"
        Text="Logout"
        CssClass="btn logout"
        PostBackUrl="~/TeacherLogin.aspx" />

</div>

</form>
</body>
</html>
