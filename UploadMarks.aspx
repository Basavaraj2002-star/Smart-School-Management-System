<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="UploadMarks.aspx.cs"
    Inherits="smart_school_management_system.UploadMarks" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Marks</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
        }

        .container {
            width: 450px;
            margin: 60px auto;
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
            margin-top: 12px;
            font-size: 15px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        .save {
            background-color: #27ae60;
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

    <h2>Upload Student Marks</h2>

    <!-- STUDENT -->
    Student:<br />
    <asp:DropDownList ID="ddlStudent" runat="server"></asp:DropDownList>
    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="ddlStudent"
        InitialValue="0"
        ErrorMessage="Select student"
        ForeColor="Red" />
    <br /><br />

    <!-- SUBJECT -->
    Subject:<br />
    <asp:DropDownList ID="ddlSubject" runat="server">
        <asp:ListItem Text="Select Subject" Value="0"></asp:ListItem>
        <asp:ListItem>Maths</asp:ListItem>
        <asp:ListItem>English</asp:ListItem>
        <asp:ListItem>Science</asp:ListItem>
        <asp:ListItem>Social</asp:ListItem>
        <asp:ListItem>Computer</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="ddlSubject"
        InitialValue="0"
        ErrorMessage="Select subject"
        ForeColor="Red" />
    <br /><br />

    <!-- MARKS -->
    Marks:<br />
    <asp:TextBox ID="txtMarks" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="txtMarks"
        ErrorMessage="Enter marks"
        ForeColor="Red" />
    <asp:RangeValidator runat="server"
        ControlToValidate="txtMarks"
        MinimumValue="0"
        MaximumValue="100"
        Type="Integer"
        ErrorMessage="Marks must be between 0 and 100"
        ForeColor="Red" />
    <br /><br />

    <!-- UPLOAD -->
    <asp:Button ID="btnSave" runat="server"
        Text="Upload Marks"
        CssClass="btn save"
        OnClick="btnSave_Click" />

    <!-- MESSAGE -->
    <asp:Label ID="lblMsg" runat="server"
        ForeColor="Green"
        CssClass="msg"></asp:Label>

    <!-- BACK BUTTON -->
    <asp:Button ID="btnBack" runat="server"
        Text="Back to Dashboard"
        CssClass="btn back"
        CausesValidation="false"
        OnClick="btnBack_Click" />

</div>

</form>
</body>
</html>
