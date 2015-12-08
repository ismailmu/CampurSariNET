<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="latCampurSari.latImage.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Category Id :
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" DataSourceID="LinqDataSource1" DataTextField="CategoryName" 
            DataValueField="CategoryID" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="0">--Pilih Salah Satu--</asp:ListItem>
        </asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="latCampurSari.NorthwindModelDataContext" EntityTypeName="" 
            Select="new (CategoryID, CategoryName)" TableName="Categories">
        </asp:LinqDataSource>
    </p>
    <div id="showImage">
        <asp:Image ID="Image1" runat="server" /></div>
</asp:Content>
