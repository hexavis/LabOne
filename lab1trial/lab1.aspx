<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab1.aspx.cs" Inherits="lab1trial.WebForm1" %>

<!DOCTYPE html>

<!--Jacqueline Richard 100092753 -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab one with Bootstrap</title> 
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    
</head>
<body>
    <div class="container">
    <div class="row">
        <div class="row-fluid"><div class="col-md-8" id="topheader"><h1>Register for CC forums</h1></div></div> 
            <div class="row-fluid"> 
        <div class="col-md-6" >
            <form id="form1" runat="server">
            <div class="input-group">            
                 <span class="input-group-addon" id="basic-addon1"> <label for="name">Name: </label></span>
                <asp:TextBox class="form-control" ID="TextBoxName" runat="server"></asp:TextBox>
            </div>
                
            <div class="input-group">            
                 <span class="input-group-addon" id="basic-addon2">  <label for="password">Password: </label></span>
                <asp:TextBox class="form-control" ID="TextBoxPW" runat="server" textmode="Password"></asp:TextBox>
            </div>
            <div class="input-group">            
                 <span class="input-group-addon" id="basic-addon3"> <label for="address">Address: </label></span>
                <asp:TextBox class="form-control" ID="TextBoxAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
 
            <div class="panel panel-default">
                <div class="panel-heading"><label for="gradlevel">Please pick your highest grade level: </label></div>
                <div class="panel-body">
                <asp:RadioButtonList ID="GradeList" runat="server">
                    <asp:ListItem Text="High School" Value="HighSchool"></asp:ListItem>
                    <asp:ListItem Text="College" Value="College"></asp:ListItem>
                    <asp:ListItem Text="Graduate" Value="Graduate"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                </asp:RadioButtonList>
              </div>
            </div>
 
            <div class="well well-sm">
                <label for="laptop">Do you have a laptop?(Check if true):</label>
                <asp:CheckBox ID="Yes" runat="server" />
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">  <label for="Skills">Please Check all that you know: </label></div>
                <div class="panel-body">
                <asp:CheckBoxList ID="SkillList" runat="server">
                    <asp:ListItem Text="HTML" Value="Htmlcheck"></asp:ListItem>
                    <asp:ListItem Text="PHP" Value="PHPcheck"></asp:ListItem>
                    <asp:ListItem Text="CSS" Value="CSScheck"></asp:ListItem>
                    <asp:ListItem Text="C#" Value="C#check"></asp:ListItem>
                    <asp:ListItem Text="Java" Value="Javacheck"></asp:ListItem>
                </asp:CheckBoxList>
              </div>
            </div>
          
            <div class="well well-sm">
               <label for="Province">Please choose the province you live in: </label>
                <asp:DropDownList ID="provinceDD" runat="server">
                    <asp:ListItem Text="AB" Value="ABchoice"></asp:ListItem>
                    <asp:ListItem Text="BC" Value="BCchoice"></asp:ListItem>
                    <asp:ListItem Text="ON" Value="ONchoice"></asp:ListItem>
                    <asp:ListItem Text="QC" Value="QCchoice"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <asp:Button class="btn btn-primary" ID="submitB" runat="server" Text="Submit" OnClick="submitB_Click" />
            </div>
       
             <!--This is all the labels for after the submit button -->
          
            <div class="col-md-4">
                <div>
                    <asp:label ID="endName" runat="server" />
                </div>
                <div>
                    <asp:label ID="endPW" runat="server" />
                </div>
                <div>
                    <asp:label ID="endAddress" runat="server" />
                </div>
                <div>
                    <asp:label ID="endGrad" runat="server" />
                </div>
                <div>
                    <asp:label ID="endLaptop" runat="server" />
                </div>
                <div>
                    <asp:label ID="endSkills" runat="server" />
                </div>
                <div>
                    <asp:label ID="endProvince" runat="server" />
                </div>
            </div>


            </form>
        </div>
     </div>

        </div>
    <!-- Scripting stuff -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>
