<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Drivers.aspx.cs" Inherits="HigleySProject2.Drivers" %>

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
    <form id="form1" runat="server">
        <div>
            <h1><span class="auto-style1"><strong><em>Cool Wheels Shipping Co.&nbsp;&nbsp; </em><span class="auto-style2"><em>-</em></span></strong><span class="auto-style2"><em>Drivers</em></span></span></h1>
        </div>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1">
        </asp:Menu>
        <asp:SqlDataSource ID="NewDrivers" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT Driver.DriverID
from Driver
inner join Shipment on Shipment.DriverID = Driver.DriverID
where Driver.numTrips &lt;=0 or Driver.numTrips is NULL
group by Driver.DriverID"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <h2 class="auto-style1">New Drivers</h2>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="DriverID" DataSourceID="NewDrivers" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="DriverID" HeaderText="DriverID" ReadOnly="True" SortExpression="DriverID" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <h2 class="auto-style1">Oldest Driver</h2>
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="DriverID" DataSourceID="Driver_OldestDriver" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="DriverID" HeaderText="DriverID" ReadOnly="True" SortExpression="DriverID" />
                <asp:BoundField DataField="Oldest_Driver" HeaderText="Oldest_Driver" ReadOnly="True" SortExpression="Oldest_Driver" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="Driver_OldestDriver" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="Select Top 1 Driver.DriverID,(Driver.Fname + ' ' + Driver.Lname) as Oldest_Driver, Driver.DOB
from Driver
order by Driver.DOB ASC"></asp:SqlDataSource>
        <h2 class="auto-style1">Driver Birthdays</h2>
        <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataSourceID="Driver_BirthdayMonths" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Driver" HeaderText="Driver" ReadOnly="True" SortExpression="Driver" />
                <asp:BoundField DataField="BirthMonth" HeaderText="BirthMonth" ReadOnly="True" SortExpression="BirthMonth" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="Driver_BirthdayMonths" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="Select (Driver.Fname + ' ' + Driver.Lname) as Driver, format(Driver.DOB,'MMMM')as BirthMonth
from Driver
order by BirthMonth desc"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
