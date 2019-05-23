<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AvailableSlips.aspx.cs" Inherits="WebApplication1.AvailableSlips" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Marina(localDB) %>" SelectCommand="SELECT ID, Width, Length, DockID, 'Slip ' + str(ID) + ' (' + str(Width) + ' x' + str(Length) + ' )' as 'ListText' 
FROM Slip WHERE DockID = 1 AND NOT EXISTS(SELECT 'x' FROM Lease WHERE Lease.SlipID = Slip.ID)"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ListText" DataValueField="ID">
            </asp:DropDownList><asp:Button ID="Button1" runat="server" Text="Purchase Lease" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Marina(localDB) %>" SelectCommand="SELECT ID, Width, Length, DockID, 'Slip ' + str(ID) + ' (' + str(Width) + ' x' + str(Length) + ' )' as 'ListText' 
FROM Slip WHERE DockID = 2 AND NOT EXISTS(SELECT 'x' FROM Lease WHERE Lease.SlipID = Slip.ID)"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="ListText" DataValueField="ID">
            </asp:DropDownList><asp:Button ID="Button2" runat="server" Text="Purchase Lease" />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Marina(localDB) %>" SelectCommand="SELECT ID, Width, Length, DockID, 'Slip ' + str(ID) + ' (' + str(Width) + ' x' + str(Length) + ' )' as 'ListText' 
FROM Slip WHERE DockID = 3 AND NOT EXISTS(SELECT 'x' FROM Lease WHERE Lease.SlipID = Slip.ID)"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="ListText" DataValueField="ID">
        </asp:DropDownList><asp:Button ID="Button3" runat="server" Text="Purchase Lease" />
        </div>
        
    </form>
</body>
</html>
