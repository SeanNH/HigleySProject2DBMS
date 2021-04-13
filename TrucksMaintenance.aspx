<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrucksMaintenance.aspx.cs" Inherits="HigleySProject2.TrucksMaintenance" %>

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
            <h1><span class="auto-style1"><em><strong>Cool Wheels Shipping Co.&nbsp;&nbsp; </strong></em><span class="auto-style2"><strong><em>-Trucks and Maintenance</em></strong></span></span></h1>
        </div>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1">
        </asp:Menu>
        <asp:SqlDataSource ID="Trucks_Never_Used" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="select Truck.VIN, Truck.Model, Truck.Make, Truck.Year, (Truck.CurrentMiles - Truck.MilesStart) as MilesDriven
from Truck
where ((Truck.CurrentMiles - Truck.MilesStart) &lt;= 0)"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <h2 class="auto-style1">Trucks Never Used</h2>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="VIN" DataSourceID="Trucks_Never_Used">
            <AlternatingItemTemplate>
                <span style="background-color: #FFFFFF;color: #284775;">VIN:
                <asp:Label ID="VINLabel" runat="server" Text='<%# Eval("VIN") %>' />
                <br />
                Model:
                <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                <br />
                Make:
                <asp:Label ID="MakeLabel" runat="server" Text='<%# Eval("Make") %>' />
                <br />
                Year:
                <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                <br />
                MilesDriven:
                <asp:Label ID="MilesDrivenLabel" runat="server" Text='<%# Eval("MilesDriven") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #999999;">VIN:
                <asp:Label ID="VINLabel1" runat="server" Text='<%# Eval("VIN") %>' />
                <br />
                Model:
                <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                <br />
                Make:
                <asp:TextBox ID="MakeTextBox" runat="server" Text='<%# Bind("Make") %>' />
                <br />
                Year:
                <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
                <br />
                MilesDriven:
                <asp:TextBox ID="MilesDrivenTextBox" runat="server" Text='<%# Bind("MilesDriven") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">VIN:
                <asp:TextBox ID="VINTextBox" runat="server" Text='<%# Bind("VIN") %>' />
                <br />Model:
                <asp:TextBox ID="ModelTextBox" runat="server" Text='<%# Bind("Model") %>' />
                <br />Make:
                <asp:TextBox ID="MakeTextBox" runat="server" Text='<%# Bind("Make") %>' />
                <br />Year:
                <asp:TextBox ID="YearTextBox" runat="server" Text='<%# Bind("Year") %>' />
                <br />MilesDriven:
                <asp:TextBox ID="MilesDrivenTextBox" runat="server" Text='<%# Bind("MilesDriven") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #E0FFFF;color: #333333;">VIN:
                <asp:Label ID="VINLabel" runat="server" Text='<%# Eval("VIN") %>' />
                <br />
                Model:
                <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                <br />
                Make:
                <asp:Label ID="MakeLabel" runat="server" Text='<%# Eval("Make") %>' />
                <br />
                Year:
                <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                <br />
                MilesDriven:
                <asp:Label ID="MilesDrivenLabel" runat="server" Text='<%# Eval("MilesDriven") %>' />
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
                <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">VIN:
                <asp:Label ID="VINLabel" runat="server" Text='<%# Eval("VIN") %>' />
                <br />
                Model:
                <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' />
                <br />
                Make:
                <asp:Label ID="MakeLabel" runat="server" Text='<%# Eval("Make") %>' />
                <br />
                Year:
                <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                <br />
                MilesDriven:
                <asp:Label ID="MilesDrivenLabel" runat="server" Text='<%# Eval("MilesDriven") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <p>
            &nbsp;</p>
        <h2 class="auto-style1">Least Expensive Truck</h2>
        <p>
            <asp:SqlDataSource ID="LeastTruck" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="Select Truck.VIN, Truck.Make, Truck.Year, Truck.PurchasePrice
from Truck
order by PurchasePrice asc"></asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="VIN" DataSourceID="LeastTruck" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="VIN" HeaderText="VIN" ReadOnly="True" SortExpression="VIN" />
                    <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="PurchasePrice" DataFormatString="{0:c2}" HeaderText="PurchasePrice" SortExpression="PurchasePrice" />
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
        </p>
        <h2 class="auto-style1">Truck with Most Log Entries<asp:SqlDataSource ID="Truck_LogEntries" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="Select Top 1 Truck.VIN, count(TruckLog.VIN) as numLogs
from Truck
inner join TruckLog on TruckLog.VIN = Truck.VIN
group by Truck.VIN
order by numLogs desc"></asp:SqlDataSource>
        </h2>
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="VIN" DataSourceID="Truck_LogEntries">
            <AlternatingItemTemplate>
                <span style="background-color: #FFFFFF;color: #284775;">VIN:
                <asp:Label ID="VINLabel" runat="server" Text='<%# Eval("VIN") %>' />
                <br />
                numLogs:
                <asp:Label ID="numLogsLabel" runat="server" Text='<%# Eval("numLogs") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #999999;">VIN:
                <asp:Label ID="VINLabel1" runat="server" Text='<%# Eval("VIN") %>' />
                <br />
                numLogs:
                <asp:TextBox ID="numLogsTextBox" runat="server" Text='<%# Bind("numLogs") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">VIN:
                <asp:TextBox ID="VINTextBox" runat="server" Text='<%# Bind("VIN") %>' />
                <br />numLogs:
                <asp:TextBox ID="numLogsTextBox" runat="server" Text='<%# Bind("numLogs") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #E0FFFF;color: #333333;">VIN:
                <asp:Label ID="VINLabel" runat="server" Text='<%# Eval("VIN") %>' />
                <br />
                numLogs:
                <asp:Label ID="numLogsLabel" runat="server" Text='<%# Eval("numLogs") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">VIN:
                <asp:Label ID="VINLabel" runat="server" Text='<%# Eval("VIN") %>' />
                <br />
                numLogs:
                <asp:Label ID="numLogsLabel" runat="server" Text='<%# Eval("numLogs") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <h2 class="auto-style1">Truck with Most Work Done<asp:SqlDataSource ID="Truck_ExpensiveWork" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="Select Top 1 Truck.VIN, sum(TruckLog.Cost) as totalWorkSpent
from Truck
inner join TruckLog on TruckLog.VIN = Truck.VIN
group by Truck.VIN
order by totalWorkSpent desc"></asp:SqlDataSource>
        </h2>
        <asp:ListView ID="ListView3" runat="server" DataKeyNames="VIN" DataSourceID="Truck_ExpensiveWork">
            <AlternatingItemTemplate>
                <span style="background-color: #FFFFFF;color: #284775;">VIN:
                <asp:Label ID="VINLabel" runat="server" Text='<%# Eval("VIN") %>' />
                <br />
                totalWorkSpent:
                <asp:Label ID="totalWorkSpentLabel" runat="server" Text='<%# Eval("totalWorkSpent") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #999999;">VIN:
                <asp:Label ID="VINLabel1" runat="server" Text='<%# Eval("VIN") %>' />
                <br />
                totalWorkSpent:
                <asp:TextBox ID="totalWorkSpentTextBox" runat="server" Text='<%# Bind("totalWorkSpent") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">VIN:
                <asp:TextBox ID="VINTextBox" runat="server" Text='<%# Bind("VIN") %>' />
                <br />totalWorkSpent:
                <asp:TextBox ID="totalWorkSpentTextBox" runat="server" Text='<%# Bind("totalWorkSpent") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #E0FFFF;color: #333333;">VIN:
                <asp:Label ID="VINLabel" runat="server" Text='<%# Eval("VIN") %>' />
                <br />
                totalWorkSpent:
                <asp:Label ID="totalWorkSpentLabel" runat="server" Text='<%# Eval("totalWorkSpent") %>' />
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
                <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">VIN:
                <asp:Label ID="VINLabel" runat="server" Text='<%# Eval("VIN") %>' />
                <br />
                totalWorkSpent:
                <asp:Label ID="totalWorkSpentLabel" runat="server" Text='<%# Eval("totalWorkSpent") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <h2 class="auto-style1">Maintenance Done with Vendors</h2>
        <p>
            <asp:SqlDataSource ID="Truck_MaintenanceVendor" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="select TruckLog.Vendor, count(TruckLog.Date) as NumJobs
from TruckLog
group by Vendor
order by NumJobs desc"></asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Truck_MaintenanceVendor" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Vendor" HeaderText="Vendor" SortExpression="Vendor" />
                    <asp:BoundField DataField="NumJobs" HeaderText="NumJobs" ReadOnly="True" SortExpression="NumJobs" />
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
        </p>
        <h2 class="auto-style1">Maintenance/Miles</h2>
        <p>
            <asp:SqlDataSource ID="Truck_MaintenanceMiles" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT TruckLog.WorkDone, Truck.VIN, Truck.CurrentMiles FROM TruckLog INNER JOIN Truck ON Truck.VIN = TruckLog.VIN ORDER BY Truck.CurrentMiles DESC"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
