<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="editGrade.aspx.cs" Inherits="MATH1.OnSession.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="height:750px">
          <div class="w3-container">
        <center>
            <h1 style="color:white;">Edit Grade</h1>
        </center>
    </div>
    <center>
    <div style="width:400px" class="w3-card w3-white w3-margin">
            <p>Enter student: </p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="search" runat="server" Text="search" />            
    </div>
    </center>
    <!-- -->
         <!-- -->
         <!-- -->

    <center>
    <asp:Panel ID="Panel1" runat="server">
        <div style="width:500px" class="w3-card w3-blue w3-round-large">
            <h1>testing</h1>
        </div>
    </asp:Panel>
    </center>
     </div>
</asp:Content>
