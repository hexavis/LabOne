using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab1trial
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitB_Click(object sender, EventArgs e)
        {
            //set the label text based on input
            endName.Text = "Hello " + TextBoxName.Text + "!";
            endPW.Text = "Your Password: " + TextBoxPW.Text;
            endAddress.Text = "Your Address: " + TextBoxAddress.Text;
            //The grad level
            if (GradeList.SelectedValue == "Other")
            {
                endGrad.Text = "Your Graduate Level: Was taught by a pack of wolves." ;
            }
            else
            {
                endGrad.Text = "Your Graduate Level: " + GradeList.SelectedItem.Text;
            }
            //laptop check
            if (Yes.Checked == true)
            {
                endLaptop.Text = "You have a laptop. :)";
            }
            else
            {
                endLaptop.Text = "You do not have a laptop. :(";
            }
            //this is the check skills thing
            endSkills.Text = "Your skills are: ";
            foreach(ListItem item in SkillList.Items)
            {
                if (item.Selected == true)
                {
                    endSkills.Text = endSkills.Text + item.Text + " ";
                }
            }

            endProvince.Text = "You live in: " + provinceDD.SelectedItem.Text;

            //clear info
            TextBoxName.Text = String.Empty;
            TextBoxPW.Text = String.Empty;
            TextBoxAddress.Text = String.Empty;
            GradeList.ClearSelection();
            Yes.Checked = false;
            SkillList.ClearSelection();
            provinceDD.SelectedIndex = 0;

        }

    }
}