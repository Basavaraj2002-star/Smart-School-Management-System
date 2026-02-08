<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ShowTeachers.aspx.cs"
    Inherits="smart_school_management_system.Admin.ShowTeachers" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Teachers</title>

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background: linear-gradient(135deg, #fdfbfb, #ebedee);
        }

        .container {
            width: 90%;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 10px 25px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        .grid {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .grid th {
            background-color: #9b59b6;
            color: white;
            padding: 12px;
            text-align: center;
        }

        .grid td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }

        .grid tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .grid input[type="text"] {
            width: 95%;
            padding: 5px;
        }

        .btn {
            margin-top: 20px;
            padding: 10px 25px;
            font-size: 15px;
            border-radius: 6px;
            border: none;
            cursor: pointer;
            background-color: #3498db;
            color: white;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: #2980b9;
            transform: translateY(-2px);
        }

        .msg {
            margin-top: 15px;
            font-weight: bold;
        }
    </style>

</head>
<body>
<form id="form1" runat="server">

<div class="container">

    <h2>Teacher List</h2>

    <asp:GridView ID="gvTeachers" runat="server"
        CssClass="grid"
        AutoGenerateColumns="False"
        DataKeyNames="TeacherID"
        OnRowEditing="gvTeachers_RowEditing"
        OnRowCancelingEdit="gvTeachers_RowCancelingEdit"
        OnRowUpdating="gvTeachers_RowUpdating"
        OnRowDeleting="gvTeachers_RowDeleting">

        <Columns>

            <asp:CommandField
                ShowEditButton="True"
                ShowDeleteButton="True"
                ButtonType="Button" />

            <asp:BoundField DataField="TeacherID"
                HeaderText="ID"
                ReadOnly="True" />

            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" />

        </Columns>
    </asp:GridView>

    <asp:Label ID="lblMsg" runat="server"
        ForeColor="Green"
        CssClass="msg"></asp:Label>

    <!-- BACK BUTTON -->
    <asp:Button ID="btnBack"
        runat="server"
        Text="Back to Dashboard"
        CssClass="btn"
        OnClick="btnBack_Click" />

</div>

</form>
</body>
</html>
