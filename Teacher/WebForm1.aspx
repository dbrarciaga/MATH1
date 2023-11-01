<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MATH1.Teacher.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        .waow{
            width: 250px;
            height: 250px;
        }
          
        </style>
    <div style="height:1000px;" class="w3-display-middle"> 
        <div class="box" style="margin-top:20%">
                <center>
                    <h1 style="font-weight:bold; color:white;">Welcome Teacher <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> !</h1>
                </center>          

            </div>
              <div  class="w3-row-padding">                                                
                <div class="w3-third w3-card w3-white w3-margin waow w3-round-large w3-button">
                    <a href="/Teacher/fetchGrade.aspx">
                    <h2>Grade</h2>
                        </a>
                </div>
                <a  href="/Teacher/ManageQuizzes.aspx" class="w3-third w3-card w3-white w3-margin waow w3-round-large w3-button">                
                    <h2>Quizzes</h2> 
                </a>
                <a  href="/Teacher/EditClass.aspx" class="w3-third w3-card w3-white w3-margin waow w3-round-large w3-button">                
                    <h2>Enroll/Drop 
                        <p>student</p>
                    </h2> 
                </a>
            </div>
        
            <div class="w3-row">
                
                <div style="width:96%; text-align:center;" class="w3-card w3-white w3-round-large w3-rest w3-margin">
                <h2 style="font-weight:bold;">Your class</h2>  
                    <br />
                    <center>
                        <asp:GridView ID="GridView1" runat="server" CssClass="w3-table-all" Width="500px"></asp:GridView>
                    </center>
                    
                    <div class="w3-row w3-margin">
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="w3-button w3-gray w3-round-large" OnClick="LinkButton1_Click" Height="80" Width="500px">Grade 1</asp:LinkButton>
                    </div>
                     <div class="w3-row w3-margin">
                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="w3-button w3-gray w3-round-large" OnClick="LinkButton2_Click" Height="80" Width="500px">Grade 2</asp:LinkButton>
                    </div>
                     <div class="w3-row w3-margin">
                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="w3-button w3-gray w3-round-large" OnClick="LinkButton3_Click" Height="80" Width="500px">Grade 3</asp:LinkButton>
                    </div>
                     <div class="w3-row w3-margin">
                        <asp:LinkButton ID="LinkButton4" runat="server" CssClass="w3-button w3-gray w3-round-large" OnClick="LinkButton4_Click" Height="80" Width="500px">Grade 4</asp:LinkButton>
                    </div>
                     <div class="w3-row w3-margin">
                        <asp:LinkButton ID="LinkButton5" runat="server" CssClass="w3-button w3-gray w3-round-large" OnClick="LinkButton5_Click" Height="80" Width="500px">Grade 5</asp:LinkButton>
                    </div>
                     <div class="w3-row w3-margin">
                        <asp:LinkButton ID="LinkButton6" runat="server" CssClass="w3-button w3-gray w3-round-large" OnClick="LinkButton6_Click" Height="80" Width="500px">Grade 6</asp:LinkButton>
                    </div>

                <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                </div>
            </div>
    </div>
</asp:Content>
