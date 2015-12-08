<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" EnableEventValidation="false" CodeBehind="WebForm1.aspx.cs" Inherits="latCampurSari.latLookup.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" language="javascript">
        function tampil(id) {
            var vReturnValue;
            if (window.showModalDialog) {
                window.showModalDialog("WebForm2.aspx?div=txtCategoryId,txtCategoryName", "lookup", "dialogWidth:600px;dialogHeight:400px");
            } else {
                window.open("WebForm2.aspx?div=MainContent_txtCategoryId,MainContent_txtCategoryName", "lookup", "height=400,width=600,toolbar=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,modal=yes");
            }
            //if (vReturnValue != null && vReturnValue == true) {
            //    __doPostBack(id, '');
            //    return vReturnValue;
            //} else
               return false;
        }
        function setReadOnly() {
            document.getElementById("MainContent_txtCategoryId").readonly = true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Category Id :
        <asp:TextBox ID="txtCategoryId" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnBrowseCategory" runat="server" Text="..." />
&nbsp;<asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnSearchCategory" runat="server" Text="Search" 
            onclick="btnSearchCategory_Click" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            GridLines="Horizontal" AllowPaging="True" 
            onpageindexchanging="GridView1_PageIndexChanging">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EmptyDataTemplate>
                Data not found
            </EmptyDataTemplate>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    </p>
</asp:Content>
