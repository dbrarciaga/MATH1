<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="ViewGradePerRoster.aspx.cs" Inherits="MATH1.Teacher.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Grade <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h1>
    <br />
   <div class="w3-container w3-white w3-round-large">
        <p>Select entry: </p>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
       <br />
       <br />
       <asp:GridView ID="GridView1" runat="server"></asp:GridView>
   </div>
    
</asp:Content>
