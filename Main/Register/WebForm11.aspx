<%@ Page Title="" Language="C#" MasterPageFile="~/Main/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="MATH1.Main.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="testing" runat="server">
    <center>
        <div class="w3-containter w3-white w3-round-large w3-card" style="width:550px">    
            <br />

            <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
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
       
        <br />
        <p>Your ID: <asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
            <br />
       
            <br />
        </div>
        <br />
         <asp:Button ID="register" runat="server" Text="Register" Cssclass="w3-button w3-card w3-white w3-round-large w3-margin" OnClick="register_Click"/>
        <br />
   </center>
</asp:Content>
