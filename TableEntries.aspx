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
            &nbsp;</p>
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
                    <asp:Button ID="company_insert" runat="server" Text="Insert" />
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
        <p>
            &nbsp;</p>
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
                    <asp:Button ID="contact_insert" runat="server" Text="Insert" />
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
            &nbsp;</p>
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
                    <asp:Button ID="driver_insert" runat="server" Text="Insert" />
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
            &nbsp;</p>
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
                    <asp:Button ID="refuel_insert" runat="server" Text="Insert" />
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
            &nbsp;</p>
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
                    <asp:Button ID="shipment_insert" runat="server" Text="Insert" />
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
            &nbsp;</p>
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
                    <asp:Button ID="transaction_insert" runat="server" Text="Insert" />
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
            &nbsp;</p>
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
                    <asp:Button ID="truck_insert" runat="server" Text="Insert" />
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
            &nbsp;</p>
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
                    <asp:Button ID="trucklog_insert" runat="server" Text="Insert" />
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
            &nbsp;</p>
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
                    <asp:Button ID="warehouse_insert" runat="server" Text="Insert" />
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
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
