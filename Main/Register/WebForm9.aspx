<%@ Page Title="" Language="C#" MasterPageFile="~/Main/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="MATH1.Main.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="testing" runat="server">
    <center>
        <div class="w3-containter w3-white w3-round-large" style="width:550px">
            <h4>Account</h4>        
            <p>User name:</p>
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <br />
             <p>Password:</p>
            <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>           
            <br />
            <asp:Button ID="next" runat="server" Text="Next" OnClick="next_Click" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
   </center>
</asp:Content>
