using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int numberPeople;
    int numberKids;
    int bus = 0;
    int taxi = 0;
    int train = 0;
    int activities = 0;
    int shopping = 0;
    int meal = 0;
    double kidsMeal = 0;



    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            ImagePerson1.Visible = false;
            ImagePerson2.Visible = false;
            ImagePerson3.Visible = false;
            ImagePerson4.Visible = false;

            ImageHouse1.Visible = false;
            ImageHouse2.Visible = false;
            ImageHouse3.Visible = false;
            ImageHouse4.Visible = false;

            TextBoxPeople.Text = "0";
            TextBoxKids.Text = "0";

        }
    }

    protected void TextBoxPeople_TextChanged(object sender, EventArgs e)
    {
        numberPeople = Convert.ToInt32(TextBoxPeople.Text);

        switch (numberPeople)
        {
            case 1:
                ImagePerson1.Visible = true;
                break;
            case 2:
                ImagePerson1.Visible = true;
                ImagePerson2.Visible = true;
                break;
            case 3:
                ImagePerson1.Visible = true;
                ImagePerson2.Visible = true;
                ImagePerson3.Visible = true;
                break;
            case 4:
                ImagePerson1.Visible = true;
                ImagePerson2.Visible = true;
                ImagePerson3.Visible = true;
                ImagePerson4.Visible = true;
                break;
            default:
                break;

        }
    }

    protected void ButtonAddPerson_Click(object sender, EventArgs e)
    {
        numberPeople = Convert.ToInt32(TextBoxPeople.Text);
        numberPeople = numberPeople + 1;
        TextBoxPeople.Text = numberPeople.ToString();

        switch (numberPeople)
        {
            case 1:
                ImagePerson1.Visible = true;
                break;
            case 2:
                ImagePerson1.Visible = true;
                ImagePerson2.Visible = true;
                break;
            case 3:
                ImagePerson1.Visible = true;
                ImagePerson2.Visible = true;
                ImagePerson3.Visible = true;
                break;
            case 4:
                ImagePerson1.Visible = true;
                ImagePerson2.Visible = true;
                ImagePerson3.Visible = true;
                ImagePerson4.Visible = true;
                break;
            default:
                break;

        }
    }

    protected void ButtonCalculate_Click(object sender, EventArgs e)
    {
        int accomodation = Convert.ToInt32(TextBoxPerNight.Text) * Convert.ToInt32(TextBoxDays.Text);
        int bus = Convert.ToInt32(TextBoxBus.Text);
        int taxi = Convert.ToInt32(TextBoxTaxi.Text);
        int train = Convert.ToInt32(TextBoxTrain.Text);
        int activities = Convert.ToInt32(TextBoxActivities.Text);
        int shopping = Convert.ToInt32(TextBoxShopping.Text);
        int meal = Convert.ToInt32(TextBoxEatAmount.Text) * Convert.ToInt32(TextBoxEatDays.Text);
        double kidsMeal = Convert.ToInt32(TextBoxKids.Text) / 0.2;


        int results = accomodation + taxi + bus + train + activities + shopping + meal;
        // "Your budget for " + TextBoxTravel.Text + " is: " + results;
    }

    protected void TextBoxKids_TextChanged(object sender, EventArgs e)
    {
        numberKids = Convert.ToInt32(TextBoxKids.Text);

        switch (numberKids)
        {
            case 1:
                ImagePerson1.Visible = true;
                break;
            case 2:
                ImagePerson1.Visible = true;
                ImagePerson2.Visible = true;
                break;
            case 3:
                ImagePerson1.Visible = true;
                ImagePerson2.Visible = true;
                ImagePerson3.Visible = true;
                break;
            case 4:
                ImagePerson1.Visible = true;
                ImagePerson2.Visible = true;
                ImagePerson3.Visible = true;
                ImagePerson4.Visible = true;
                break;
            default:
                break;

        }
    }
}