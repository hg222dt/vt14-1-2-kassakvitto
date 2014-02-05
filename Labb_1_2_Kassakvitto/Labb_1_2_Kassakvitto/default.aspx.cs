using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Labb_1_2_Kassakvitto
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //this.TotalAmount.Attributes.Add("onkeypress", "CalculateButton_Click(this,'" + this.CalculateButton.ClientID + "')");
        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {

            //Validerar så att inkommendata är valid.
            if (IsValid)
            {
                //Objekt för en uträkning skapas.
                Model.Receipt receipt = new Model.Receipt(double.Parse(TotalAmount.Text));

                //Kvitto-data skrivs ut i olika labels.
                Label1.Text += receipt.Subtotal.ToString("0.00") + " kr";
                Label2.Text += receipt.DiscountRate.ToString("0") + " %";
                Label3.Text += receipt.MoneyOff.ToString("0.00") + " kr";
                Label4.Text += receipt.Total.ToString("0.00") + " kr";

                //Kvittopanel sätts synlig
                Panel2.Visible = true;
            }
            




        }
    }
}