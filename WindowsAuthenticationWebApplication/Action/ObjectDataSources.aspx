<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ObjectDataSources.aspx.cs" Inherits="WindowsAuthenticationWebApplication.ObjectDataSources" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br /> <br/>


    <h3>BookDetails Data Show By ListView Using View </h3>

    <br />

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    </Triggers>

    <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                </td>
                <td>
                    <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                </td>
                <td>
                    <asp:Label ID="AuthorNameLabel" runat="server" Text='<%# Eval("AuthorName") %>' />
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="80" Width="100" ImageUrl='<%# Eval("ImageFile") %>' />
                </td>
                <td>
                    <asp:Label ID="FacultyNameLabel" runat="server" Text='<%# Eval("FacultyName") %>' />
                </td>
                <td>
                    <asp:Label ID="StudentNameLabel" runat="server" Text='<%# Eval("StudentName") %>' />
                </td>
                <td>
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                </td>
                <td>
                    <asp:Label ID="ContactNoLabel" runat="server" Text='<%# Eval("ContactNo") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AuthorNameTextBox" runat="server" Text='<%# Bind("AuthorName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FacultyNameTextBox" runat="server" Text='<%# Bind("FacultyName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="StudentNameTextBox" runat="server" Text='<%# Bind("StudentName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ContactNoTextBox" runat="server" Text='<%# Bind("ContactNo") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AuthorNameTextBox" runat="server" Text='<%# Bind("AuthorName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                </td>
                <td>
                    <asp:TextBox ID="FacultyNameTextBox" runat="server" Text='<%# Bind("FacultyName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="StudentNameTextBox" runat="server" Text='<%# Bind("StudentName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ContactNoTextBox" runat="server" Text='<%# Bind("ContactNo") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;">
                <td>
                    <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                </td>
                <td>
                    <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                </td>
                <td>
                    <asp:Label ID="AuthorNameLabel" runat="server" Text='<%# Eval("AuthorName") %>' />
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="80" Width="100" ImageUrl='<%# Eval("ImageFile") %>' />
                    
                </td>
                <td>
                    <asp:Label ID="FacultyNameLabel" runat="server" Text='<%# Eval("FacultyName") %>' />
                </td>
                <td>
                    <asp:Label ID="StudentNameLabel" runat="server" Text='<%# Eval("StudentName") %>' />
                </td>
                <td>
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                </td>
                <td>
                    <asp:Label ID="ContactNoLabel" runat="server" Text='<%# Eval("ContactNo") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                <th runat="server">Book ID</th>
                                <th runat="server">Book Title</th>
                                <th runat="server">Author Name</th>
                                <th runat="server">Image File</th>
                                <th runat="server">Faculty Name</th>
                                <th runat="server">Student Name</th>
                                <th runat="server">Address</th>
                                <th runat="server">Contact No</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="btn btn-default" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                </td>
                <td>
                    <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                </td>
                <td>
                    <asp:Label ID="AuthorNameLabel" runat="server" Text='<%# Eval("AuthorName") %>' />
                </td>
                <td>
                    <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                </td>
                <td>
                    <asp:Label ID="FacultyNameLabel" runat="server" Text='<%# Eval("FacultyName") %>' />
                </td>
                <td>
                    <asp:Label ID="StudentNameLabel" runat="server" Text='<%# Eval("StudentName") %>' />
                </td>
                <td>
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                </td>
                <td>
                    <asp:Label ID="ContactNoLabel" runat="server" Text='<%# Eval("ContactNo") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>

     <br /> <br/>

     <h3>Insert, Update, Delect on Books Table By Details View</h3>
    <br />

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Select" TypeName="WindowsAuthenticationWebApplication.BookDetailsBD"></asp:ObjectDataSource>

    <br /> <br/>

    
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="800px" AutoGenerateRows="False" DataSourceID="ObjectDataSource2" DataKeyNames="BookID"
        AllowPaging="True" CssClass="table table-bordered table-striped table-condensed" Font-Bold="False" Font-Italic="True" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdating="DetailsView1_ItemUpdating" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated">
        <Fields>
            <asp:TemplateField HeaderText="Book ID" SortExpression="BookID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BookID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BookID") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("BookID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Book Title" SortExpression="BookTitle">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("BookTitle") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("BookTitle") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("BookTitle") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author Name" SortExpression="AuthorName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("AuthorName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("AuthorName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("AuthorName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ISBN") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ISBN") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="No Of Page" SortExpression="NoOfPage">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("NoOfPage") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("NoOfPage") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("NoOfPage") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Faculty ID" SortExpression="FacultyID">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource15" DataTextField="FacultyID" DataValueField="FacultyID" SelectedValue='<%# Bind("FacultyID") %>'></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource15" ConnectionString='<%$ ConnectionStrings:LibraryManagementBDConnectionString %>' SelectCommand="SELECT [FacultyID] FROM [Faculty]"></asp:SqlDataSource>
                    <%--<asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("FacultyID") %>'></asp:TextBox>--%>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="SqlDataSource16" DataTextField="FacultyID" DataValueField="FacultyID" SelectedValue='<%# Bind("FacultyID") %>'></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource16" ConnectionString='<%$ ConnectionStrings:LibraryManagementBDConnectionString %>' SelectCommand="SELECT [FacultyID] FROM [Faculty]"></asp:SqlDataSource>
                   <%-- <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("FacultyID") %>'></asp:TextBox>--%>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("FacultyID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image File" SortExpression="ImageFile">
                <EditItemTemplate>
                    <asp:Image ID="Image3" runat="server" Height="150" Width="150" ImageUrl='<%# Eval("ImageFile") %>' />
                     Change Image:<asp:FileUpload ID="FileUpload1" runat="server" />
                   
                </EditItemTemplate>
                <InsertItemTemplate>
                    Upload Image:<asp:FileUpload ID="FileUpload2" runat="server" /> 
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" Height="150" Width="150" ImageUrl='<%# Eval("ImageFile") %>' />
                    
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-default btn-primary" ItemStyle-HorizontalAlign="Center" />
        </Fields>
    </asp:DetailsView>
        </Triggers>
    </ContentTemplate>
    
    </asp:UpdatePanel> 
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DataObjectTypeName="WindowsAuthenticationWebApplication.Book" 
                DeleteMethod="Delect" 
                InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
                SelectMethod="Select" TypeName="WindowsAuthenticationWebApplication.BookBD" 
                UpdateMethod="Update"></asp:ObjectDataSource>
        
    
   </asp:Content>
