<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="auditLog.aspx.cs" Inherits="MATH1.Admin.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="height:1000px;" class="w3-container">
    <br />
    <br />
    <a href="AdminDash.aspx" class="w3-button w3-white w3-round-large">< back</a>
        <h1>Audit Log</h1>       
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
         
         <div style="max-height:600px;overflow-y:scroll;">
             <asp:GridView ID="GridView1" runat="server" CssClass="w3-table-all" Height="150px"></asp:GridView>
         </div>
        
        <br />
        
        <br />
    </div>
</asp:Content>
