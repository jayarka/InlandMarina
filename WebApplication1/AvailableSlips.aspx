<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AvailableSlips.aspx.cs" Inherits="WebApplication1.AvailableSlips" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Marina(localDB) %>" SelectCommand="SELECT * FROM   Slip
WHERE  NOT EXISTS
  (SELECT *
   FROM   Lease
   WHERE  Lease.SlipID = Slip.ID)
   AND DockID = 1;"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Marina(localDB) %>" SelectCommand="SELECT * FROM   Slip
WHERE  NOT EXISTS
  (SELECT *
   FROM   Lease
   WHERE  Lease.SlipID = Slip.ID)
   AND DockID = 2;"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Marina(localDB) %>" SelectCommand="SELECT * FROM   Slip
WHERE  NOT EXISTS
  (SELECT *
   FROM   Lease
   WHERE  Lease.SlipID = Slip.ID)
   AND DockID = 3;"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
