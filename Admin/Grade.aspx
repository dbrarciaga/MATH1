<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Grade.aspx.cs" Inherits="MATH1.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w3-container w3-white">
        <center>
            <h1>Edit Grade</h1>
        </center>
    </div>

    <div style="width:400px" class="w3-card w3-white w3-margin">
        <center>
            <p>Enter student: </p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="search" runat="server" Text="search" />
        </center>      
    </div>

    <asp:Panel ID="Panel1" runat="server">
        <div class="w3-card w3-blue">
            <h1>testing</h1>
        </div>
    </asp:Panel>
</asp:Content>
