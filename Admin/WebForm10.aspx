<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="MATH1.Admin.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center style="height:1000px">
       <h1> Student Information</h1>
        <br />
        <h3> Search student's username or student ID</h3>
        <br />
        <asp:TextBox ID="search" runat="server"></asp:TextBox><span>   </span><asp:Button ID="Button1" runat="server" Text="search" CssClass="w3-button w3-white w3-round-large" OnClick="Button1_Click"/>
       <br />
        <div ID="div1" runat="server" style="width:720px" class="w3-card w3-white w3-round-large">
            <h4>Name <b><asp:Label ID="F_name" runat="server" Text=" Name here "></asp:Label></b></h4>
            <h4>Grade Level: <b><asp:Label ID="GradeLevel" runat="server" Text="0"></asp:Label></b></h4>
            <br />
            <h4>Progress</h4>
            <br />
            <asp:Label ID="progressBar" runat="server" Text="Progress"></asp:Label>
            <br />
        </div>

   </center>


</asp:Content>
