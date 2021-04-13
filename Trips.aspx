<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trips.aspx.cs" Inherits="HigleySProject2.Trips" %>

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
            font-weight: normal;
            color: #666666;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><em><strong><span class="auto-style1">Cool Wheels Shipping Co.&nbsp;&nbsp; </span></strong></em><span class="auto-style2"><strong><em>-Trips</em></strong></span></h1>
        </div>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1">
        </asp:Menu>
    </form>
</body>
</html>
