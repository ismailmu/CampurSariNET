<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="WebForm1.aspx.cs" Inherits="latCampurSari.latLookup.cara1.WebForm1" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
<script type="text/javascript" language="javascript">
    function tampil() {
        var vResult = showModalDialog('WebForm2.aspx', 'lookup', 'dialogHeight:400px;dialogWidth:600px');
        var splitData = vResult.split('#');
        document.getElementById('MainContent_txtCategoryId').value = splitData[0];
        document.getElementById('MainContent_txtCategoryName').value = splitData[1];

        return false;
    }
</script>
    <asp:TextBox ID="txtCategoryId" runat="server"></asp:TextBox>
    <input id="btnBrowse" type="button" value="..." onclick="return tampil()" /><asp:TextBox ID="txtCategoryName" 
        runat="server"></asp:TextBox>
</asp:Content>
