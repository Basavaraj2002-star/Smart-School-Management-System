<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ViewExamTimeTable.aspx.cs"
    Inherits="smart_school_management_system.ViewExamTimeTable" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Exam Timetable</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
        }

        .container {
            width: 80%;
            margin: 60px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        .grid {
            margin: auto;
            width: 100%;
            border-collapse: collapse;
        }

        .grid th {
            background-color: #3498db;
            color: white;
            padding: 10px;
        }

        .grid td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        .grid tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .btn {
            margin-top: 20px;
            padding: 10px 25px;
            font-size: 15px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            background-color: #2ecc71;
            color: white;
        }

        .btn:hover {
            opacity: 0.9;
        }
    </style>

</head>
<body>
<form id="form1" runat="server">

<div class="container">

    <h2>Exam Timetable</h2>

    <asp:GridView ID="gvExam" runat="server"
        CssClass="grid"
        AutoGenerateColumns="False"
        BorderWidth="1">

        <Columns>
            <asp:BoundField DataField="Class" HeaderText="Class" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" />
            <asp:BoundField DataField="ExamDate" HeaderText="Exam Date"
                DataFormatString="{0:dd-MM-yyyy}" />
            <asp:BoundField DataField="StartTime" HeaderText="Start Time" />
            <asp:BoundField DataField="EndTime" HeaderText="End Time" />
        </Columns>
    </asp:GridView>

    <asp:Button runat="server"
        Text="Back to Dashboard"
        CssClass="btn"
        CausesValidation="false"
        PostBackUrl="~/StudentDashboard.aspx" />

</div>

</form>
</body>
</html>
