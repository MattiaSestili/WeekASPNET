<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
  
</head>

<body>
  <div class ="jumbotron">
      <h1>Holiday Budget Calculator</h1>
  </div>
<form id="form1" runat="server">
    <div class="Container">
        <div class="row">   
            <div class="col-lg-4">   
                <p>Flight Costs</p>
                    <asp:Label ID="Label1" runat="server" Text="Where are you going?"></asp:Label>
                    <br/>
                    <asp:TextBox ID="TextBoxTravel" runat="server" Height="22px" Width="164px" ForeColor="Black"></asp:TextBox>          
                    <br/>
                    <br/>
        
                <p>How many people?</p>
                    <asp:Label ID="Label5" runat="server" Text="Adult:"></asp:Label>
                    <br/>
                    <asp:Button ID="ButtonLessPerson" runat="server" Text="-" ForeColor="Black" />
                    <asp:TextBox ID="TextBoxPeople" runat="server" Width="103px" OnTextChanged="TextBoxPeople_TextChanged" AutoPostBack="True" ForeColor="Black"></asp:TextBox>
                    <asp:Button ID="ButtonAddPerson" runat="server" Text="+" OnClick="ButtonAddPerson_Click" ForeColor="Black" />
                    <asp:Image ID="ImagePerson1" runat="server" ImageUrl="Person_icon_BLACK-01.svg.png" Width="50px"/>
                    <asp:Image ID="ImagePerson2" runat="server" ImageUrl="Person_icon_BLACK-01.svg.png" Width="50px"/>
                    <asp:Image ID="ImagePerson3" runat="server" ImageUrl="Person_icon_BLACK-01.svg.png" Width="50px"/>
                    <asp:Image ID="ImagePerson4" runat="server" ImageUrl="Person_icon_BLACK-01.svg.png" Width="50px"/>
                    <br/>
                    <br/>
                    <asp:Label ID="Label6" runat="server" Text="Kids:"></asp:Label>
                    <br/>
                    <asp:Button ID="ButtonLessKid" runat="server" Text="-" ForeColor="Black" />
                    <asp:TextBox ID="TextBoxKids" runat="server" Width="103px" OnTextChanged="TextBoxKids_TextChanged" ForeColor="Black"></asp:TextBox>
                    <asp:Button ID="ButtonAddKid" runat="server" Text="+" ForeColor="Black" />
                 
                    <br/>
                    <br/>

                <p>How many nights?</p>
                    <asp:Button ID="ButtonLessDays" runat="server" Text="-" ForeColor="Black" />
                    <asp:TextBox ID="TextBoxDays" runat="server" Width="103px" ForeColor="Black"></asp:TextBox>
                    <asp:Button ID="ButtonAddDays" runat="server" Text="+" ForeColor="Black" />
                    <asp:Image ID="ImageHouse1" runat="server" ImageUrl="home_house_simple_glyph_pixel_perfect-512.png" Width="50px"/>
                    <asp:Image ID="ImageHouse2" runat="server" ImageUrl="home_house_simple_glyph_pixel_perfect-512.png" Width="50px"/>
                    <asp:Image ID="ImageHouse3" runat="server" ImageUrl="home_house_simple_glyph_pixel_perfect-512.png" Width="50px"/>
                    <asp:Image ID="ImageHouse4" runat="server" ImageUrl="home_house_simple_glyph_pixel_perfect-512.png" Width="50px"/>
                    <br/>
                    <asp:Label ID="Label7" runat="server" Text="Price per night"></asp:Label>
                    <br/>    
                    <asp:TextBox ID="TextBoxPerNight" runat="server" placeholder="Amount Per Night" ForeColor="Black"></asp:TextBox>                      
               </div>

                <div class="col-lg-4">                   
                 <p>Transports</p>
                    <asp:Label ID="LabelTrain" runat="server" Text="Train:"></asp:Label>
                    <br/>
                    <asp:TextBox ID="TextBoxTrain" runat="server" placeholder ="Train" ForeColor="Black"></asp:TextBox>
                    <br/>
                    <asp:Label ID="LabelTaxi" runat="server" Text="Taxi:"></asp:Label>
                    <br/>
                    <asp:TextBox ID="TextBoxTaxi" runat="server" ForeColor="Black"></asp:TextBox>
                    <br/>
                    <asp:Label ID="Label8" runat="server" Text="Bus:"></asp:Label>
                    <br/>
                    <asp:TextBox ID="TextBoxBus" runat="server" ForeColor="Black"></asp:TextBox>        
                    <br/>
                    <br/>      
             </div>
        

        <div class ="col-md-4">
        <p>Day Costs</p>                
            <asp:Label ID="Label2" runat="server" Text="Budget meals out?"></asp:Label>
            <br/>               
            <asp:TextBox ID="TextBoxEatAmount" runat="server" ForeColor="Black"></asp:TextBox>
            <br/>
            <asp:Label ID="Label9" runat="server" Text="How many time will you eat out?"></asp:Label>
            <br/>
            <asp:TextBox ID="TextBoxEatDays" runat="server" ForeColor="Black"></asp:TextBox>
            <br/>
            <asp:Label ID="LabelKidsCheck" runat="server" Text="Kids meal? Less 50%"></asp:Label>
            <asp:CheckBox ID="CheckBoxKids" runat="server" />           
            <br/>
            <br/>
            <p>Budget for Activities:</p>
            <asp:TextBox ID="TextBoxActivities" runat="server" ForeColor="Black"></asp:TextBox>
            <br/>
            <br/>
            <asp:Label ID="Label4" runat="server" Text="Shopping Budget"></asp:Label>
            <br/>
            <asp:TextBox ID="TextBoxShopping" runat="server" ForeColor="Black"></asp:TextBox>

             <br />
            <br />
            <asp:Button ID="ButtonCalculate" runat="server" Text="Calculate" OnClick="ButtonCalculate_Click" ForeColor="Black" />
            <asp:Label ID="LabelResult" runat="server" Text=""></asp:Label>
        </div>
       </div>
    </div>
</form>
   
</body>
</html>
