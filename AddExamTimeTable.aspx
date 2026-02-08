<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AddExamTimeTable.aspx.cs"
    Inherits="smart_school_management_system.AddExamTimeTable" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Add Exam Timetable</title>
</head>
<body>
    <style>
    body {
        font-family: 'Segoe UI', Tahoma, sans-serif;
        background: linear-gradient(135deg, #4e73df, #1cc88a);
        margin: 0;
        padding: 0;
    }

    form {
        width: 420px;
        margin: 50px auto;
        padding: 30px;
        background: #ffffff;
        border-radius: 12px;
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
        animation: fadeIn 0.6s ease-in-out;
    }

    h2 {
        text-align: center;
        color: #4e73df;
        margin-bottom: 25px;
    }

    label {
        font-weight: 600;
        color: #333;
    }

    select, input[type="date"], input[type="time"], input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border-radius: 6px;
        border: 1px solid #ccc;
        transition: 0.3s;
        font-size: 14px;
    }

    select:focus, input:focus {
        border-color: #4e73df;
        box-shadow: 0 0 5px rgba(78, 115, 223, 0.5);
        outline: none;
    }

    input[type="submit"], button, .aspNetButton, input[type="button"] {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 8px;
        background: linear-gradient(90deg, #4e73df, #36b9cc);
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type="submit"]:hover, button:hover, .aspNetButton:hover {
        transform: translateY(-2px);
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
    }

    #lblMsg {
        font-weight: bold;
        text-align: center;
        display: block;
        margin-top: 10px;
    }

    span[style*="Red"] {
        font-size: 12px;
        display: block;
        margin-top: -10px;
        margin-bottom: 10px;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(10px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>

<form id="form1" runat="server">

    <h2>Create Exam Timetable</h2>

    Class:<br />
    <asp:DropDownList ID="ddlClass" runat="server">
        <asp:ListItem Text="Select Class" Value="0" />
        <asp:ListItem>8th</asp:ListItem>
        <asp:ListItem>9th</asp:ListItem>
        <asp:ListItem>10th</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="ddlClass"
        InitialValue="0"
        ErrorMessage="Select class"
        ForeColor="Red" />
    <br /><br />

    Subject:<br />
    <asp:DropDownList ID="ddlSubject" runat="server">
        <asp:ListItem Text="Select Subject" Value="0" />
        <asp:ListItem>Maths</asp:ListItem>
        <asp:ListItem>English</asp:ListItem>
        <asp:ListItem>Science</asp:ListItem>
        <asp:ListItem>Social</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="ddlSubject"
        InitialValue="0"
        ErrorMessage="Select subject"
        ForeColor="Red" />
    <br /><br />

    Exam Date:<br />
    <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="txtDate"
        ErrorMessage="Select date"
        ForeColor="Red" />
    <br /><br />

    Start Time:<br />
    <asp:TextBox ID="txtStart" runat="server" TextMode="Time"></asp:TextBox>
    <br /><br />

    End Time:<br />
    <asp:TextBox ID="txtEnd" runat="server" TextMode="Time"></asp:TextBox>
    <br /><br />

    <asp:Button ID="btnSave" runat="server"
        Text="Save Timetable"
        OnClick="btnSave_Click" />

    <br /><br />
    <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>

    <br /><br />
    <asp:Button runat="server"
        Text="Back to Dashboard"
        PostBackUrl="~/TeacherDashboard.aspx"
        CausesValidation="false" />

</form>
</body>
</html>
