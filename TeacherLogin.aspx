<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="TeacherLogin.aspx.cs"
    Inherits="smart_school_management_system.TeacherLogin" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Teacher Login</title>

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #ACB6E5);
            height: 100vh;
        }

        .container {
            width: 380px;
            margin: 130px auto;
            background: rgba(255, 255, 255, 0.95);
            padding: 35px 30px;
            border-radius: 14px;
            box-shadow: 0px 10px 30px rgba(0,0,0,0.25);
            border-left: 8px solid #3498db; /* Teacher accent */
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
            letter-spacing: 1px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        input:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 5px rgba(52, 152, 219, 0.5);
        }

        .btn {
            width: 100%;
            padding: 12px;
            margin-top: 18px;
            font-size: 16px;
            border-radius: 6px;
            border: none;
            cursor: pointer;
            background: linear-gradient(135deg, #3498db, #2980b9);
            color: white;
            font-weight: bold;
            letter-spacing: 0.5px;
            transition: all 0.3s ease;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(0,0,0,0.25);
        }

        .msg {
            margin-top: 15px;
            font-weight: bold;
            text-align: center;
        }
    </style>

</head>
<body>
<form id="form1" runat="server">

<div class="container">

    <h2>TEACHER LOGIN</h2>

    Email:<br />
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="txtEmail"
        ErrorMessage="Email required"
        ForeColor="Red" />
    <br /><br />

    Password:<br />
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server"
        ControlToValidate="txtPassword"
        ErrorMessage="Password required"
        ForeColor="Red" />
    <br /><br />

    <asp:Button ID="btnLogin" runat="server"
        Text="LOGIN"
        CssClass="btn"
        OnClick="btnLogin_Click" />

    <asp:Label ID="lblMsg" runat="server"
        ForeColor="Red"
        CssClass="msg"></asp:Label>

</div>

</form>
</body>
</html>
