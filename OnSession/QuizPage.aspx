﻿<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="QuizPage.aspx.cs" Inherits="MATH1.OnSession.WebForm8" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="/OnSession/selectQuiz.aspx" class="w3-button w3-white w3-round-large"><h4>< back</h4>  </a>
    <div style="margin-left: 10%; height: 1000px; font-family:'Gill Sans MT';">
          <br />
                <br />
                <br />
                <br />
                <br />

               
        <div style="width:80%;" class="w3-container w3-white w3-margin w3-round-xlarge">
            <center>
              
                <div class="w3-row">
                    
                    <h1>QUIZ  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
                    <div>
                            <asp:Label ID="number" runat="server" Text=" "></asp:Label>
                        </div>
                    <div class="w3-half">    
                        <div style="width: 100%; height: 150px; padding: 30px 0; background-color:lightgoldenrodyellow" class="w3-card  w3-round-xlarge w3-animate-left">
                            <h2>
                                <asp:Label ID="quest" runat="server" Text="Question"></asp:Label></h2>
                        </div>
                    </div>
                    <div class="w3-half">
                        <div style="width: 100%; height: 150px; padding: 30px 0;background-color:lightseagreen" class="w3-card  w3-round-xlarge w3-animate-right">
                            <h2>
                                <asp:Label ID="ans" runat="server" Text="Answer"></asp:Label></h2>
                            <br />

                        </div>

                    </div>
                </div>
            </center>
            <br />
            <center>
                <div class="w3-row w3-margin">
                    <asp:Button ID="Button1" runat="server" Text="" CssClass="w3-button w3-white w3-round" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="" CssClass="w3-button w3-white w3-round" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="" CssClass="w3-button w3-white w3-round" OnClick="Button3_Click" />
                    <asp:Button ID="check" runat="server" Text="Check your answer" CssClass="w3-button w3-black w3-round" OnClick="check_Click" />
                    <asp:TextBox Visible="false" ID="TextBox1" runat="server" autocomplete="”off”"></asp:TextBox>
                </div>
                <div class="w3-row w3-margin ">
                    <asp:Button ID="next" runat="server" Text="tap here to start" CssClass="w3-button w3-black w3-round" OnClick="next_Click" />
                    <asp:Button ID="show" runat="server" Text="finish" CssClass="w3-button w3-black w3-round" OnClick="show_Click" />
                </div>
            </center>


           

        </div>
         <div >
                <h2>
                    <asp:Label  ID="score" runat="server" CssClass=" w3-white w3-round-xlarge w3-card-4 w3-margin" Text=" "></asp:Label>

                </h2>
            </div>
    </div>
    <audio id="mybg" controls autoplay loop hidden visible="false">
            <source src="https://feeds.soundcloud.com/stream/1654313922-rencee-c-banez-happy.mp3" loop="true" type="audio/mpeg" />
        </audio>
        <script>
            var audio = document.getElementById("mybg");
            audio.volume = 0.01;
        </script>

</asp:Content>
