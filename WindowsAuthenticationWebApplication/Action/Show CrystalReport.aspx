<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Show CrystalReport.aspx.cs" Inherits="WindowsAuthenticationWebApplication.Action.Show_CrystalReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br /><br/< />

     <asp:DropDownList ID="DropDownList4" runat="server"  CssClass="btn btn-primary dropdown-toggle" DataSourceID="SqlDataSource10" DataTextField="BookTitle" DataValueField="BookID"></asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementBDConnectionString %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>

    <br />  <br />

    <asp:Button ID="Button1" runat="server" Text="Show Report" CssClass="btn btn-primary" OnClick="Button1_Click" />
</asp:Content>
