﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="MATH1.Main.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="testing" runat="server">
    <center>
        <div class="w3-containter w3-white w3-round-large" style="width:550px">
            <h4>Finalization</h4>
            <br />
            <asp:Label ID="user" runat="server" Text=""></asp:Label>
            <br />
             <br />
            <asp:Label ID="Fname" runat="server" Text=""></asp:Label>
            <br />
             <br />
            <asp:Label ID="Lname" runat="server" Text=""></asp:Label>
            <br />
             <br />
            <asp:Label ID="age" runat="server" Text=""></asp:Label>
            <br />
             <br />
            <asp:Label ID="level" runat="server" Text=""></asp:Label>
            <br />
        </div>
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Button ID="register" runat="server" Text="Register" Cssclass="w3-button w3-white" OnClick="register_Click"/>
   </center>
</asp:Content>
