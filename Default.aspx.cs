using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }

    protected void checkButton_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            labelChecked.Text = "Thank you for checking the box";
        }
        else
        {
            labelChecked.Text = "Please check th box above!";
        }
    }

    protected void ButtonCount_Click(object sender, EventArgs e)
    {        
        int textCount = TextBox1.Text.Length;

        LabelCountText.Text = "You typed " + textCount + " character in this text box";
    }


    protected void buttonEmail_Click(object sender, EventArgs e)
    {
        if (textEmailBox.Text.Contains("@") && textEmailBox.Text.Contains(".com"))
        {
            labelEmail.Text = "You entered a valid email address.";
        }
     
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        LabelDate.Text = "The day selected is: " + Calendar1.SelectedDate.ToString();
    }
}