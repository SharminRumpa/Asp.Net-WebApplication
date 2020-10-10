<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserInformation.aspx.cs" Inherits="WindowsAuthenticationWebApplication.UserInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />  <br />
    
    <img src="../Image/user_image.jpg" height="300" width="1200" />
    <

    <br /><br />

     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
  

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
        AllowPaging="True" PageSize="5" CssClass="table table-bordered table-striped table-condensed"  HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" ><ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:BoundField DataField="StudentName" HeaderText="Student Name" SortExpression="StudentName" ><ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" ><ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" ><ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:BoundField DataField="ContactNo" HeaderText="Contact Number" SortExpression="ContactNo" ><ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:TemplateField HeaderText="Faculty Name" SortExpression="FacultyID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FacultyID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("FacultyName") %>'></asp:Label><ItemStyle CssClass="col-xs-2" /> 
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <HeaderStyle  BackColor="#FFCCFF" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="#990033" />
          <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle CssClass="pagerStyle" BackColor="#ffccff" HorizontalAlign="Center" />
    </asp:GridView>
    


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementBDConnectionString %>"
        SelectCommand="SELECT [StudentID], [StudentName], [Gender], [Address], [ContactNo], [Faculty].[FacultyID], [FacultyName] FROM [Students] JOIN [Faculty] ON [Students].[FacultyID] = [Faculty].[FacultyID] "></asp:SqlDataSource>
                       

    <div class="navbar-collapse collapse">
         <ul class="nav navbar-nav">
              <li><a runat="server" href="~/Action/BookInformation"><h3>Book Information</h3></a></li>
              <li><a runat="server" href="~/Action/AuthorInformation"><h3>Author Information</h3></a></li>
         </ul>
    </div>

      
     </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
