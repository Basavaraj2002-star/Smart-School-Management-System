<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="StudentDashboard.aspx.cs"
    Inherits="smart_school_management_system.StudentDashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Student Dashboard</title>

    <style>
        body {
    font-family: Arial, sans-serif;
    background-image: url('Images/SA.jpg'); /* your image file */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    min-height: 100vh;
}


        .container {
            width: 480px;
            margin: 90px auto;
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

        /* Different button colors */
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

    <h2>Student Dashboard</h2>

    <h3>
        Welcome,
        <asp:Label ID="lblStudent" runat="server" ForeColor="#2ecc71"></asp:Label>
    </h3>

    <!-- VIEW ATTENDANCE -->
    <asp:Button runat="server"
        Text="View Attendance"
        CssClass="btn attendance"
        PostBackUrl="~/ViewAttendance.aspx"
        CausesValidation="false" />

    <!-- VIEW MARKS -->
    <asp:Button runat="server"
        Text="View Marks"
        CssClass="btn marks"
        PostBackUrl="~/ViewMarks.aspx"
        CausesValidation="false" />

    <!-- VIEW EXAM TIMETABLE -->
    <asp:Button runat="server"
        Text="View Exam Timetable"
        CssClass="btn exam"
        PostBackUrl="~/ViewExamTimeTable.aspx"
        CausesValidation="false" />

    <!-- LOGOUT -->
    <asp:Button runat="server"
        Text="Logout"
        CssClass="btn logout"
        PostBackUrl="~/StudentLogin.aspx"
        CausesValidation="false" />

</div>

</form>
</body>
</html>
