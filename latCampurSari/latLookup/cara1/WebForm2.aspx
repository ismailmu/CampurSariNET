<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="latCampurSari.latLookup.cara1.WebForm2" %>

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
        function ok() {
            var vReturnValue = new Object();
            var grid = document.all.<%= GridView1.ClientID %>;
            var rows = grid.rows;
            for(var i = 0;i< rows.length;i++) {
                if(rows[i].cells[0].childNodes[0].checked) {
                    vReturnValue = rows[i].cells[0].childNodes[2].value;
                    break;
                }
            }
            window.returnValue = vReturnValue;
            window.close();
        }
        function batal() {
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
&nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search" onclick="btnSearch_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        AutoGenerateColumns="False" Width="100%" 
                        onrowdatabound="GridView1_RowDataBound">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <input id="rdSelect" type="radio" name="CategoryId" />
                                    <asp:HiddenField ID="hidCategoryId" runat="server" />
                                </ItemTemplate>
                                <ItemStyle Width="4%" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category Id">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CategoryId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CategoryName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <input id="btnOk" type="button" value="Ok" style="width:50px" onclick="ok()" /><input id="btnCancel" 
                        type="button" value="Cancel" style="width:50px" onclick="batal()" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
