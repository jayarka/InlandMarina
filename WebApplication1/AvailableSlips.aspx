<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AvailableSlips.aspx.cs" Inherits="WebApplication1.AvailableSlips" %>

<asp:content id="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <div class="row justify-content-center">
            
            <div class="card mr-5" style="width: 18rem;">
  <h5 class="card-header text-center">Dock A</h5>
                <img src="images/marina.jpg" class="card-img-top" alt="..." />
  <div class="card-body">
    <p class="card-text">Slips on Dock A have access to Water and Electrical Services.</p>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Marina(localDB) %>" SelectCommand="SELECT ID, Width, Length, DockID, 'Slip ' + str(ID) + ' (' + str(Width) + ' x' + str(Length) + ' )' as 'ListText' 
FROM Slip WHERE DockID = 1 AND NOT EXISTS(SELECT 'x' FROM Lease WHERE Lease.SlipID = Slip.ID)"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ListText" DataValueField="ID">
            </asp:DropDownList><asp:Button ID="Button1" runat="server" Text="Purchase Lease" />
  </div>
</div>
            
            <div class="card mr-5" style="width: 18rem;">
  <h5 class="card-header text-center">Dock B</h5>
                <img src="images/marina.jpg" class="card-img-top" alt="..." />
  <div class="card-body">
    <p class="card-text">Slips on Dock B have access to Water Services.</p>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Marina(localDB) %>" SelectCommand="SELECT ID, Width, Length, DockID, 'Slip ' + str(ID) + ' (' + str(Width) + ' x' + str(Length) + ' )' as 'ListText' 
FROM Slip WHERE DockID = 2 AND NOT EXISTS(SELECT 'x' FROM Lease WHERE Lease.SlipID = Slip.ID)"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="ListText" DataValueField="ID">
            </asp:DropDownList><asp:Button ID="Button2" runat="server" Text="Purchase Lease" />
  </div>
</div>

            <div class="card mr-5" style="width: 18rem;">
  <h5 class="card-header text-center">Dock C</h5>
                <img src="images/marina.jpg" class="card-img-top" alt="..." />
  <div class="card-body">
    <p class="card-text">Slips on Dock C have access to Electrical Services.</p>
      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Marina(localDB) %>" SelectCommand="SELECT ID, Width, Length, DockID, 'Slip ' + str(ID) + ' (' + str(Width) + ' x' + str(Length) + ' )' as 'ListText' 
FROM Slip WHERE DockID = 3 AND NOT EXISTS(SELECT 'x' FROM Lease WHERE Lease.SlipID = Slip.ID)"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="ListText" DataValueField="ID" >
        </asp:DropDownList><asp:Button ID="Button3" runat="server" Text="Purchase Lease" OnClick="Button3_Click" />
  </div>
</div>

            
            
        </div>
        
</asp:content>

    