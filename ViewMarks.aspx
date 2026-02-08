<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ViewMarks.aspx.cs"
    Inherits="smart_school_management_system.ViewMarks" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>View Marks</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(120deg, #e0eafc, #cfdef3);
        }

        .container {
            width: 70%;
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
            background-color: #9b59b6;
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
            background-color: #2ecc71;
            color: white;
        }

        .btn:hover {
            background-color: #27ae60;
            opacity: 0.95;
        }
    </style>

</head>
<body>
<form id="form1" runat="server">

<div class="container">

    <h2>My Marks</h2>

    <asp:GridView ID="gvMarks" runat="server"
        CssClass="grid"
        AutoGenerateColumns="False"
        BorderWidth="1">
        <Columns>
            <asp:BoundField DataField="Subject" HeaderText="Subject" />
            <asp:BoundField DataField="Marks" HeaderText="Marks" />
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
