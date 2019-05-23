<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        height: 36px;
    }
    .auto-style3 {
        height: 35px;
    }
        .auto-style4 {
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="auto-style3">
        <h2 class="auto-style2">Registration Form</h2>
         </div>
      <table class="auto-style1">

                <td class="auto-style2">

                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>

                    </td>

                    <td class="auto-style5">

                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                    </td>

                    <td>&nbsp;</td>

                </tr>

                <tr>

                    <td class="auto-style4">

                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>

                    </td>

                    <td class="auto-style4">

                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                    </td>

                    <td class="auto-style4"></td>

                </tr>

                <tr>

                    <td class="auto-style2">

                        <asp:Label ID="Label3" runat="server" Text="PhoneNumber"></asp:Label>

                    </td>

                    <td class="auto-style5">

                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                    </td>

                    <td>&nbsp;</td>

                </tr>

                <tr>

                    <td class="auto-style2">

                        <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>

                    </td>

                    <td class="auto-style5">

                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                    </td>

                    <td>&nbsp;</td>

                </tr>

                <tr>

                    <td class="auto-style2">

                        <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label>

                    </td>

                    <td class="auto-style5">

                        <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>

                    </td>

                    <td>&nbsp;</td>

                </tr>

                <tr>

                    <td class="auto-style2">

                        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>

                    </td>

                    <td class="auto-style5">

                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>

                    </td>

                    <td>&nbsp;</td>

                </tr>

                <tr>

                    <td class="auto-style2">&nbsp;</td>

                    <td class="auto-style5">&nbsp;</td>

                    <td>&nbsp;</td>

                </tr>

                <tr>

                    <td class="auto-style2">&nbsp;</td>

                    <td class="auto-style5">

                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />

                    </td>

                    <td>&nbsp;</td>

                </tr>

                <tr>

                    <td class="auto-style2">&nbsp;</td>

                    <td class="auto-style5">&nbsp;</td>

                    <td>&nbsp;</td>

                </tr>

            </table>
    
</asp:Content>
