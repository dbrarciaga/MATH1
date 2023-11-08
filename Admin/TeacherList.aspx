<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="TeacherList.aspx.cs" Inherits="MATH1.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div style="height:1000px;" class="w3-container">
    <br />
    <br />
    <a href="AdminDash.aspx" class="w3-button w3-white w3-round-large">< back</a>
        <h1>Teachers</h1>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><p> </p><asp:Button ID="Button1" runat="server" CssClass=" w3-round-large w3-button w3-white" Text="search" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <div runat="server" id ="updatePanel" class="w3-container w3-white w3-round-large">
            <h4 class="w3-margin">User details</h4>
            <p>User: <asp:Label ID="name" runat="server" Text="Label"></asp:Label></p>
            <p>Status: <asp:Label ID="status" runat="server" Text="Label"></asp:Label></p>
            <asp:DropDownList ID="statusList" runat="server"></asp:DropDownList>
            <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
            <br />
        </div>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CssClass="w3-table-all"></asp:GridView>
        <br />
        
        <br />
    </div>
</asp:Content>
