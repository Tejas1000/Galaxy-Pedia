<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TEJAS_WEBSITE_DOTNET.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
        body{
          margin:0;
          padding:0;
          font-size:larger;
        }
         .button {
           text-align:center;
           
            border: 2px solid #16cfe8;
            padding: 5px;
            border-radius: 10px;
            
           
        }
        .button:hover{
            background-color:#89e5ff;
            border-color:azure;
        }
        .box{
            border: 1px solid azure;
            border-radius: 2px;
            height:20px;
            
        }
        td{
            height:50px;

        }
       
        .auto-style1 {
           
            border: 2px solid azure;
            border-radius: 10px;
            width:35%;
            margin-left:20em;
         
           
        }

    </style>
</head>
<body style="text-align:center;background-image:url('Pics/back3.jpg');background-size:cover;"">
  
    <form id="form2" runat="server">
        <div class="auto-style1">
            <table style="text-align:center;" >
                <tr>
                    <td>
                         <asp:Image ID="Image1" runat="server" Height="157px"  Width="165px" ImageUrl="~/Pics/reg.png" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="User Registration" ForeColor="White"></asp:Label>
                    </td>
          
                </tr><tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Name:" ForeColor="White"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="name" runat="server" CssClass="box" ></asp:TextBox><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="*Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td></td>
                </tr><tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Email:" ForeColor="White"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="email" runat="server" CssClass="box"></asp:TextBox><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="*Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
           </td>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Username:" ForeColor="White"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="user_name" runat="server" CssClass="box"></asp:TextBox><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="user_name" ErrorMessage="*Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
            
                    </td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Password:" ForeColor="White"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="pass" runat="server" CssClass="box" TextMode="Password"></asp:TextBox><td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pass" ErrorMessage="*Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Confirm Password:" ForeColor="White"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="confirmpass" runat="server" CssClass="box" TextMode="Password"></asp:TextBox><td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="confirmpass" ErrorMessage="*Incorrect Password Typo" ForeColor="Red"></asp:CompareValidator>
            </td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="signup" runat="server" Text="Register" BackColor="#003399" CssClass="button" ForeColor="White" OnClick="register_Click" Height="60px" Width="153px" />
                    </td>
                </tr>

            </table>
                          
        </div>
    </form>
</body>
</html>


