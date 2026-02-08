<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AddStudent.aspx.cs"
    Inherits="smart_school_management_system.AddStudent" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Add Student</title>

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

        label {
            font-weight: bold;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .radio {
            margin-left: 10px;
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
            background-color: #2ecc71;
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

<h2>Add Student</h2>

<!-- ================= NAME ================= -->
Name:<br />

<asp:TextBox ID="txtName" runat="server"></asp:TextBox>

<asp:RequiredFieldValidator runat="server"
    ControlToValidate="txtName"
    ErrorMessage="Name is required"
    ForeColor="Red" />

<asp:RegularExpressionValidator runat="server"
    ControlToValidate="txtName"
    ValidationExpression="^[A-Za-z\s]+$"
    ErrorMessage="Only letters are allowed"
    ForeColor="Red" />

<br /><br />


<!-- ================= EMAIL ================= -->
Email:<br />
<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator runat="server"
    ControlToValidate="txtEmail"
    ErrorMessage="Email is required"
    ForeColor="Red" />
<asp:RegularExpressionValidator runat="server"
    ControlToValidate="txtEmail"
    ValidationExpression="\w+@\w+\.\w+"
    ErrorMessage="Invalid Email"
    ForeColor="Red" />
<br /><br />

<!-- ================= PHONE ================= -->
Phone:<br />
<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator runat="server"
    ControlToValidate="txtPhone"
    ErrorMessage="Phone is required"
    ForeColor="Red" />
<asp:RegularExpressionValidator runat="server"
    ControlToValidate="txtPhone"
    ValidationExpression="^[0-9]{10}$"
    ErrorMessage="Enter 10 digit number"
    ForeColor="Red" />
<br /><br />

<!-- ================= CLASS ================= -->
Class:<br />
<asp:DropDownList ID="ddlClass" runat="server">
    <asp:ListItem Text="Select Class" Value="" />
    <asp:ListItem>8th</asp:ListItem>
    <asp:ListItem>9th</asp:ListItem>
    <asp:ListItem>10th</asp:ListItem>
</asp:DropDownList>
<asp:RequiredFieldValidator runat="server"
    ControlToValidate="ddlClass"
    InitialValue=""
    ErrorMessage="Select class"
    ForeColor="Red" />
<br /><br />

<!-- ================= GENDER ================= -->
Gender:<br />
<asp:RadioButtonList ID="rblGender" runat="server" CssClass="radio">
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
</asp:RadioButtonList>
<asp:RequiredFieldValidator runat="server"
    ControlToValidate="rblGender"
    ErrorMessage="Select gender"
    ForeColor="Red" />
<br /><br />

<!-- ================= PASSWORD ================= -->
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


<!-- ================= BUTTONS ================= -->
<asp:Button ID="btnAdd" runat="server"
    Text="Add Student"
    CssClass="btn add"
    OnClick="btnAdd_Click" />

<asp:Button ID="btnBack" runat="server"
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
