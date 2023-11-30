<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ISIT300WebApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="text-decoration: underline">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ML-RefVm-726242 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Author]"></asp:SqlDataSource>
        <span style="color: #00FF00">Add</span><em><span style="color: #00FF00"> Entry</span> </em></h1>
    <h1>Enter Book/Author Information to Add an Entry</h1>
    <h2>-------------------------------------------------------------------------------------------------</h2>
    <p style="font-size: xx-large; color: #00CC66">Add Book</p>
    <p style="color: #0066FF; width: 406px; text-align: left"><strong>ISBN</strong></p>
    <p>
        <asp:TextBox ID="ISBNinput" runat="server" ></asp:TextBox>
    </p>
    <p style="color: #0066FF; width: 406px; text-align: left">Book Name</p>
    <p>
        <asp:TextBox ID="BookNameInput" runat="server"></asp:TextBox>
    </p>
    <p style="color: #0066FF; width: 406px; text-align: left">Format</p>
    <p style="color: #0066FF; width: 406px; text-align: left">
        <asp:DropDownList ID="FormatDropDown" runat="server" DataSourceID="SqlDataSource2" DataTextField="FormatName" DataValueField="FormatID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ML-RefVm-726242 %>" SelectCommand="SELECT * FROM [Format]"></asp:SqlDataSource>
    </p>
    <p style="color: #0066FF; width: 406px; text-align: left">Genre</p>
    <p style="color: #0066FF; width: 406px; text-align: left">
        <asp:DropDownList ID="GenreDropDown" runat="server" DataSourceID="SqlDataSource3" DataTextField="GenreName" DataValueField="GenreID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ML-RefVm-726242 %>" SelectCommand="SELECT * FROM [Genre]"></asp:SqlDataSource>
    </p>
    <p style="color: #0066FF; width: 406px; text-align: left">Book Cover</p>
    <p style="color: #0066FF; width: 406px; text-align: left">
        <asp:FileUpload ID="BookCoverFileUpload" runat="server" />
    </p>
    <p style="color: #0066FF; width: 406px; text-align: left">
        Publish Date</p>
    <p style="color: #0066FF; width: 406px; text-align: left">
        <asp:Calendar ID="PublishCalendar" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
    </p>
    <p style="color: #0066FF; width: 406px; text-align: left">
        AuthorID</p>
    <p>
        <asp:DropDownList ID="AuthorIDDropDown" runat="server" DataSourceID="SqlDataSource4" DataTextField="AuthorName" DataValueField="AuthorID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ML-RefVm-726242 %>" SelectCommand="SELECT [AuthorID], [AuthorName] FROM [Author]"></asp:SqlDataSource>
    </p>
    <p style="text-decoration: underline">
        <asp:Button ID="Button3" runat="server" BackColor="Lime" ForeColor="White" Height="57px" OnClick="Button1_Click" Text="ADD" Width="385px" />
    </p>
    <p style="text-decoration: underline">
        &nbsp;</p>
    <p style="text-decoration: underline">
        --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</p>
    <p style="font-size: xx-large; color: #00CC66">
        Add Author</p>
    <p style="color: #FF00FF; width: 406px; text-align: left">Name</p>
    <p style="font-size: x-large">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p style="color: #FF00FF; width: 406px; text-align: left">Picture</p>
    <p style="font-size: x-large">
        <asp:FileUpload ID="FileUpload1" runat="server" /></p>
    <p style="color: #FF00FF; width: 406px; text-align: left">Date of Birth</p>
    <p style="font-size: x-large">
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
    </p>
    <p style="font-size: x-large">
        &nbsp;</p>
    <p style="font-size: x-large">
        <asp:Button ID="Button2" runat="server" BackColor="Lime" ForeColor="White" Height="57px" OnClick="Button2_Click" Text="ADD" Width="385px" />
    </p>
</asp:Content>
