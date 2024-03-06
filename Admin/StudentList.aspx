<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="MATH1.Admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
         .flex-container {
           display: flex;
           justify-content: center; /* Horizontally centers items */
           align-items: center; /* Vertically centers items */
           height: 100vh; /* Adjust as needed */
         }

         .centered-div {
           /* Styles for your centered div */
         }
      </style>
      
     <div style="height:1000px;" class="flex-container">
         
        <div style="width:1000px;" class="centered-div w3-white w3-round-large">
              <br />
              <br />
                <a href="AdminDash.aspx" class="w3-button w3-round-large w3-grey">< back</a>
                 <center>
                      <h1>Students</h1>
                       <p>Enter username or Student ID</p>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <asp:Button ID="Button1" runat="server" CssClass=" w3-round-large w3-button w3-grey" Text="search" OnClick="Button1_Click" />
                 </center>
                  
                  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                  <br />
                  <br />
                  <asp:GridView ID="GridView1" runat="server" CssClass="w3-table-all"></asp:GridView>
                  <br />
      
                  <br />
        </div>
    </div>
</asp:Content>
