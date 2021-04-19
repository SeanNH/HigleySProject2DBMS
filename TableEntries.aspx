<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TableEntries.aspx.cs" Inherits="HigleySProject2.TableEntries" %>

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
        .auto-style3 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><span class="auto-style1"><strong><em>Cool Wheels Shipping Co.&nbsp;&nbsp; </em><span class="auto-style2"><em>-</em></span></strong><span class="auto-style2">Data Entry</span></span></h1>
        </div>
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1">
        </asp:Menu>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <p>
            <asp:SqlDataSource ID="CompanySource" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT * FROM [Company]" DeleteCommand="DELETE FROM [Company] WHERE [CompanyID] = @CompanyID" InsertCommand="INSERT INTO [Company] ([CompanyID], [Address], [Description], [CityID], [ZipCode]) VALUES (@CompanyID, @Address, @Description, @CityID, @ZipCode)" UpdateCommand="UPDATE [Company] SET [Address] = @Address, [Description] = @Description, [CityID] = @CityID, [ZipCode] = @ZipCode WHERE [CompanyID] = @CompanyID">
                <DeleteParameters>
                    <asp:Parameter Name="CompanyID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CompanyID" Type="Int32" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="CityID" Type="Int32" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="CityID" Type="Int32" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="CompanyID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CompanyID" DataSourceID="CompanySource" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" ReadOnly="True" SortExpression="CompanyID" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="CityID" HeaderText="CityID" SortExpression="CityID" />
                    <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
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
        <table class="auto-style3">
            <tr>
                <td>Company</td>
                <td>Company ID</td>
                <td>Address</td>
                <td>Description</td>
                <td>CityID</td>
                <td>Zipcode</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="company_insert" runat="server" Text="Insert" OnClick="company_insert_Click" />
                </td>
                <td>
                    <asp:TextBox ID="company_companyid" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="company_address" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="company_description" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="company_cityid" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="company_zipcode" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Label ID="company_error" runat="server" ForeColor="Red" Text="Failed to send" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <p>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ContactID" DataSourceID="Contact_source" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ContactID" HeaderText="ContactID" ReadOnly="True" SortExpression="ContactID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="CompanyID" HeaderText="CompanyID" SortExpression="CompanyID" />
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
            <asp:SqlDataSource ID="Contact_source" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT * FROM [Contact]" DeleteCommand="DELETE FROM [Contact] WHERE [ContactID] = @ContactID" InsertCommand="INSERT INTO [Contact] ([ContactID], [FirstName], [LastName], [Phone], [Email], [CompanyID]) VALUES (@ContactID, @FirstName, @LastName, @Phone, @Email, @CompanyID)" UpdateCommand="UPDATE [Contact] SET [FirstName] = @FirstName, [LastName] = @LastName, [Phone] = @Phone, [Email] = @Email, [CompanyID] = @CompanyID WHERE [ContactID] = @ContactID">
                <DeleteParameters>
                    <asp:Parameter Name="ContactID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ContactID" Type="Int32" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="CompanyID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="CompanyID" Type="Int32" />
                    <asp:Parameter Name="ContactID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <table class="auto-style3">
            <tr>
                <td>Contact</td>
                <td>ContactID</td>
                <td>First Name</td>
                <td>Last Name</td>
                <td>Phone</td>
                <td>Email</td>
                <td>Company ID</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="contact_insert" runat="server" Text="Insert" OnClick="contact_insert_Click" />
                </td>
                <td>
                    <asp:TextBox ID="contact_contactID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="contact_firstname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="contact_lastname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="contact_phone" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="conact_email" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="contact_companyID" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Label ID="contact_error" runat="server" ForeColor="Red" Text="Failed to send" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="DriverID" DataSourceID="driver_source" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="DriverID" HeaderText="DriverID" ReadOnly="True" SortExpression="DriverID" />
                    <asp:BoundField DataField="Preferences" HeaderText="Preferences" SortExpression="Preferences" />
                    <asp:BoundField DataField="LicenseNum" HeaderText="LicenseNum" SortExpression="LicenseNum" />
                    <asp:BoundField DataField="TrainingCategory" HeaderText="TrainingCategory" SortExpression="TrainingCategory" />
                    <asp:BoundField DataField="LicenseExp" HeaderText="LicenseExp" SortExpression="LicenseExp" />
                    <asp:BoundField DataField="CityID" HeaderText="CityID" SortExpression="CityID" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                    <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                    <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
                    <asp:BoundField DataField="numTrips" HeaderText="numTrips" SortExpression="numTrips" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
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
            <asp:SqlDataSource ID="driver_source" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT * FROM [Driver]" DeleteCommand="DELETE FROM [Driver] WHERE [DriverID] = @DriverID" InsertCommand="INSERT INTO [Driver] ([DriverID], [Preferences], [LicenseNum], [TrainingCategory], [LicenseExp], [CityID], [Address], [Fname], [Lname], [Phone], [Salary], [Zipcode], [numTrips], [DOB]) VALUES (@DriverID, @Preferences, @LicenseNum, @TrainingCategory, @LicenseExp, @CityID, @Address, @Fname, @Lname, @Phone, @Salary, @Zipcode, @numTrips, @DOB)" UpdateCommand="UPDATE [Driver] SET [Preferences] = @Preferences, [LicenseNum] = @LicenseNum, [TrainingCategory] = @TrainingCategory, [LicenseExp] = @LicenseExp, [CityID] = @CityID, [Address] = @Address, [Fname] = @Fname, [Lname] = @Lname, [Phone] = @Phone, [Salary] = @Salary, [Zipcode] = @Zipcode, [numTrips] = @numTrips, [DOB] = @DOB WHERE [DriverID] = @DriverID">
                <DeleteParameters>
                    <asp:Parameter Name="DriverID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DriverID" Type="String" />
                    <asp:Parameter Name="Preferences" Type="String" />
                    <asp:Parameter Name="LicenseNum" Type="String" />
                    <asp:Parameter Name="TrainingCategory" Type="String" />
                    <asp:Parameter DbType="Date" Name="LicenseExp" />
                    <asp:Parameter Name="CityID" Type="Int32" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Fname" Type="String" />
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="Phone" Type="Int32" />
                    <asp:Parameter Name="Salary" Type="Decimal" />
                    <asp:Parameter Name="Zipcode" Type="String" />
                    <asp:Parameter Name="numTrips" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Preferences" Type="String" />
                    <asp:Parameter Name="LicenseNum" Type="String" />
                    <asp:Parameter Name="TrainingCategory" Type="String" />
                    <asp:Parameter DbType="Date" Name="LicenseExp" />
                    <asp:Parameter Name="CityID" Type="Int32" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Fname" Type="String" />
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="Phone" Type="Int32" />
                    <asp:Parameter Name="Salary" Type="Decimal" />
                    <asp:Parameter Name="Zipcode" Type="String" />
                    <asp:Parameter Name="numTrips" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                    <asp:Parameter Name="DriverID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <table class="auto-style3">
            <tr>
                <td>Driver</td>
                <td>Driver ID</td>
                <td>Preferences</td>
                <td>License Number</td>
                <td>License Exp</td>
                <td>Training</td>
                <td>CityID</td>
                <td>Address</td>
                <td>First Name</td>
                <td>Last Name</td>
                <td>Phone</td>
                <td>Salary</td>
                <td>Zipcode</td>
                <td>numTrips</td>
                <td>DOB</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="driver_insert" runat="server" Text="Insert" OnClick="driver_insert_Click" />
                </td>
                <td>
                    <asp:TextBox ID="driver_driverid" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_preferences" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_license_number" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_license_exp" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_training" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_cityid" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_address" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_fname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_lname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_phone" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_salary" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_zipcode" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_numtrips" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="driver_dob" runat="server" OnTextChanged="TextBox14_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            <asp:Label ID="driver_error" runat="server" ForeColor="Red" Text="Failed to send" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RefuelID" DataSourceID="refuel_source" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="RefuelID" HeaderText="RefuelID" ReadOnly="True" SortExpression="RefuelID" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="CityID" HeaderText="CityID" SortExpression="CityID" />
                    <asp:BoundField DataField="Vendor" HeaderText="Vendor" SortExpression="Vendor" />
                    <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
                    <asp:BoundField DataField="TruckVIN" HeaderText="TruckVIN" SortExpression="TruckVIN" />
                    <asp:BoundField DataField="DriverID" HeaderText="DriverID" SortExpression="DriverID" />
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
            <asp:SqlDataSource ID="refuel_source" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT * FROM [Refuel]" DeleteCommand="DELETE FROM [Refuel] WHERE [RefuelID] = @RefuelID" InsertCommand="INSERT INTO [Refuel] ([RefuelID], [Date], [Quantity], [Price], [CityID], [Vendor], [Comments], [TruckVIN], [DriverID]) VALUES (@RefuelID, @Date, @Quantity, @Price, @CityID, @Vendor, @Comments, @TruckVIN, @DriverID)" UpdateCommand="UPDATE [Refuel] SET [Date] = @Date, [Quantity] = @Quantity, [Price] = @Price, [CityID] = @CityID, [Vendor] = @Vendor, [Comments] = @Comments, [TruckVIN] = @TruckVIN, [DriverID] = @DriverID WHERE [RefuelID] = @RefuelID">
                <DeleteParameters>
                    <asp:Parameter Name="RefuelID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="RefuelID" Type="Int32" />
                    <asp:Parameter Name="Date" Type="DateTime" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="CityID" Type="Int32" />
                    <asp:Parameter Name="Vendor" Type="String" />
                    <asp:Parameter Name="Comments" Type="String" />
                    <asp:Parameter Name="TruckVIN" Type="String" />
                    <asp:Parameter Name="DriverID" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Date" Type="DateTime" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="CityID" Type="Int32" />
                    <asp:Parameter Name="Vendor" Type="String" />
                    <asp:Parameter Name="Comments" Type="String" />
                    <asp:Parameter Name="TruckVIN" Type="String" />
                    <asp:Parameter Name="DriverID" Type="String" />
                    <asp:Parameter Name="RefuelID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <table class="auto-style3">
            <tr>
                <td>Refuel</td>
                <td>Refuel ID</td>
                <td>Date</td>
                <td>Quantity (Gallons)</td>
                <td>Price</td>
                <td>CityID</td>
                <td>Vendor</td>
                <td>Comments</td>
                <td>Truck VIN</td>
                <td>Driver ID</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="refuel_insert" runat="server" Text="Insert" OnClick="refuel_insert_Click" />
                </td>
                <td>
                    <asp:TextBox ID="refuel_refuelID" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="refuel_date" runat="server" Height="38px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="refuel_quantity" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="refuel_price" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="refuel_cityID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="refuel_vendor" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="refuel_comments" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="refuel_truckVIN" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="refuel_driverID" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Label ID="refuel_error" runat="server" ForeColor="Red" Text="Failed to send" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ShipmentID" DataSourceID="shipment_cource" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ShipmentID" HeaderText="ShipmentID" ReadOnly="True" SortExpression="ShipmentID" />
                    <asp:BoundField DataField="ContactID" HeaderText="ContactID" SortExpression="ContactID" />
                    <asp:BoundField DataField="WarehouseID" HeaderText="WarehouseID" SortExpression="WarehouseID" />
                    <asp:BoundField DataField="TruckVIN" HeaderText="TruckVIN" SortExpression="TruckVIN" />
                    <asp:BoundField DataField="DeliverBy" HeaderText="DeliverBy" SortExpression="DeliverBy" />
                    <asp:BoundField DataField="Contents" HeaderText="Contents" SortExpression="Contents" />
                    <asp:BoundField DataField="PickupDate" HeaderText="PickupDate" SortExpression="PickupDate" />
                    <asp:BoundField DataField="EstWeight" HeaderText="EstWeight" SortExpression="EstWeight" />
                    <asp:BoundField DataField="EstMiles" HeaderText="EstMiles" SortExpression="EstMiles" />
                    <asp:BoundField DataField="ActualWeight" HeaderText="ActualWeight" SortExpression="ActualWeight" />
                    <asp:BoundField DataField="ActualMiles" HeaderText="ActualMiles" SortExpression="ActualMiles" />
                    <asp:BoundField DataField="DriverComments" HeaderText="DriverComments" SortExpression="DriverComments" />
                    <asp:BoundField DataField="CustComments" HeaderText="CustComments" SortExpression="CustComments" />
                    <asp:BoundField DataField="DriverID" HeaderText="DriverID" SortExpression="DriverID" />
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
            <asp:SqlDataSource ID="shipment_cource" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT * FROM [Shipment]" DeleteCommand="DELETE FROM [Shipment] WHERE [ShipmentID] = @ShipmentID" InsertCommand="INSERT INTO [Shipment] ([ShipmentID], [ContactID], [WarehouseID], [TruckVIN], [DeliverBy], [Contents], [PickupDate], [EstWeight], [EstMiles], [ActualWeight], [ActualMiles], [DriverComments], [CustComments], [DriverID]) VALUES (@ShipmentID, @ContactID, @WarehouseID, @TruckVIN, @DeliverBy, @Contents, @PickupDate, @EstWeight, @EstMiles, @ActualWeight, @ActualMiles, @DriverComments, @CustComments, @DriverID)" UpdateCommand="UPDATE [Shipment] SET [ContactID] = @ContactID, [WarehouseID] = @WarehouseID, [TruckVIN] = @TruckVIN, [DeliverBy] = @DeliverBy, [Contents] = @Contents, [PickupDate] = @PickupDate, [EstWeight] = @EstWeight, [EstMiles] = @EstMiles, [ActualWeight] = @ActualWeight, [ActualMiles] = @ActualMiles, [DriverComments] = @DriverComments, [CustComments] = @CustComments, [DriverID] = @DriverID WHERE [ShipmentID] = @ShipmentID">
                <DeleteParameters>
                    <asp:Parameter Name="ShipmentID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ShipmentID" Type="Int32" />
                    <asp:Parameter Name="ContactID" Type="Int32" />
                    <asp:Parameter Name="WarehouseID" Type="Int32" />
                    <asp:Parameter Name="TruckVIN" Type="String" />
                    <asp:Parameter DbType="Date" Name="DeliverBy" />
                    <asp:Parameter Name="Contents" Type="String" />
                    <asp:Parameter DbType="Date" Name="PickupDate" />
                    <asp:Parameter Name="EstWeight" Type="Double" />
                    <asp:Parameter Name="EstMiles" Type="Double" />
                    <asp:Parameter Name="ActualWeight" Type="Double" />
                    <asp:Parameter Name="ActualMiles" Type="Double" />
                    <asp:Parameter Name="DriverComments" Type="String" />
                    <asp:Parameter Name="CustComments" Type="String" />
                    <asp:Parameter Name="DriverID" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ContactID" Type="Int32" />
                    <asp:Parameter Name="WarehouseID" Type="Int32" />
                    <asp:Parameter Name="TruckVIN" Type="String" />
                    <asp:Parameter DbType="Date" Name="DeliverBy" />
                    <asp:Parameter Name="Contents" Type="String" />
                    <asp:Parameter DbType="Date" Name="PickupDate" />
                    <asp:Parameter Name="EstWeight" Type="Double" />
                    <asp:Parameter Name="EstMiles" Type="Double" />
                    <asp:Parameter Name="ActualWeight" Type="Double" />
                    <asp:Parameter Name="ActualMiles" Type="Double" />
                    <asp:Parameter Name="DriverComments" Type="String" />
                    <asp:Parameter Name="CustComments" Type="String" />
                    <asp:Parameter Name="DriverID" Type="String" />
                    <asp:Parameter Name="ShipmentID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <table class="auto-style3">
            <tr>
                <td>Shipment</td>
                <td>Shipment ID</td>
                <td>Contact ID</td>
                <td>Warehouse ID</td>
                <td>Truck VIN</td>
                <td>Deliver By</td>
                <td>Contents</td>
                <td>Pickup Date</td>
                <td>Est. Weight</td>
                <td>Est. Miles</td>
                <td>Actual Weight</td>
                <td>Actual Miles</td>
                <td>Driver Comments</td>
                <td>Customer Comments</td>
                <td>Driver ID</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="shipment_insert" runat="server" Text="Insert" OnClick="shipment_insert_Click" />
                </td>
                <td>
                    <asp:TextBox ID="shipment_shipmentID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_contactID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_warehouseID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_truckVIN" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_deliverby" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_contents" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_pickupdate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_estweight" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_estmiles" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_actweight" runat="server" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_actmiles" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_drivercomm" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_custcomm" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="shipment_driverID" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Label ID="shipment_error" runat="server" ForeColor="Red" Text="Failed to send" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView6" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TransactionID" DataSourceID="Transaction_source" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="TransactionID" HeaderText="TransactionID" ReadOnly="True" SortExpression="TransactionID" />
                    <asp:BoundField DataField="ShipmentID" HeaderText="ShipmentID" SortExpression="ShipmentID" />
                    <asp:BoundField DataField="BaseFee" HeaderText="BaseFee" SortExpression="BaseFee" />
                    <asp:BoundField DataField="MileageFee" HeaderText="MileageFee" SortExpression="MileageFee" />
                    <asp:BoundField DataField="ExpressFee" HeaderText="ExpressFee" SortExpression="ExpressFee" />
                    <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" SortExpression="TotalCost" />
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
            <asp:SqlDataSource ID="Transaction_source" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT * FROM [TransactionTable]" DeleteCommand="DELETE FROM [TransactionTable] WHERE [TransactionID] = @TransactionID" InsertCommand="INSERT INTO [TransactionTable] ([TransactionID], [ShipmentID], [BaseFee], [MileageFee], [ExpressFee], [TotalCost]) VALUES (@TransactionID, @ShipmentID, @BaseFee, @MileageFee, @ExpressFee, @TotalCost)" UpdateCommand="UPDATE [TransactionTable] SET [ShipmentID] = @ShipmentID, [BaseFee] = @BaseFee, [MileageFee] = @MileageFee, [ExpressFee] = @ExpressFee, [TotalCost] = @TotalCost WHERE [TransactionID] = @TransactionID">
                <DeleteParameters>
                    <asp:Parameter Name="TransactionID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TransactionID" Type="Int32" />
                    <asp:Parameter Name="ShipmentID" Type="Int32" />
                    <asp:Parameter Name="BaseFee" Type="Decimal" />
                    <asp:Parameter Name="MileageFee" Type="Decimal" />
                    <asp:Parameter Name="ExpressFee" Type="Decimal" />
                    <asp:Parameter Name="TotalCost" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ShipmentID" Type="Int32" />
                    <asp:Parameter Name="BaseFee" Type="Decimal" />
                    <asp:Parameter Name="MileageFee" Type="Decimal" />
                    <asp:Parameter Name="ExpressFee" Type="Decimal" />
                    <asp:Parameter Name="TotalCost" Type="Decimal" />
                    <asp:Parameter Name="TransactionID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <table class="auto-style3">
            <tr>
                <td>Transaction</td>
                <td>Transaction ID</td>
                <td>Shipment ID</td>
                <td>Base Fee</td>
                <td>Mileage Fee</td>
                <td>Express Fee</td>
                <td>Total Cost</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="transaction_insert" runat="server" Text="Insert" OnClick="transaction_insert_Click" />
                </td>
                <td>
                    <asp:TextBox ID="transaction_transactionID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="transaction_shipmentID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="transaction_baseFee" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="transaction_mileagefee" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="transaction_expressfee" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="transaction_totalcost" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Label ID="transaction_error" runat="server" ForeColor="Red" Text="Failed to send" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView7" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="VIN" DataSourceID="truck_source" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="VIN" HeaderText="VIN" ReadOnly="True" SortExpression="VIN" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="Engine" HeaderText="Engine" SortExpression="Engine" />
                    <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                    <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                    <asp:BoundField DataField="DateAcq" HeaderText="DateAcq" SortExpression="DateAcq" />
                    <asp:BoundField DataField="PurchasePrice" HeaderText="PurchasePrice" SortExpression="PurchasePrice" />
                    <asp:BoundField DataField="MilesStart" HeaderText="MilesStart" SortExpression="MilesStart" />
                    <asp:BoundField DataField="CurrentMiles" HeaderText="CurrentMiles" SortExpression="CurrentMiles" />
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
            <asp:SqlDataSource ID="truck_source" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT * FROM [Truck]" DeleteCommand="DELETE FROM [Truck] WHERE [VIN] = @VIN" InsertCommand="INSERT INTO [Truck] ([VIN], [Year], [Make], [Model], [Engine], [Color], [Size], [DateAcq], [PurchasePrice], [MilesStart], [CurrentMiles]) VALUES (@VIN, @Year, @Make, @Model, @Engine, @Color, @Size, @DateAcq, @PurchasePrice, @MilesStart, @CurrentMiles)" UpdateCommand="UPDATE [Truck] SET [Year] = @Year, [Make] = @Make, [Model] = @Model, [Engine] = @Engine, [Color] = @Color, [Size] = @Size, [DateAcq] = @DateAcq, [PurchasePrice] = @PurchasePrice, [MilesStart] = @MilesStart, [CurrentMiles] = @CurrentMiles WHERE [VIN] = @VIN">
                <DeleteParameters>
                    <asp:Parameter Name="VIN" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="VIN" Type="String" />
                    <asp:Parameter DbType="Date" Name="Year" />
                    <asp:Parameter Name="Make" Type="String" />
                    <asp:Parameter Name="Model" Type="String" />
                    <asp:Parameter Name="Engine" Type="String" />
                    <asp:Parameter Name="Color" Type="String" />
                    <asp:Parameter Name="Size" Type="String" />
                    <asp:Parameter DbType="Date" Name="DateAcq" />
                    <asp:Parameter Name="PurchasePrice" Type="Decimal" />
                    <asp:Parameter Name="MilesStart" Type="Int32" />
                    <asp:Parameter Name="CurrentMiles" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="Year" />
                    <asp:Parameter Name="Make" Type="String" />
                    <asp:Parameter Name="Model" Type="String" />
                    <asp:Parameter Name="Engine" Type="String" />
                    <asp:Parameter Name="Color" Type="String" />
                    <asp:Parameter Name="Size" Type="String" />
                    <asp:Parameter DbType="Date" Name="DateAcq" />
                    <asp:Parameter Name="PurchasePrice" Type="Decimal" />
                    <asp:Parameter Name="MilesStart" Type="Int32" />
                    <asp:Parameter Name="CurrentMiles" Type="Int32" />
                    <asp:Parameter Name="VIN" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <table class="auto-style3">
            <tr>
                <td>Truck</td>
                <td>VIN</td>
                <td>Make</td>
                <td>Model</td>
                <td>Engine</td>
                <td>Color</td>
                <td>Size</td>
                <td>Date Acquired</td>
                <td>Purchase Price</td>
                <td>Miles Start</td>
                <td>Current Miles</td>
                <td>Year</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="truck_insert" runat="server" Text="Insert" OnClick="truck_insert_Click" />
                </td>
                <td>
                    <asp:TextBox ID="truck_vin" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="truck_make" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="truck_model" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="truck_engine" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="truck_color" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="truck_size" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="truck_dateacq" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="truck_purchaseprice" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="truck_milesstart" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="truck_currmiles" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="truck_year" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Label ID="truck_error" runat="server" ForeColor="Red" Text="Failed to send" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView8" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="VIN,Date" DataSourceID="trucklog_source" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="TruckLogID" HeaderText="TruckLogID" SortExpression="TruckLogID" />
                    <asp:BoundField DataField="VIN" HeaderText="VIN" ReadOnly="True" SortExpression="VIN" />
                    <asp:BoundField DataField="WorkDone" HeaderText="WorkDone" SortExpression="WorkDone" />
                    <asp:BoundField DataField="Vendor" HeaderText="Vendor" SortExpression="Vendor" />
                    <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
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
            <asp:SqlDataSource ID="trucklog_source" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT * FROM [TruckLog]" DeleteCommand="DELETE FROM [TruckLog] WHERE [VIN] = @VIN AND [Date] = @Date" InsertCommand="INSERT INTO [TruckLog] ([TruckLogID], [VIN], [WorkDone], [Vendor], [Date], [Cost]) VALUES (@TruckLogID, @VIN, @WorkDone, @Vendor, @Date, @Cost)" UpdateCommand="UPDATE [TruckLog] SET [TruckLogID] = @TruckLogID, [WorkDone] = @WorkDone, [Vendor] = @Vendor, [Cost] = @Cost WHERE [VIN] = @VIN AND [Date] = @Date">
                <DeleteParameters>
                    <asp:Parameter Name="VIN" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TruckLogID" Type="String" />
                    <asp:Parameter Name="VIN" Type="String" />
                    <asp:Parameter Name="WorkDone" Type="String" />
                    <asp:Parameter Name="Vendor" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="Cost" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TruckLogID" Type="String" />
                    <asp:Parameter Name="WorkDone" Type="String" />
                    <asp:Parameter Name="Vendor" Type="String" />
                    <asp:Parameter Name="Cost" Type="Decimal" />
                    <asp:Parameter Name="VIN" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <table class="auto-style3">
            <tr>
                <td>Truck Log</td>
                <td>TruckLogID</td>
                <td>VIN</td>
                <td>Work Done</td>
                <td>Vendor</td>
                <td>Date</td>
                <td>Cost</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="trucklog_insert" runat="server" Text="Insert" OnClick="trucklog_insert_Click" />
                </td>
                <td>
                    <asp:TextBox ID="trucklog_trucklogID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="trucklog_vin" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="trucklog_workdone" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="trucklog_vendor" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="trucklog_date" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="trucklog_cost" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Label ID="trucklog_error" runat="server" ForeColor="Red" Text="Failed to send" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView9" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="WarehouseID" DataSourceID="warehouse_source" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="WarehouseID" HeaderText="WarehouseID" ReadOnly="True" SortExpression="WarehouseID" />
                    <asp:BoundField DataField="CityID" HeaderText="CityID" SortExpression="CityID" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
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
            <asp:SqlDataSource ID="warehouse_source" runat="server" ConnectionString="<%$ ConnectionStrings:student12ConnectionString %>" SelectCommand="SELECT * FROM [Warehouse]" DeleteCommand="DELETE FROM [Warehouse] WHERE [WarehouseID] = @WarehouseID" InsertCommand="INSERT INTO [Warehouse] ([WarehouseID], [CityID], [Address], [Description], [Zipcode]) VALUES (@WarehouseID, @CityID, @Address, @Description, @Zipcode)" UpdateCommand="UPDATE [Warehouse] SET [CityID] = @CityID, [Address] = @Address, [Description] = @Description, [Zipcode] = @Zipcode WHERE [WarehouseID] = @WarehouseID">
                <DeleteParameters>
                    <asp:Parameter Name="WarehouseID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="WarehouseID" Type="Int32" />
                    <asp:Parameter Name="CityID" Type="Int32" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Zipcode" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CityID" Type="Int32" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Zipcode" Type="String" />
                    <asp:Parameter Name="WarehouseID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <table class="auto-style3">
            <tr>
                <td>Warehouse</td>
                <td>Warehouse ID</td>
                <td>City ID</td>
                <td>Address</td>
                <td>Description</td>
                <td>Zipcode</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="warehouse_insert" runat="server" Text="Insert" OnClick="warehouse_insert_Click" />
                </td>
                <td>
                    <asp:TextBox ID="warehouse_warehouseID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="warehouse_cityID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="warehouse_address" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="warehouse_description" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="warehouse_zipcode" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    <p>
        <asp:Label ID="warehouse_error" runat="server" ForeColor="Red" Text="Failed to send" Visible="False"></asp:Label>
        </p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
