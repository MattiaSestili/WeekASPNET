<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>

<body>
  <div class ="jumbotron">
      <h1>Holiday Budget Calculator</h1>
  </div>
<form id="form1" runat="server">
    <div class="Container">      
            <p1>Flight Costs</p1>
                <asp:Label ID="Label1" runat="server" Text="Where are you going?"></asp:Label>
                <asp:TextBox ID="TextBoxTravel" runat="server" Height="16px" Width="159px"></asp:TextBox>          
        <br/>
        <br/>
         <p2>Transports</p2>
                <asp:Label ID="LabelTrain" runat="server" Text="Train"></asp:Label>
                <asp:TextBox ID="TextBoxTrain" runat="server" placeholder ="Train"></asp:TextBox>
                <br/>
                <asp:TextBox ID="TextBoxTaxi" runat="server"></asp:TextBox>
                <br/>
                <asp:TextBox ID="TextBoxBus" runat="server"></asp:TextBox>        
        <br />
        <br />
           
            <p3>How many people?</p3>
                <asp:Button ID="ButtonLessPerson" runat="server" Text="-" />
                <asp:TextBox ID="TextBoxPeople" runat="server" Width="103px" OnTextChanged="TextBoxPeople_TextChanged" AutoPostBack="True"></asp:TextBox>
                <asp:Button ID="ButtonAddPerson" runat="server" Text="+" OnClick="ButtonAddPerson_Click" />
                <asp:Image ID="ImagePerson1" runat="server" ImageUrl="Person_icon_BLACK-01.svg.png" Width="50px"/>
                <asp:Image ID="ImagePerson2" runat="server" ImageUrl="Person_icon_BLACK-01.svg.png" Width="50px"/>
                <asp:Image ID="ImagePerson3" runat="server" ImageUrl="Person_icon_BLACK-01.svg.png" Width="50px"/>
                <asp:Image ID="ImagePerson4" runat="server" ImageUrl="Person_icon_BLACK-01.svg.png" Width="50px"/>
    
                <asp:Button ID="ButtonLessKid" runat="server" Text="-" />
                <asp:TextBox ID="TextBoxKids" runat="server" Width="103px" OnTextChanged="TextBoxKids_TextChanged"></asp:TextBox>
                <asp:Button ID="ButtonAddKid" runat="server" Text="+" />
                 
            <br />
            <br/>
                <p>How many days?</p>
                <asp:Button ID="ButtonLessDays" runat="server" Text="-" />
                <asp:TextBox ID="TextBoxDays" runat="server" Width="103px"></asp:TextBox>
                <asp:Button ID="ButtonAddDays" runat="server" Text="+" />
                <asp:Image ID="ImageHouse1" runat="server" ImageUrl="home_house_simple_glyph_pixel_perfect-512.png" Width="50px"/>
                <asp:Image ID="ImageHouse2" runat="server" ImageUrl="home_house_simple_glyph_pixel_perfect-512.png" Width="50px"/>
                <asp:Image ID="ImageHouse3" runat="server" ImageUrl="home_house_simple_glyph_pixel_perfect-512.png" Width="50px"/>
                <asp:Image ID="ImageHouse4" runat="server" ImageUrl="home_house_simple_glyph_pixel_perfect-512.png" Width="50px"/>
                <br/>
                <asp:TextBox ID="TextBoxPerNight" runat="server" placeholder="Amount Per Night"></asp:TextBox>
       
       

                <p>Day Costs</p>                
                <asp:Label ID="Label2" runat="server" Text="How many time will you eat out?"></asp:Label>
                <br/>               
                <asp:TextBox ID="TextBoxEatAmount" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBoxEatDays" runat="server"></asp:TextBox>
                <asp:Label ID="LabelKidsCheck" runat="server" Text="Kids meal? Less 50%"></asp:Label>
                <asp:CheckBox ID="CheckBoxKids" runat="server" />           
            
                <asp:Label ID="Label3" runat="server" Text="Budget for Activities"></asp:Label>
                <asp:TextBox ID="TextBoxActivities" runat="server"></asp:TextBox>

                <asp:Label ID="Label4" runat="server" Text="Shopping Budget"></asp:Label>
                <asp:TextBox ID="TextBoxShopping" runat="server"></asp:TextBox>


                <asp:Button ID="ButtonCalculate" runat="server" Text="Calculate" OnClick="ButtonCalculate_Click" />
                <asp:Label ID="LabelResult" runat="server" Text=""></asp:Label>

        
    </div>
</form>
   
</body>
</html>
