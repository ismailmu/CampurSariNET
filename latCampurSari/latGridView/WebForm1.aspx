<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="latCampurSari.latGridView.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                ReadOnly="True" SortExpression="ProductName" />
            <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" ReadOnly="True" 
                SortExpression="SupplierID" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" 
                SortExpression="CategoryID" />
            <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" 
                ReadOnly="True" SortExpression="QuantityPerUnit" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" ReadOnly="True" 
                SortExpression="UnitPrice" />
            <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" 
                ReadOnly="True" SortExpression="UnitsInStock" />
            <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" 
                ReadOnly="True" SortExpression="UnitsOnOrder" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="latCampurSari.NorthwindModelDataContext" EntityTypeName="" 
        Select="new (ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder)" 
        TableName="Products">
    </asp:LinqDataSource>
</asp:Content>
