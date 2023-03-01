using System;
using System.Web.UI.WebControls;
using BusinessLogicLayerrr;
using DataAccessLayerr;




namespace REST
{
    public partial class Registration : System.Web.UI.Page
    {

        BusinessLogicLayerrr.BusinessLogiclayerclass objbll = new BusinessLogicLayerrr.BusinessLogiclayerclass();
        protected void Page_Load(object sender, EventArgs e)
        {
        }







        protected void btnSignup_Click(object sender, EventArgs e)

        {
            try
            {
                objbll.Insertdetails(txteno.Text, txtUsername.Text, rbtnmale.Checked, rbtnfemale.Checked, countryId.SelectedValue, stateId.SelectedValue, cityId.SelectedValue, txtEmail.Text, txtPassword.Text);


                //string selectedCountry = countryId.SelectedValue;
                //string selectedState = stateId.SelectedValue;
                //string selectedCity = cityId.SelectedValue;

                //string selectedCountry = Request.Form["country"];
                //string selectedState = Request.Form["state"];
                //string selectedCity = Request.Form["city"];
                txtUsername.Text = " ";
                rbtnmale.Checked = false;
                rbtnfemale.Checked = false;
                txtEmail.Text = "";
                txtPassword.Text = "";



                string message = "Your details have been saved successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "');";
                script += "window.location = '";
                script += Request.Url.AbsoluteUri;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            catch (Exception ex)
            {
                throw (ex);
            }
        }
    }
}

        

    
    


