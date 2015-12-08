<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="latCampurSari.latWebControl.WebUserControl1" %>
<div style="text-align:right"><asp:DropDownList ID="cboFields" runat="server">
    <asp:ListItem Value="ProductName">Product Name</asp:ListItem>
    <asp:ListItem Value="UnitPrice">Unit Price</asp:ListItem>
    </asp:DropDownList>&nbsp;<asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    &nbsp;<asp:Button ID="btnSearch" runat="server" Text="Cari" Width="50px" 
        onclick="btnSearch_Click" />
</div>

