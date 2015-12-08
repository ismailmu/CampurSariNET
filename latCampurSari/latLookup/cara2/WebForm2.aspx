<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="latCampurSari.latLookup.cara2.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <base target="_self" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    <script type="text/javascript" language="javascript">
        function pilih(data1,data2) {
            var data = data1 + '#' + data2;
            window.returnValue = data;
            window.close();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td align="center">
                    Category Name :
                    <asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox>
                    &nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search" 
                        onclick="btnSearch_Click" style="height: 26px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" onrowdatabound="GridView1_RowDataBound" Width="100%">
                        <Columns>
                            <asp:TemplateField HeaderText="Category Id">
                                <ItemTemplate>
                                    <asp:HyperLink ID="hypCategoryId" runat="server" NavigateUrl="#" 
                                        Text='<%# Bind("CategoryId") %>'></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category Name">
                                <ItemTemplate>
                                    <asp:HyperLink ID="hypCategoryName" runat="server" NavigateUrl="#" 
                                        Text='<%# Bind("CategoryName") %>'></asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
