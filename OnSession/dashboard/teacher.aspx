<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="teacher.aspx.cs" Inherits="MATH1.OnSession.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        .waow{
            width: 250px;
            height: 250px;
        }
          
        .auto-style1 {
            display: inline-block;
            vertical-align: middle;
            overflow: hidden;
            text-decoration: none;
            color: inherit;
            text-align: center;
            cursor: pointer;
            white-space: nowrap;
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -khtml-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 8px 16px;
            background-color: inherit;
        }
          
    </style>
    <div > 
        <div class="box">
                <center>
                    <h1 style="font-weight:bold; color:white;">Welcome Teacher! <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> </h1>
                </center>          

            </div>
              <div  class="w3-row-padding">                                                
                <div class="w3-third w3-card w3-white w3-margin waow w3-round-large w3-button">
                    <a href="/OnSession/editGrade.aspx"><h2>Grade</h2></a>
                </div>
                <a  href="/OnSession/dashboard/addQuiz.aspx" class="w3-third w3-card w3-white w3-margin waow w3-round-large w3-button">                
                    <h2>Quizzes</h2> 
                </a>
                <a  href="/OnSession/dashboard/EditClassList.aspx" class="w3-third w3-card w3-white w3-margin waow w3-round-large w3-button">                
                    <h2>Enroll/Drop 
                        <p>student</p>
                    </h2> 
                </a>
            </div>
            <div class="w3-row">
                <div style="width:90%; text-align:center;" class="w3-card w3-white w3-round-large w3-rest w3-margin">
                <h2 style="font-weight:bold;">Your class</h2>  
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
