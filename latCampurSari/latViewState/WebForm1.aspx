﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="latCampurSari.latViewState.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Coba Set EnabledViewState = True (default) di comboboxnya,<br />
        pencet tombol server<br />
        dan coba set EnabledViewState = false, pencet tombol server<br />
        buktikan bedanya<br />
        <asp:DropDownList ID="DropDownList1" runat="server" EnableViewState="False">
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Server" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
