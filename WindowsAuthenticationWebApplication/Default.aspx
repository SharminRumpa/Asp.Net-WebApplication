<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WindowsAuthenticationWebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


   <h1>Wellcome To</h1>
   
   <img src="Image/Homemage.jpg" />
    
    <br />
    
    <div class="navbar-collapse collapse">
         <ul class="nav navbar-nav">
              <li><a runat="server" href="~/Action/BookInformation"><h2>Book Information</h2></a></li>
              <li><a runat="server" href="~/Action/AuthorInformation"><h2>Author Information</h2></a></li>
              <li><a runat="server" href="~/Action/UserInformation"><h2>User Information</h2></a></li>
         </ul>
    </div>
   
 

</asp:Content>
