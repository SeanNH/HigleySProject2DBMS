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
        <br />
        <br />
        <br />
        <h2 class="auto-style1">Refueling Costs</h2>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Trips_RefuelingCosts" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Vendor" HeaderText="Vendor" SortExpression="Vendor" />
                <asp:BoundField DataField="avgPrice_Per_Gallon" HeaderText="avgPrice_Per_Gallon" ReadOnly="True" SortExpression="avgPrice_Per_Gallon" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="Trips_RefuelingCosts" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="Select Refuel.Vendor, avg(Refuel.Price / Refuel.Quantity) as avgPrice_Per_Gallon
from Refuel
group by Refuel.Vendor
order by avgPrice_Per_Gallon asc"></asp:SqlDataSource>
        <h2 class="auto-style1">Lonest Point-to-Point Trip</h2>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataSourceID="Trip_LongestTrip" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ActualMiles" HeaderText="ActualMiles" SortExpression="ActualMiles" />
                <asp:BoundField DataField="PickupDate" HeaderText="PickupDate" SortExpression="PickupDate" />
                <asp:BoundField DataField="DeliverBy" HeaderText="DeliverBy" SortExpression="DeliverBy" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="Trip_LongestTrip" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="Select Shipment.ActualMiles, Shipment.PickupDate, Shipment.DeliverBy
from Shipment
order by Shipment.ActualMiles DESC"></asp:SqlDataSource>
        <h2 class="auto-style1">Driver With Longest Trip Mileage</h2>
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="Trips_LongestTripDriver" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Lname" HeaderText="Driver" SortExpression="Lname" />
                <asp:BoundField DataField="TotalMilesDriven" HeaderText="Total Miles Driven" ReadOnly="True" SortExpression="TotalMilesDriven" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="Trips_LongestTripDriver" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="Select top 1 Driver.Lname, sum(Shipment.ActualMiles) as TotalMilesDriven
from Shipment
Inner Join Driver on Driver. DriverID = Shipment.DriverID
group by Driver.Lname
order by TotalMilesDriven DESC"></asp:SqlDataSource>
        <br />
        <br />
    </form>
</body>
</html>
