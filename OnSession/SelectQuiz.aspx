<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="SelectQuiz.aspx.cs" Inherits="MATH1.OnSession.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <a href="/OnSession/dashboard/dasdboard.aspx" class="w3-button w3-white w3-round-large"><h4>< back</h4>  </a>
    <div style="height:1000px" class="w3-card w3-white w3-margin">
        <center><h1 style="font-family:'Gill Sans MT'; font-size:80px; text-decoration:underline">Select Challlenge</h1></center>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

       <center>
           <div class="w3-row-padding">
      


            <div class="w3-third" visible="false">
                <asp:ImageButton Visible="false" ID="prev" ImageUrl="https://i.imgur.com/ljxDMhZ.png" runat="server" Text="<<<<"  Height="50%" Width="50%" OnClick="prev_Click" />
                <img id="noBut" src="https://i.imgur.com/doArb9F.png" runat="server"   style="height:50%; width:50%" />
            </div>
        


               <div class="w3-third">
                   <b style="font-family: 'Gill Sans MT'; font-size: 25px;">
                       <asp:Button ID="select" runat="server" Text="select" CssClass="w3-button w3-deep-purple w3-round-xlarge" Height="120px" Width="50%" OnClick="select_Click" /></b>
               </div>
          


            <div class="w3-third" visible="false">
                <asp:ImageButton Visible="false" ID="nxt" ImageUrl="https://i.imgur.com/qnuhWgg.png" runat="server" Text=">>>>" Height="50%" Width="50%" OnClick="nxt_Click" /> 
            </div>
        


        </div>

       </center>
        
    </div>
     <audio id="mybg" controls autoplay loop hidden visible="false">
            <source src="https://feeds.soundcloud.com/stream/1654313922-rencee-c-banez-happy.mp3" loop="true" type="audio/mpeg" />
        </audio>
        <script>
            var audio = document.getElementById("mybg");
            audio.volume = 0.01;
        </script>
    
</asp:Content>
