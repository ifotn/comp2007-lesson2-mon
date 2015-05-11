using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2007_lesson2_mon
{
    public partial class _default : System.Web.UI.Page
    {
        public int x;

        protected void Page_Load(object sender, EventArgs e)
        {
            //add code here
            //only increment x if the page is NOT being reloaded
            if (!IsPostBack) {
                x = 0;
                x++;
                lblX.Text = x.ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //get the current count of x from the label
            x = Convert.ToInt32(lblX.Text);
            x++;

            //increment the label value by 1 or just write x back to the label
            lblX.Text = x.ToString();

            //copy value from textbox to the label
            lblFirstname.Text = txtFirstname.Text;

            //also copy the value to the literal
            ltlFirstname.Text = txtFirstname.Text;

            //remove the text from the textbox
            txtFirstname.Text = "";
        }

        protected void btnSelections_Click(object sender, EventArgs e)
        {
            //show the selected country in the literal control
            ltlFirstname.Text = ddlCountry.SelectedValue + " " + ddlCountry.SelectedItem.Text;
       
            //first clear the toppings literal
            ltlToppings.Text = "";

            //loop through the toppings and print out the selected topping list
            foreach (ListItem item in cblToppings.Items)
            {
                if (item.Selected)
                {
                    ltlToppings.Text += item.Text + " ";
                }
            }
        }
    }
}