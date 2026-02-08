<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AddTeacher.aspx.cs"
    Inherits="smart_school_management_system.AddTeacher" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Add Teacher</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
        }

        .container {
            width: 500px;
            margin: 40px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .btn {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            font-size: 15px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        .add {
            background-color: #9b59b6;
            color: white;
        }

        .back {
            background-color: #3498db;
            color: white;
        }

        .btn:hover {
            opacity: 0.9;
        }

        .msg {
            text-align: center;
            font-weight: bold;
        }
    </style>

</head>
<body>
<form id="form1" runat="server">

<div class="container">

    <h2>Add Teacher</h2>

    <!-- NAME -->
    Name:<br />
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="txtName"
        ErrorMessage="Name required"
        ForeColor="Red" />
    <asp:RegularExpressionValidator runat="server"
        ControlToValidate="txtName"
        ValidationExpression="^[A-Za-z ]+$"
        ErrorMessage="Only letters allowed"
        ForeColor="Red" />
    <br /><br />

    <!-- EMAIL -->
    Email:<br />
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="txtEmail"
        ErrorMessage="Email required"
        ForeColor="Red" />
    <br /><br />

    <!-- PHONE -->
    Phone:<br />
    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="txtPhone"
        ErrorMessage="Phone required"
        ForeColor="Red" />
    <asp:RegularExpressionValidator runat="server"
        ControlToValidate="txtPhone"
        ValidationExpression="^[0-9]{10}$"
        ErrorMessage="10 digit number only"
        ForeColor="Red" />
    <br /><br />

    <!-- SUBJECT -->
    Subject:<br />
    <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="txtSubject"
        ErrorMessage="Subject required"
        ForeColor="Red" />
    <br /><br />

    <!-- PASSWORD -->
    Password:<br />

    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="txtPassword"
        ErrorMessage="Password is required"
        ForeColor="Red" />

    <asp:RegularExpressionValidator runat="server"
        ControlToValidate="txtPassword"
        ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
        ErrorMessage="Password must be at least 8 characters and include uppercase, lowercase, number, and special character"
        ForeColor="Red" />

    <br /><br />

    <!-- BUTTONS -->
    <asp:Button ID="btnAdd" runat="server"
        Text="Add Teacher"
        CssClass="btn add"
        OnClick="btnAdd_Click" />

    <asp:Button runat="server"
        Text="Back to Dashboard"
        CssClass="btn back"
        PostBackUrl="AdminDashboard.aspx"
        CausesValidation="False" />

    <br /><br />
    <asp:Label ID="lblMsg" runat="server" ForeColor="Green" CssClass="msg"></asp:Label>

</div>

</form>
</body>
</html>
