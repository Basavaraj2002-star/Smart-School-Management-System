<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Attendance.aspx.cs"
    Inherits="smart_school_management_system.Attendance" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Attendance</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #4e73df, #1cc88a);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            background: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            width: 400px;
        }

        h2 {
            text-align: center;
            color: #4e73df;
            margin-bottom: 25px;
        }

        label {
            font-weight: 600;
        }

        input[type="date"],
        select,
        .aspNetTextBox {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        .aspNetRadioList {
            margin-top: 5px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background: #4e73df;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #2e59d9;
        }

        .back-btn {
            margin-top: 10px;
            background: #858796;
        }

        .back-btn:hover {
            background: #60616f;
        }

        .message {
            text-align: center;
            font-weight: bold;
            margin-top: 10px;
        }

        .form-group {
            margin-bottom: 15px;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="card">

        <h2>Mark Attendance</h2>

        <div class="form-group">
            Date:<br />
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="aspNetTextBox"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server"
                ControlToValidate="txtDate"
                ErrorMessage="Date required"
                ForeColor="Red" />
        </div>

        <div class="form-group">
            Student:<br />
            <asp:DropDownList ID="ddlStudent" runat="server" CssClass="aspNetTextBox"></asp:DropDownList>
            <asp:RequiredFieldValidator runat="server"
                ControlToValidate="ddlStudent"
                InitialValue="0"
                ErrorMessage="Select student"
                ForeColor="Red" />
        </div>

        <div class="form-group">
            Status:<br />
            <asp:RadioButtonList ID="rblStatus" runat="server" CssClass="aspNetRadioList">
                <asp:ListItem Text="Present" Value="Present" />
                <asp:ListItem Text="Absent" Value="Absent" />
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator runat="server"
                ControlToValidate="rblStatus"
                ErrorMessage="Select status"
                ForeColor="Red" />
        </div>

        <asp:Button ID="btnSave" runat="server"
            Text="Save Attendance"
            CssClass="btn"
            OnClick="btnSave_Click" />

        <br /><br />

        <asp:Label ID="lblMsg" runat="server" CssClass="message" ForeColor="Green"></asp:Label>

        <br /><br />

        <asp:Button ID="btnBack" runat="server"
    Text="Back to Dashboard"
    CssClass="btn back-btn"
    PostBackUrl="~/TeacherDashboard.aspx"
    OnClick="btnBack_Click"
    CausesValidation="false" />

    </div>
</form>
</body>
</html>
