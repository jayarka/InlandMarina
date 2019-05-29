<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="HeldLeases.aspx.cs" Inherits="WebApplication1.HeldLeases" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div>
            <asp:GridView ID="gvLeases" runat="server">
            </asp:GridView>
        </div>
    </asp:Content>