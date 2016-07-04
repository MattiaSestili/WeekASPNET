<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
       <asp:ScriptManager runat="server"></asp:ScriptManager>
    <div>
        <h1>Here are some example from ASP.NET crib sheet</h1>
    </div>
    <div>
        <h2>Standard Controls</h2>
        <h3>Simple Controls</h3>
    </div>
    <div>
        <asp:Label ID="checkLabel" runat="server" Text="here is a checkbox:"></asp:Label>
        </br>
        </br>
        <asp:CheckBox ID="CheckBox1" runat="server" Text ="Please check this Check Box and click the button" />
        </br>
        <asp:Button ID="checkButton" runat="server" Text="Check Box Button" Height="23px" Width="152px" OnClick="checkButton_Click" />
        </br>
        </br>
        <asp:Label ID="labelChecked" runat="server" Text=""></asp:Label>
    </div>
        </br>
    <div>
        <asp:LinkButton ID="LinkButton1" PostBackUrl="https://playoverwatch.com/en-us/" runat ="server">LinkButton which is a just a link really</asp:LinkButton>
        </br>
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.justit.co.uk" Target="_blank">Just another Link</asp:HyperLink>
        </br>
        </br>
        <asp:Label ID="Label1" runat="server" Text=" Click on the image button to follow the link:"></asp:Label>
        </br>
        </br>
        <asp:HyperLink ID="hyperlink2" ImageUrl="download%20(1).jpg" NavigateUrl="http://www.starwars.com/" Target="_new" runat="server"></asp:HyperLink>
    </div>
    <div>
        <p>This is an Image Map. Click on the Earth or Moon for a little bit of information about them. This can also be used for links.</p>
        </br>
        <img src="interstellar_voyage-t2.jpg" usemap="#spacemap"/>
        <map name="spacemap">
          <area shape="circle" coords="10,30,10" href="mercur.htm" alt="spaship"/>      
        </map>
    </div>

    <div>
        <p>This is a multiline text box - please type something and click the button below:</p>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="218px" Height="48px"></asp:TextBox>
        </br>
        <asp:Button ID="ButtonCount" runat="server" Text="Tex Box Button" OnClick="ButtonCount_Click" />
        </br>
        </br>
        <asp:Label ID="LabelCountText" runat="server" Text=""></asp:Label>
    </div>

    <div>
        <p>This is a text box that accepts email addresses - please type an email address and click the button below: </p>
        <asp:TextBox ID="textEmailBox" runat="server" Width="208px" TextMode="Email" CausesValidation="true"></asp:TextBox>
        </br>
        </br>
        <asp:Button ID="buttonEmail" runat="server" Text="Validate Email" OnClick="buttonEmail_Click" Width="137px" />
        </br>
        </br>
        <asp:Label ID="labelEmail" runat="server" Text=""></asp:Label>
    </div>
   
    <div>
        <p>Here is a calendar control.</p>
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" ></asp:Calendar>
        <asp:Label ID="LabelDate" runat="server" Text=""></asp:Label>

    </div>
    
    </form>
    
</body>
</html>
