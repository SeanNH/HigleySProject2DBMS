<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HigleySProject2.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #ABD3F2;
        }
        .auto-style2 {
            background-color: #ABD3F2;
            color: #666666;
        }
    </style>
</head>
<body>
    <h1><strong><em><span class="auto-style1">Cool Wheels Shipping Co.&nbsp;&nbsp;&nbsp; <span class="auto-style2">-Home</span></span></em></strong></h1>
    <form id="form1" runat="server">
        <p>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </p>
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1">
        </asp:Menu>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <div>
        </div>
    </form>
</body>
</html>
