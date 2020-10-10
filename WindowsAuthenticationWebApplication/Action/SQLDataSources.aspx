<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SQLDataSources.aspx.cs" Inherits="WindowsAuthenticationWebApplication.SQLDataSources" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Faculty Table Show By DataList</h3>

    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>
    </Triggers>

    <asp:DataList ID="DataList1" runat="server" BorderColor="#FFCC99" DataKeyField="FacultyID" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-striped table-condensed" Width="768px">
        <HeaderStyle BackColor="#FFCCFF" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="#990033" />
        <HeaderTemplate>
            <span class="col-xs-6">Faculty ID</span>
            <span class="col-xs-6">Faculty Name</span>
        </HeaderTemplate>
        <ItemTemplate> 
            <asp:Label ID="FacultyIDLabel" runat="server" Text='<%# Eval("FacultyID") %>' CssClass="col-xs-6" />
            <asp:Label ID="FacultyNameLabel" runat="server" Text='<%# Eval("FacultyName") %>' CssClass="col-xs-6" />
        </ItemTemplate>
    </asp:DataList>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementBDConnectionString %>" SelectCommand="SELECT * FROM [Faculty]"></asp:SqlDataSource>
   

    <br /> <br />

     <h3>Student Table Show By Grid View</h3>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource2"
        AllowPaging="True" PageSize="5" AllowSorting="True" CssClass="table table-bordered table-striped table-condensed">
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="Student ID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID"  > <ItemStyle CssClass="col-xs-1" /> </asp:BoundField>
            <asp:BoundField DataField="StudentName" HeaderText="Student Name" SortExpression="StudentName" > <ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" > <ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" > <ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:BoundField DataField="ContactNo" HeaderText="Contact NUmber" SortExpression="ContactNo" > <ItemStyle CssClass="col-xs-2" /> </asp:BoundField>
            <asp:BoundField DataField="FacultyID" HeaderText="Faculty ID" SortExpression="FacultyID" > <ItemStyle CssClass="col-xs-1" /> </asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="bg-halloween" />
        <PagerSettings Mode="NumericFirstLast" />
        <PagerStyle CssClass="pagerStyle" BackColor="#ffccff" HorizontalAlign="Center" />
    </asp:GridView>

        </Triggers>
        </ContentTemplate>
</asp:UpdatePanel>
    
    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementBDConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>

     <br /> <br />

    <h3>Insert, Update, Delect on Books Table By Details View with Validation</h3>
    <br />
    

        
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="BookID" DataValueField="BookID" Width="200px"
        CssClass="btn btn-primary dropdown-toggle" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"  ></asp:DropDownList>
       
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementBDConnectionString %>" SelectCommand="SELECT [BookID] FROM [Books]"></asp:SqlDataSource>

    <br /><br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="800px" AutoGenerateRows="False" DataKeyNames="BookID" DataSourceID="SqlDataSource4"
        AllowPaging="True" CssClass="table table-bordered table-striped table-condensed" Font-Bold="False" Font-Italic="True" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdating="DetailsView1_ItemUpdating" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" >
        <PagerSettings Mode="NextPreviousFirstLast" />
        <FieldHeaderStyle ForeColor="#3333CC" />
        <PagerStyle CssClass="pagerStyle" BackColor="#ffccff" HorizontalAlign="Center" />
        <Fields>
            <asp:TemplateField HeaderText="Book ID" InsertVisible="False" SortExpression="BookID" HeaderStyle-Height="20px">
                <HeaderStyle Height="20px"></HeaderStyle>
                <ItemStyle CssClass="col-xs-1" />
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Width="300px" Text='<%# Eval("BookID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Width="400px" Text='<%# Bind("BookID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Book Title" SortExpression="BookTitle"> <ItemStyle CssClass="col-xs-1"/>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BookTitle") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BookTitle") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-danger" 
                        ControlToValidate="TextBox1" ErrorMessage="Author Name is a required field" Display="Dynamic"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("BookTitle") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author Name" SortExpression="AuthorName"> <ItemStyle CssClass="col-xs-1" />
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("AuthorName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("AuthorName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger" 
                        ControlToValidate="TextBox2" ErrorMessage="Author Name is a required field" Display="Dynamic"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("AuthorName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ISBN" SortExpression="ISBN"> <ItemStyle CssClass="col-xs-1" />
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ISBN") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ISBN") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ISBN") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="No Of Page" SortExpression="NoOfPage"> <ItemStyle CssClass="col-xs-1" />
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("NoOfPage") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("NoOfPage") %>' MaxLength="4"></asp:TextBox>
                    
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("NoOfPage") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Faculty ID" SortExpression="FacultyID"> <ItemStyle CssClass="col-xs-1" />
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource5" DataTextField="FacultyID" DataValueField="FacultyID" SelectedValue='<%# Bind("FacultyID") %>'></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:LibraryManagementBDConnectionString %>' SelectCommand="SELECT [FacultyID] FROM [Faculty]"></asp:SqlDataSource>
                    <%--<asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("FacultyID") %>'></asp:TextBox>--%>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource6" DataTextField="FacultyID" DataValueField="FacultyID" SelectedValue='<%# Bind("FacultyID") %>'></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:LibraryManagementBDConnectionString %>' SelectCommand="SELECT [FacultyID] FROM [Faculty]"></asp:SqlDataSource>
                    <%--<asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("FacultyID") %>'></asp:TextBox>--%>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("FacultyID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image File" SortExpression="ImageFile"> <ItemStyle CssClass="col-xs-1" />
                <EditItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="150" Width="150" ImageUrl='<%# Bind("ImageFile") %>' /><br />
                Change Image: <asp:FileUpload ID="FileUpload1" runat="server" />
                    <%--<asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ImageFile") %>'></asp:TextBox>--%>
                </EditItemTemplate>
                <InsertItemTemplate>
                Upload Image: <asp:FileUpload ID="FileUpload2" runat="server" />
                    
                </InsertItemTemplate>
                <ItemTemplate> <ItemStyle CssClass="col-xs-6" />
                    <asp:Image ID="Image1" runat="server" Height="150" Width="150" ImageUrl='<%# Bind("ImageFile") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <InsertItemTemplate>
                    <asp:Button ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-success" ItemStyle-HorizontalAlign="Center"></asp:Button>
                    &nbsp;<asp:Button ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-warning" ItemStyle-HorizontalAlign="Center"></asp:Button>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="LinkButton3" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-primary" ItemStyle-HorizontalAlign="Center"></asp:Button>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="LinkButton4" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-success" ItemStyle-HorizontalAlign="Center"></asp:Button>
                    &nbsp;<asp:Button ID="LinkButton5" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-warning" ItemStyle-HorizontalAlign="Center"></asp:Button>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="LinkButton6" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-info" ItemStyle-HorizontalAlign="Center" ></asp:Button>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="LinkButton7" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" ItemStyle-HorizontalAlign="Center"></asp:Button>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
        </ContentTemplate>

        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged" />
        </Triggers>
</asp:UpdatePanel>


    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryManagementBDConnectionString %>" 
        DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @original_BookID AND (([BookTitle] = @original_BookTitle) OR ([BookTitle] IS NULL AND @original_BookTitle IS NULL)) AND [AuthorName] = @original_AuthorName AND (([ISBN] = @original_ISBN) OR ([ISBN] IS NULL AND @original_ISBN IS NULL)) AND (([NoOfPage] = @original_NoOfPage) OR ([NoOfPage] IS NULL AND @original_NoOfPage IS NULL)) AND (([FacultyID] = @original_FacultyID) OR ([FacultyID] IS NULL AND @original_FacultyID IS NULL)) AND (([ImageFile] = @original_ImageFile) OR ([ImageFile] IS NULL AND @original_ImageFile IS NULL))"
        InsertCommand="INSERT INTO [Books] ([BookTitle], [AuthorName], [ISBN], [NoOfPage], [FacultyID], [ImageFile]) VALUES (@BookTitle, @AuthorName, @ISBN, @NoOfPage, @FacultyID, @ImageFile)"
        OldValuesParameterFormatString="original_{0}"
        SelectCommand="SELECT * FROM [Books] WHERE ([BookID] = @BookID)" 
        UpdateCommand="UPDATE [Books] SET [BookTitle] = @BookTitle, [AuthorName] = @AuthorName, [ISBN] = @ISBN, [NoOfPage] = @NoOfPage, [FacultyID] = @FacultyID, [ImageFile] = @ImageFile WHERE [BookID] = @original_BookID AND (([BookTitle] = @original_BookTitle) OR ([BookTitle] IS NULL AND @original_BookTitle IS NULL)) AND [AuthorName] = @original_AuthorName AND (([ISBN] = @original_ISBN) OR ([ISBN] IS NULL AND @original_ISBN IS NULL)) AND (([NoOfPage] = @original_NoOfPage) OR ([NoOfPage] IS NULL AND @original_NoOfPage IS NULL)) AND (([FacultyID] = @original_FacultyID) OR ([FacultyID] IS NULL AND @original_FacultyID IS NULL)) AND (([ImageFile] = @original_ImageFile) OR ([ImageFile] IS NULL AND @original_ImageFile IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_BookID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="AuthorName" Type="String" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="NoOfPage" Type="Int32" />
            <asp:Parameter Name="FacultyID" Type="Int32" />
            <asp:Parameter Name="ImageFile" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="BookID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="AuthorName" Type="String" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="NoOfPage" Type="Int32" />
            <asp:Parameter Name="FacultyID" Type="Int32" />
            <asp:Parameter Name="ImageFile" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <br />

    <br />  <br />

    </asp:Content>
