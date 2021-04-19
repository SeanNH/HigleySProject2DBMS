using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HigleySProject2
{
    public partial class TableEntries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox14_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void company_insert_Click(object sender, EventArgs e)
        {
            Button tmp = (Button)sender;
            tmp.Text = "...clicked...";

            try
            {
                CompanySource.InsertParameters["CompanyID"].DefaultValue = company_companyid.Text;
                CompanySource.InsertParameters["Address"].DefaultValue = company_address.Text;
                CompanySource.InsertParameters["Description"].DefaultValue = company_description.Text;
                CompanySource.InsertParameters["CityID"].DefaultValue = company_cityid.Text;
                CompanySource.InsertParameters["ZipCode"].DefaultValue = company_zipcode.Text;

                CompanySource.Insert();
                company_companyid.Text = "";
                company_address.Text = "";
                company_description.Text = "";
                company_cityid.Text = "";
                company_zipcode.Text = "";


            }
            catch (Exception ex){
                company_error.Text = ex.Message;
                company_error.Visible = true;

            }

        }

        protected void contact_insert_Click(object sender, EventArgs e)
        {
            Button tmp = (Button)sender;
            tmp.Text = "...clicked...";

            try
            {
                Contact_source.InsertParameters["ContactID"].DefaultValue = contact_contactID.Text;
                Contact_source.InsertParameters["FirstName"].DefaultValue = contact_firstname.Text;
                Contact_source.InsertParameters["LastName"].DefaultValue = contact_lastname.Text;
                Contact_source.InsertParameters["Phone"].DefaultValue = contact_phone.Text;
                Contact_source.InsertParameters["CompantID"].DefaultValue = contact_companyID.Text;
                Contact_source.InsertParameters["Email"].DefaultValue = conact_email.Text;
                
                Contact_source.Insert();
                
                contact_contactID.Text = "";
                contact_firstname.Text = "";
                contact_lastname.Text = "";
                contact_phone.Text = "";
                contact_companyID.Text = "";
                conact_email.Text = "";

            }
            catch (Exception ex)
            {
                contact_error.Text = ex.Message;
                contact_error.Visible = true;
            }
        }

        protected void driver_insert_Click(object sender, EventArgs e)
        {
            Button tmp = (Button)sender;
            tmp.Text = "...clicked...";

            try
            {
                driver_source.InsertParameters["DriverID"].DefaultValue = driver_driverid.Text;
                driver_source.InsertParameters["Preferences"].DefaultValue = driver_preferences.Text;
                driver_source.InsertParameters["LicenseNum"].DefaultValue = driver_license_number.Text;
                driver_source.InsertParameters["TrainingCategory"].DefaultValue = driver_training.Text;
                driver_source.InsertParameters["LicenseExp"].DefaultValue = driver_license_exp.Text;
                driver_source.InsertParameters["CityID"].DefaultValue = driver_cityid.Text;
                driver_source.InsertParameters["Address"].DefaultValue = driver_address.Text;
                driver_source.InsertParameters["Fname"].DefaultValue = driver_fname.Text;
                driver_source.InsertParameters["Lname"].DefaultValue = driver_lname.Text;
                driver_source.InsertParameters["Phone"].DefaultValue = driver_phone.Text;
                driver_source.InsertParameters["Salary"].DefaultValue = driver_salary.Text;
                driver_source.InsertParameters["Zipcode"].DefaultValue = driver_zipcode.Text;
                driver_source.InsertParameters["numTrips"].DefaultValue = driver_numtrips.Text;
                driver_source.InsertParameters["DOB"].DefaultValue = driver_dob.Text;

                driver_source.Insert();

                driver_driverid.Text = "";
                driver_preferences.Text = "";
                driver_license_number.Text = "";
                driver_training.Text = "";
                driver_license_exp.Text = "";
                driver_cityid.Text = "";
                driver_address.Text = "";
                driver_fname.Text = "";
                driver_lname.Text = "";
                driver_phone.Text = "";
                driver_salary.Text = "";
                driver_zipcode.Text = "";
                driver_numtrips.Text = "";
                driver_dob.Text = "";

            }
            catch (Exception ex)
            {
                driver_error.Text = ex.Message;
                driver_error.Visible = true;
            }
        }

        protected void refuel_insert_Click(object sender, EventArgs e)
        {
            Button tmp = (Button)sender;
            tmp.Text = "...clicked...";

            try
            {
                refuel_source.InsertParameters["RefuelID"].DefaultValue = refuel_refuelID.Text;
                refuel_source.InsertParameters["Date"].DefaultValue = refuel_date.Text;
                refuel_source.InsertParameters["Quantity"].DefaultValue = refuel_quantity.Text;
                refuel_source.InsertParameters["Price"].DefaultValue = refuel_price.Text;
                refuel_source.InsertParameters["CityID"].DefaultValue = refuel_cityID.Text;
                refuel_source.InsertParameters["Vendor"].DefaultValue = refuel_vendor.Text;
                refuel_source.InsertParameters["Comments"].DefaultValue = refuel_comments.Text;
                refuel_source.InsertParameters["TruckVIN"].DefaultValue = refuel_truckVIN.Text;
                refuel_source.InsertParameters["DriverID"].DefaultValue = refuel_driverID.Text;

                refuel_source.Insert();

                refuel_refuelID.Text = "";
                refuel_date.Text = "";
                refuel_quantity.Text = "";
                refuel_price.Text = "";
                refuel_cityID.Text = "";
                refuel_vendor.Text = "";
                refuel_comments.Text = "";
                refuel_truckVIN.Text = "";
                refuel_driverID.Text = "";

            }
            catch (Exception ex)
            {
                refuel_error.Text = ex.Message;
                refuel_error.Visible = true;
            }
        }

        protected void shipment_insert_Click(object sender, EventArgs e)
        {
            Button tmp = (Button)sender;
            tmp.Text = "...clicked...";

            try
            {
                shipment_cource.InsertParameters["ShipmentID"].DefaultValue = shipment_shipmentID.Text;
                shipment_cource.InsertParameters["ContactID"].DefaultValue = shipment_contactID.Text;
                shipment_cource.InsertParameters["WarehouseID"].DefaultValue = shipment_warehouseID.Text;
                shipment_cource.InsertParameters["TruckVIN"].DefaultValue = shipment_truckVIN.Text;
                shipment_cource.InsertParameters["DeliverBy"].DefaultValue = shipment_deliverby.Text;
                shipment_cource.InsertParameters["Contents"].DefaultValue = shipment_contents.Text;
                shipment_cource.InsertParameters["PickupDate"].DefaultValue = shipment_pickupdate.Text;
                shipment_cource.InsertParameters["EstWeight"].DefaultValue = shipment_estweight.Text;
                shipment_cource.InsertParameters["EstMiles"].DefaultValue = shipment_estmiles.Text;
                shipment_cource.InsertParameters["ActualWeight"].DefaultValue = shipment_actweight.Text;
                shipment_cource.InsertParameters["ActualMiles"].DefaultValue = shipment_actmiles.Text;
                shipment_cource.InsertParameters["DriverComments"].DefaultValue = shipment_drivercomm.Text;
                shipment_cource.InsertParameters["CustComments"].DefaultValue = shipment_custcomm.Text;
                shipment_cource.InsertParameters["DriverID"].DefaultValue = shipment_driverID.Text;

                shipment_cource.Insert();

                shipment_shipmentID.Text = "";
                shipment_contactID.Text = "";
                shipment_warehouseID.Text = "";
                shipment_truckVIN.Text = "";
                shipment_deliverby.Text = "";
                shipment_contents.Text = "";
                shipment_pickupdate.Text = "";
                shipment_estweight.Text = "";
                shipment_estmiles.Text = "";
                shipment_actweight.Text = "";
                shipment_actmiles.Text = "";
                shipment_drivercomm.Text = "";
                shipment_custcomm.Text = "";
                shipment_driverID.Text = "";


            }
            catch (Exception ex)
            {
                shipment_error.Text = ex.Message;
                shipment_error.Visible = true;
            }
        }

        protected void transaction_insert_Click(object sender, EventArgs e)
        {
            Button tmp = (Button)sender;
            tmp.Text = "...clicked...";

            try
            {

                Transaction_source.InsertParameters["TransactionID"].DefaultValue = transaction_transactionID.Text;
                Transaction_source.InsertParameters["ShipmentID"].DefaultValue = transaction_shipmentID.Text;
                Transaction_source.InsertParameters["BaseFee"].DefaultValue = transaction_baseFee.Text;
                Transaction_source.InsertParameters["MileageFee"].DefaultValue = transaction_mileagefee.Text;
                Transaction_source.InsertParameters["ExpressFee"].DefaultValue = transaction_expressfee.Text;
                Transaction_source.InsertParameters["TotalCost"].DefaultValue = transaction_totalcost.Text;

                Transaction_source.Insert();

                transaction_transactionID.Text = "";
                transaction_shipmentID.Text = "";
                transaction_baseFee.Text = "";
                transaction_mileagefee.Text = "";
                transaction_expressfee.Text = "";
                transaction_totalcost.Text = "";


            }
            catch (Exception ex)
            {
                transaction_error.Text = ex.Message;
                transaction_error.Visible = true;
            }
        }

        protected void truck_insert_Click(object sender, EventArgs e)
        {
            Button tmp = (Button)sender;
            tmp.Text = "...clicked...";

            try
            {

                truck_source.InsertParameters["VIN"].DefaultValue = truck_vin.Text;
                truck_source.InsertParameters["Year"].DefaultValue = truck_year.Text;
                truck_source.InsertParameters["Make"].DefaultValue = truck_make.Text;
                truck_source.InsertParameters["Model"].DefaultValue = truck_model.Text;
                truck_source.InsertParameters["Engine"].DefaultValue = truck_engine.Text;
                truck_source.InsertParameters["Color"].DefaultValue = truck_color.Text;
                truck_source.InsertParameters["Size"].DefaultValue = truck_size.Text;
                truck_source.InsertParameters["DateAcq"].DefaultValue = truck_dateacq.Text;
                truck_source.InsertParameters["PurchasePrice"].DefaultValue = truck_purchaseprice.Text;
                truck_source.InsertParameters["MilesStart"].DefaultValue = truck_milesstart.Text;
                truck_source.InsertParameters["CurrentMiles"].DefaultValue = truck_currmiles.Text;

                truck_source.Insert();

                truck_vin.Text = "";
                truck_year.Text = "";
                truck_make.Text = "";
                truck_model.Text = "";
                truck_engine.Text = "";
                truck_color.Text = "";
                truck_size.Text = "";
                truck_dateacq.Text = "";
                truck_purchaseprice.Text = "";
                truck_milesstart.Text = "";
                truck_currmiles.Text = "";


            }
            catch (Exception ex)
            {
                truck_error.Text = ex.Message;
                truck_error.Visible = true;
            }
        }

        protected void trucklog_insert_Click(object sender, EventArgs e)
        {

            Button tmp = (Button)sender;
            tmp.Text = "...clicked...";

            try
            {
                trucklog_source.InsertParameters["TruckLogID"].DefaultValue = trucklog_trucklogID.Text;
                trucklog_source.InsertParameters["VIN"].DefaultValue = trucklog_vin.Text;
                trucklog_source.InsertParameters["WorkDone"].DefaultValue = trucklog_workdone.Text;
                trucklog_source.InsertParameters["Vendor"].DefaultValue = trucklog_vendor.Text;
                trucklog_source.InsertParameters["Date"].DefaultValue = trucklog_date.Text;
                trucklog_source.InsertParameters["Cost"].DefaultValue = trucklog_cost.Text;

                trucklog_source.Insert();

                trucklog_trucklogID.Text = "";
                trucklog_vin.Text = "";
                trucklog_workdone.Text = "";
                trucklog_vendor.Text = "";
                trucklog_date.Text = "";
                trucklog_cost.Text = "";
            }
            catch (Exception ex)
            {
                trucklog_error.Text = ex.Message;
                trucklog_error.Visible = true;
            }
        }

        protected void warehouse_insert_Click(object sender, EventArgs e)
        {
            Button tmp = (Button)sender;
            tmp.Text = "...clicked...";

            try
            {
                warehouse_source.InsertParameters["WarehouseID"].DefaultValue = warehouse_warehouseID.Text;
                warehouse_source.InsertParameters["CityID"].DefaultValue = warehouse_cityID.Text;
                warehouse_source.InsertParameters["Address"].DefaultValue = warehouse_address.Text;
                warehouse_source.InsertParameters["Description"].DefaultValue = warehouse_description.Text;
                warehouse_source.InsertParameters["Zipcode"].DefaultValue = warehouse_zipcode.Text;

                warehouse_source.Insert();

                warehouse_warehouseID.Text = "";
                warehouse_cityID.Text = "";
                warehouse_address.Text = "";
                warehouse_description.Text = "";
                warehouse_zipcode.Text = "";

            }
            catch (Exception ex)
            {
                warehouse_error.Text = ex.Message;
                warehouse_error.Visible = true;
            }
        }
    }
}