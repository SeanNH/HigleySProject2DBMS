<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="HigleySProject2.Customer" %>

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
            <h1><span class="auto-style1"><strong><em>Cool Wheels Shipping Co.&nbsp;&nbsp; </em><span class="auto-style2"><em>-</em></span></strong><span class="auto-style2"><em>Customers</em></span></span></h1>
        </div>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1">
        </asp:Menu>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <h2 class="auto-style1">Customer Ranking</h2>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="CustomerRanking" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="revenueEarned" DataFormatString="{0:c2}" HeaderText="Revenue" ReadOnly="True" SortExpression="revenueEarned" />
                <asp:BoundField DataField="Description" HeaderText="Customer/Company" SortExpression="Description" />
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
        <asp:SqlDataSource ID="CustomerRanking" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="Select sum(TransactionTable.TotalCost) as revenueEarned, Company.Description
from TransactionTable
inner join Shipment on Shipment.ShipmentID = TransactionTable.ShipmentID
Inner join Contact on Contact.ContactID = Shipment.ContactID
inner join Company on Company.CompanyID = Contact.CompanyID
group by Company.Description
order by revenueEarned desc "></asp:SqlDataSource>
        <h2 class="auto-style1">Most Shipping Requests</h2>
        <asp:SqlDataSource ID="MostRequests" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="Select top 1 count(Shipment.ShipmentID) as numTrips, Company.Description
from Shipment
Inner join Contact on Contact.ContactID = Shipment.ContactID
inner join Company on Company.CompanyID = Contact.CompanyID
group by Company.Description
order by numTrips desc "></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="MostRequests">
            <AlternatingItemTemplate>
                <span style="background-color: #FFFFFF;color: #284775;">numTrips:
                <asp:Label ID="numTripsLabel" runat="server" Text='<%# Eval("numTrips") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #999999;">numTrips:
                <asp:TextBox ID="numTripsTextBox" runat="server" Text='<%# Bind("numTrips") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">numTrips:
                <asp:TextBox ID="numTripsTextBox" runat="server" Text='<%# Bind("numTrips") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #E0FFFF;color: #333333;">numTrips:
                <asp:Label ID="numTripsLabel" runat="server" Text='<%# Eval("numTrips") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">numTrips:
                <asp:Label ID="numTripsLabel" runat="server" Text='<%# Eval("numTrips") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <h2 class="auto-style1">Longest Trip Request</h2>
        <asp:ListView ID="ListView2" runat="server" DataSourceID="LongestTrip">
            <AlternatingItemTemplate>
                <span style="background-color: #FFFFFF;color: #284775;">EstMiles:
                <asp:Label ID="EstMilesLabel" runat="server" Text='<%# Eval("EstMiles") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #999999;">EstMiles:
                <asp:TextBox ID="EstMilesTextBox" runat="server" Text='<%# Bind("EstMiles") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">EstMiles:
                <asp:TextBox ID="EstMilesTextBox" runat="server" Text='<%# Bind("EstMiles") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #E0FFFF;color: #333333;">EstMiles:
                <asp:Label ID="EstMilesLabel" runat="server" Text='<%# Eval("EstMiles") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">EstMiles:
                <asp:Label ID="EstMilesLabel" runat="server" Text='<%# Eval("EstMiles") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="LongestTrip" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="select top 1 Shipment.EstMiles, Company.Description
from Shipment
inner join Contact on Contact.ContactID = Shipment.ContactID
Inner join Company on Company.CompanyID = Contact.CompanyID
order by EstMiles DESC"></asp:SqlDataSource>
        <h2 class="auto-style1">Most Frequented Pickup Location</h2>
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="FrequentLocation" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#EFF3FB" />
            <ItemTemplate>
                numTrips:
                <asp:Label ID="numTripsLabel" runat="server" Text='<%# Eval("numTrips") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="FrequentLocation" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="select top 1 count(Shipment.ShipmentID) as numTrips, Company.Address
from Shipment
inner join Contact on Contact.ContactID = Shipment.ContactID
Inner join Company on Company.CompanyID = Contact.CompanyID
group by Company.Address
order by NumTrips DESC"></asp:SqlDataSource>
        <h2 class="auto-style1">Company with largest express charges:</h2>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="ExpressCharges" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="expressTotal" DataFormatString="{0:c2}" HeaderText="Sum Express Charges" ReadOnly="True" SortExpression="expressTotal" />
                <asp:BoundField DataField="Description" HeaderText="Company" SortExpression="Description" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="ExpressCharges" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="Select top 1 sum(TransactionTable.ExpressFee) as expressTotal, Company.Description
from Shipment
Inner join TransactionTable on TransactionTable.ShipmentID = Shipment.ShipmentID
Inner join Contact on Contact.ContactID = Shipment.ContactID
inner join Company on Company.CompanyID = Contact.CompanyID
group by Company.Description
order by expressTotal desc "></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
