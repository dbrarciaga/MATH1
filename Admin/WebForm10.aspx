﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="MATH1.Admin.WebForm10" %>
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
      <br />
   <div class="flex-container" style="height:1500px">
       <div class="centered-div" >             
                <h1 style="text-align:center;"> Student Information</h1>
                 <br />
                 <h3 style="text-align:center;"> Search student's username or student ID</h3>
                 <br />
                 <center><asp:TextBox ID="search" runat="server"></asp:TextBox><span>   </span><asp:Button ID="Button1" runat="server" Text="search" CssClass="w3-button w3-white w3-round-large" OnClick="Button1_Click"/></center>
                <br />
                 <div ID="div1" runat="server" style="width:720px" class="w3-card w3-white w3-round-large">
                             <div class="w3-margin">
                                  <h4><asp:Label ID="active" runat="server" Text=" "></asp:Label> Name <b><asp:Label ID="F_name" runat="server" Text=" Name here "></asp:Label></b></h4>  
                                 <h4>Student ID: <b><asp:Label ID="ID" runat="server" Text=" "></asp:Label></b></h4>
                                 <h4>E-Mail: <b><asp:Label ID="email" runat="server" Text="email"></asp:Label></b></h4>            
                                 <h4>Grade Level: <b><asp:Label ID="GradeLevel" runat="server" Text="0"></asp:Label></b></h4>           
                                 <h4 style="text-align:center;">Progress</h4>
                                 <br />
                                 <asp:Label ID="progressBar" runat="server" Text="Progress"></asp:Label>
                                 <br />
                                 <h4> Overall task</h4>
                                 <div style="max-height:200px;overflow-y:scroll;">
                                     <asp:GridView ID="GridView1" runat="server" CssClass="w3-table-all"  Height="150px"></asp:GridView>
                                 </div>
                                 <br />
                                 <h4>Exercises</h4>
                                    <div style="max-height:200px;overflow-y:scroll;">
                                        <asp:GridView ID="GridView2" runat="server" CssClass="w3-table-all"  Height="150px"></asp:GridView>
                                    </div>
                                 <br />
                                  <br />
                                    <h4>Quizes</h4>
                                       <div style="max-height:200px;overflow-y:scroll;">
                                           <asp:GridView ID="GridView3" runat="server" CssClass="w3-table-all"  Height="150px"></asp:GridView>
                                       </div>
                                    <br />
                                 <br />
                                <div class="w3-row-padding">
                                    <asp:Button ID="print" runat="server" Text="Print" Css="w3-half w3-button" OnClick="print_Click"/>
                                    <asp:Button ID="Edit" runat="server" Text="Edit"  Css="w3-half w3-button"/>
                                </div>     
                                <br />
                             </div>
                         
                        </div>
                 
             </div>
           
        </div>
       

</asp:Content>
