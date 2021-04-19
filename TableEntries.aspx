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
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
