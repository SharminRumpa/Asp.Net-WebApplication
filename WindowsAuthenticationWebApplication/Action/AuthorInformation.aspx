<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AuthorInformation.aspx.cs" Inherits="WindowsAuthenticationWebApplication.AuthorInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />  <br />
    
    <img src="../Image/author.jpg" height="300" width="1200" />

    <br /><br />

     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>   
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="5" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-condensed"  HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="AuthorName" HeaderText="Author Name"  SortExpression="AuthorName"  ItemStyle-HorizontalAlign="Center" ><ItemStyle CssClass="col-xs-12" HorizontalAlign="Center" /> </asp:BoundField>
        </Columns>
         <HeaderStyle  BackColor="#FFCCFF" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="#990033" />
          <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle CssClass="pagerStyle" BackColor="#ffccff" HorizontalAlign="Center" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementBDConnectionString %>" SelectCommand="SELECT [AuthorName] FROM [Books]"></asp:SqlDataSource>

    <div class="navbar-collapse collapse">
         <ul class="nav navbar-nav">
              <li><a runat="server" href="~/Action/BookInformation"><h3>Book Information</h3></a></li>
              <li><a runat="server" href="~/Action/UserInformation"><h3>User Information</h3></a></li>
         </ul>
    </div>

                
        </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
