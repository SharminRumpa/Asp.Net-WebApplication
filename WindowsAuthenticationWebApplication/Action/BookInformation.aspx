<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookInformation.aspx.cs" Inherits="WindowsAuthenticationWebApplication.BookInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />  <br />
    
    <img src="../Image/library-book-shelf-.jpg" height="300" width="1200" />
   
    <br /><br />

    <h3>Book Availabe </h3>

     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
    

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1"
         AllowPaging="True" PageSize="5" AllowSorting="True" CssClass="table table-bordered table-striped table-condensed">
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="Book ID" InsertVisible="False" ReadOnly="True" SortExpression="BookID" ><ItemStyle CssClass="col-xs-1" /> </asp:BoundField>
            <asp:BoundField DataField="BookTitle" HeaderText="Book Title" SortExpression="BookTitle" ><ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:BoundField DataField="AuthorName" HeaderText="Author Name" SortExpression="AuthorName" ><ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" ><ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:BoundField DataField="NoOfPage" HeaderText="No Of Page" SortExpression="NoOfPage" ><ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:TemplateField HeaderText="Image File" SortExpression="ImageFile">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ImageFile") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100" Width="150" ImageUrl='<%# Eval("ImageFile") %>' /><ItemStyle CssClass="col-xs-1" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle BackColor="#FFCCFF" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="#990033" />
         <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle CssClass="pagerStyle" BackColor="#ffccff" HorizontalAlign="Center" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementBDConnectionString %>" SelectCommand="SELECT [BookID], [BookTitle], [AuthorName], [ISBN], [NoOfPage], [ImageFile] FROM [Books]"></asp:SqlDataSource>

    <div class="navbar-collapse collapse">
         <ul class="nav navbar-nav">
              <li><a runat="server" href="~/Action/AuthorInformation"><h3>Author Information</h3></a></li>
              <li><a runat="server" href="~/Action/UserInformation"><h3>User Information</h3></a></li>
         </ul>
    </div>

              
        </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
