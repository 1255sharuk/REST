<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="REST.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">
    <title></title>
    <link href="JS/bootstrap.min.css" rel="stylesheet" />
    <script src="JS/bootstrap.min.js"></script>

       <script type='text/javascript'>
           function notEmpty(){
                     var Name, male,female, password, conpassword, emailid ;
               Name = document.getElementById("txtUsername").value;
               if (Name == '') {
                   alert("Please Enter User Name");
                   return false;
               }
               male= document.getElementById('rbtnmale').checked;
               female = document.getElementById('rbtnfemale').checked;
               if ((male == "") && (female == "")) {
                   alert("Please Select Gender");
                   return false;
               }
               password = document.getElementById('txtPassword').value;
               if (password == '') {
                   alert("Please Enter password");
                   return false;
               }
               conpassword = document.getElementById('txtConfirmPassword').value;
               if (conpassword != password) {
                   alert("Please Enter  confirm password");
                   return false;
               }
               emailid = document.getElementById("txtEmail").value;
               var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
               if( (emailid == '') && (filter)) {
                   alert("Please Enter valid Email");
                   emailid.value = "";
                   return false;
               }
              }
       </script>
  
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
<script src="//geodata.solutions/includes/countrystatecity.js"></script>
     
  <%--  <script>
        $(document).ready(function () {
            populateCountries("country", "state", "city");
        });
    </script>--%>
     </head>

<body style="background: linear-gradient(90deg, rgba(36,0,10,1) 0%, rgba(9,121,107,1) 35%, rgba(0,212,255,1) 100%);">
    <form id="form1" runat="server" >

       <div style="max-width: 400px;margin-left:auto;margin-right:auto;padding:5%;border:solid;border-color:#011F5B">
        <h2 class="form-signin-heading">Registration</h2>
           <br />

           <asp:Label ID="lblid" runat="server" Text="Enter ID"></asp:Label>
        <asp:TextBox ID="txteno" runat="server" CssClass="form-control"   placeholder="Enter ID"/>
        <br/>
         
           <asp:Label ID="lblname" runat="server" Text="Enter Name"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"   placeholder="Enter Username"/>
        <br/>

       
           <asp:Label ID="Label1" runat="server" Text="Gender"></asp:Label>
          &nbsp;&nbsp; <asp:RadioButton ID="rbtnmale" Text="Male"  runat="server" GroupName="gender" /> &nbsp;&nbsp;<asp:RadioButton ID="rbtnfemale" Text="Female" runat="server" groupname="gender" />
             <br />
           <br />





           <asp:Label ID="lblcountry" runat="server" Text="Select Country"></asp:Label>
           
           <asp:DropDownList class="countries form-control" ID="countryId" runat="server">
               <asp:ListItem Value="">Please Select</asp:ListItem> 
           </asp:DropDownList>

           <%--<select name="country" class="countries form-control" id="countryId">
               <option value="">Select Country</option>
           </select>--%>
           <br />
           <asp:Label ID="lblstate" runat="server" Text="Select State"></asp:Label>
           <asp:DropDownList class="states form-control" ID="stateId" runat="server">
                <asp:ListItem Value="">Please Select</asp:ListItem> 
           </asp:DropDownList>
           <%--<select name="state" class="states form-control" id="stateId">
               <option value="">Select State</option>
           </select>--%>
           <br />
           <asp:Label ID="lblcity" runat="server" Text="Select City"></asp:Label>
           <asp:DropDownList class="cities form-control" ID="cityId" runat="server">
               <asp:ListItem Value="">Please Select</asp:ListItem> 
           </asp:DropDownList>

           <%--<select name="city" class="cities form-control" id="cityId">
               <option value="">Select City</option>
           </select>--%>
           <br />

           <asp:Label ID="Label3" runat="server" Text="Enter Email"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Enter Email" />
        <br />
        
        <asp:Label ID="Label2" runat="server" Text="Enter Password"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter Password" />
        <br/>
       <%-- <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm Password" />
        <br/>--%>

            <asp:Label ID="lblimage" runat="server" Text="Upload Image"></asp:Label>
           <asp:FileUpload ID="myFileUpload" runat="server" CssClass="form-control"  />
           <br />
       
        <asp:Button ID="btnSignup" runat="server" Text="Sign up"  CssClass="btn btn-primary" OnClientClick="return notEmpty();" OnClick="btnSignup_Click" />
    </div>
    </form>
</body>
</html>
