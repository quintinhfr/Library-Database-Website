<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ISIT300WebApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="text-decoration: underline"><em><span style="color: #FF0000">Remove Entry</span> </em></h1>
    <h1>Enter ISBN To Remove A Book</h1>
    <h2>-------------------------------------------------------------------------------------------------</h2>
    <p style="text-decoration: underline; color: #FF0000"><strong>Enter ISBN Below To Delete Entry</strong></p>
    <p style="text-decoration: underline; color: #FF0000">&nbsp;</p>
    <p>
        <asp:TextBox ID="RemoveISBNTextBox" runat="server"></asp:TextBox>
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="White" Height="57px" OnClick="Button1_Click" Text="REMOVE" Width="317px" />
    </p>
    <p>&nbsp;</p>
</asp:Content>
