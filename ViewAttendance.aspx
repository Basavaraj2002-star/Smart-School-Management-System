<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ViewAttendance.aspx.cs"
    Inherits="smart_school_management_system.ViewAttendance" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>View Attendance</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(120deg, #e0eafc, #cfdef3);
        }

        .container {
            width: 75%;
            margin: 70px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        .grid {
            width: 100%;
            margin: auto;
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
            border-radius: 6px;
            border: none;
            cursor: pointer;
            background-color: #e67e22;
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

    <h2>My Attendance</h2>

    <asp:GridView ID="gvAttendance" runat="server"
        CssClass="grid"
        AutoGenerateColumns="False"
        BorderWidth="1">
        <Columns>
            <asp:BoundField DataField="Date"
                HeaderText="Date"
                DataFormatString="{0:dd-MM-yyyy}" />
            <asp:BoundField DataField="Status"
                HeaderText="Status" />
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
