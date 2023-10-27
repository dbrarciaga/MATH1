<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="fetchGrade.aspx.cs" Inherits="MATH1.Teacher.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="height:2000px">
          <div class="w3-container">
        <center>
            <h1 style="color:white;">View Grade</h1>
        </center>
    </div>
    <center>
    <div style="width:400px" class="w3-card w3-white w3-margin w3-round-large">
            <p>Enter student: </p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="search" runat="server" Text="search" OnClick="search_Click" />
        <br />
        <br />

        
    </div>
    
    </center>
    <!-- -->
         <!-- -->
         <!-- -->

    <center>
        <h3><asp:Label ID="Label1" runat="server" Text=" " ForeColor="white"></asp:Label></h3>
        <asp:GridView ID="GridView1" runat="server" CssClass="w3-table w3-hoverable w3-white w3-round-large" Width="1000px"></asp:GridView>
        <h1 style="color:white;">Roster: </h1>
        <div class="w3-row-padding">
            <asp:LinkButton ID="LinkButton1" runat="server" Height="100px" Width="300px" style="text-align:center; align-content:center;" CssClass="w3-third w3-button w3-white w3-margin w3-round-large" OnClick="LinkButton1_Click">Grade 1</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" Height="100px" Width="300px" style="text-align:center;" CssClass="w3-third w3-button w3-white w3-margin w3-round-large" OnClick="LinkButton2_Click">Grade 2</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" Height="100px" Width="300px" style="text-align:center;" CssClass="w3-third w3-button w3-white w3-margin w3-round-large" OnClick="LinkButton3_Click">Grade 3</asp:LinkButton>           
        </div>
        <div class="w3-row-padding">
            <asp:LinkButton ID="LinkButton4" runat="server" Height="100px" Width="300px" style="text-align:center;" CssClass="w3-third w3-button w3-white w3-margin w3-round-large" OnClick="LinkButton4_Click">Grade 4</asp:LinkButton>
            <asp:LinkButton ID="LinkButton5" runat="server" Height="100px" Width="300px" style="text-align:center;" CssClass="w3-third w3-button w3-white w3-margin w3-round-large" OnClick="LinkButton5_Click">Grade 5</asp:LinkButton>
            <asp:LinkButton ID="LinkButton6" runat="server" Height="100px" Width="300px" style="text-align:center;" CssClass="w3-third w3-button w3-white w3-margin w3-round-large" OnClick="LinkButton6_Click">Grade 6</asp:LinkButton>
       </div>
        
        
    </center>
     </div>
</asp:Content>
