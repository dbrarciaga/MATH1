<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="ClassList.aspx.cs" Inherits="MATH1.OnSession.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <a href=""
    <div class="w3-container w3-white">
        <h1>Class list</h1>
        <asp:GridView ID="GridView1" runat="server" CssClass="w3-table w3-white w3-hoverable w3-striped" Width="1000px"></asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
