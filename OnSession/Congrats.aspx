<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="Congrats.aspx.cs" Inherits="MATH1.OnSession.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:1000px;">
        <div class="w3-card w3-white">
            <h1>Congratulations You level up to Grade <asp:Label ID="Label1" runat="server" Text="0"></asp:Label></h1>
            <br />
            <br />
            <a href="dashboard/dasdboard.aspx" class="w3-button w3-grey w3-margin w3-round-large"> Press here to Continue </a>
           

        </div>
    </div>
</asp:Content>
