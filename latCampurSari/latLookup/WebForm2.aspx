<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="latCampurSari.latLookup.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <base target="_self" /> <!-- diperlukan jika memakai window.showModalDialog -->
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    <script type="text/javascript" language="javascript">
        function pilihData(obj, arg) {
            var objArray = obj.split(",");
            var argArray = arg.split(",");
            for (var i = 0; i < objArray.length; i++) {
                if (window.showModalDialog) {
                    window.parent.document.getElementById(objArray[i]).value = argArray[i];
                    //window.returnValue = true;
                    //self.close();
                }
                else {
                    window.opener.document.getElementById(objArray[i]).value = argArray[i];
                   // window.close();
                }
            }
            window.close();
        }
    </script>
</head>
<body>
    <form id="frmLookup" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Select Category :</td>
            </tr>
            <tr>
                <td class="style2" valign="top">
                    Category Id :
                    <asp:TextBox ID="txtCategoryIdLookup" runat="server" Width="70px"></asp:TextBox>
                &nbsp;Category Name :
                    <asp:TextBox ID="txtCategoryNameLookup" runat="server" Width="100px"></asp:TextBox>
                &nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search" 
                        onclick="btnSearch_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="Both" Width="100%" 
                        onrowdatabound="GridView1_RowDataBound">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderText="Category Id">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkBtnCategoryId" runat="server"
                                        Text='<%# Bind("CategoryId") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category Name">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkBtnCategoryName" runat="server" 
                                        Text='<%# Bind("CategoryName") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <EmptyDataTemplate>
                            Data not found
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
