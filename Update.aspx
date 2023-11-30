<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="ISIT300WebApp.Update"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">





    <p class="text-center" style="color: #FF33CC">
        <br style="font-size: xx-large" />
        <span style="font-size: xx-large">Update Author</span></p>
    <p class="text-center" style="color: #FF33CC">
        &nbsp;</p>
    <p class="text-center" style="color: #FF33CC; text-decoration: underline; font-size: large">
        Select author name and edit!</p>
    <p class="text-center" style="color: #FF33CC; text-decoration: underline; font-size: large">
        &nbsp;</p>
    <p class="text-center" style="color: #FF33CC; text-decoration: underline; font-size: large">
        <asp:DropDownList ID="ANameDropdown" runat="server" DataSourceID="SqlDataSource1" DataTextField="AuthorName" DataValueField="AuthorName" OnSelectedIndexChanged="ANameDropdown_SelectedIndexChanged" AutoPostBack="true">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ML-RefVm-726242 %>" SelectCommand="SELECT [AuthorName] FROM [Author]"></asp:SqlDataSource>
    </p>
    <p class="text-center" style="color: #FF00FF; text-decoration: underline; font-size: large">
        Edit The Name</p>
    <p class="text-center" style="color: #FF33CC; text-decoration: underline; font-size: large">
        <asp:TextBox ID="NameEditTextBox" runat="server"></asp:TextBox>
    </p>
    <p class="text-center" style="color: #FF33CC; text-decoration: underline; font-size: large">
        &nbsp;</p>
    <p class="text-center" style="color: #FF33CC; text-decoration: underline; font-size: large">
        <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="UPDATE" />
    </p>
    <p class="text-center" style="color: #FF33CC">
        &nbsp;</p>





</asp:Content>
