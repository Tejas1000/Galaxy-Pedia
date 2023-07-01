<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TEJAS_WEBSITE_DOTNET.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    
        .auto-style1 {
          padding:20px;
            width: 1000px;
            height: 76px;
            align-content:center;
            

        }
        .auto-style3 {
            height: 80px;
            margin-left: 30px;
            padding: 3px;
            width: 1328px;
        }
        td{
            text-align:center;
        }
        .auto-style4 {
            width: 1328px;
          border-color:azure;
            margin:5px;
        }

      
        .tab{
            border:2px solid #e8eefb;
            width:10em;
            height:10em;
            margin-left:60%;
            margin-top:2em;
            border-radius:10px;
        }
        .auto-style5:hover {
            background-color:cornflowerblue;
            border-color:darkblue;
        }
    </style>
</head>
<body style="background-image:url('Pics/back1.jpg');background-size:cover;">
    <form id="form1" runat="server">
        <div>
            <table class="tab">
                <tr>
                    <td class="auto-style1">
                       <asp:Image ID="Image1" runat="server" Height="162px" Width="188px" ImageUrl="Pics/profile-user.png" />
                    
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">

                        <asp:Label ID="Label1" runat="server" Text="Username:" Font-Size="X-Large" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="255px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">

                        <asp:Label ID="Label2" runat="server" Text="Password:" Font-Size="X-Large" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="255px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">

                       

                        <asp:Button ID="Button1" runat="server" Height="50px" Text="Login" Width="136px" class="auto-style5" OnClick="Button1_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
