<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="NEW_QUIZ.aspx.cs" Inherits="MATH1.OnSession.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center style="height:1000px">
        <h1>  Challenge: </h1>
        <div runat="server" id="select" style="width:500px; height:300px;" class="w3-card w3-white w3-round-large">
                        
            <h2><asp:Label ID="title" runat="server" Text="  "></asp:Label></h2>
            <asp:Button ID="prev" runat="server" Text="Previous" CssClass="w3-button w3-blue w3-margin w3-round-large w3-medium" Width="100px" Height="100px" OnClick="prev_Click"/><asp:Button ID="next" runat="server" Text="Next"  CssClass="w3-button w3-blue w3-margin w3-round-large w3-medium"  Width="100px" Height="100px" OnClick="next_Click"/>
            <br />
             <asp:Button ID="go" runat="server" Text="go" CssClass="w3-button w3-green w3-margin w3-round-large" OnClick="go_Click" />
        </div>
        <br />
        <div runat="server" id="quizPanel" style="width:800px;" class="w3-card w3-white w3-round-large">
            <br />
           <div class="w3-margin">
                <asp:Label ID="testing" runat="server" Text="Question: "></asp:Label>  <asp:TextBox ID="TextBox1" runat="server" autocomplete="off" ></asp:TextBox>
               <p><asp:Label ID="Label2" runat="server" Text=" "></asp:Label></p>
               <asp:Button ID="ans" runat="server" CssClass="w3-button w3-green w3-margin w3-round-large" Text="Answer" OnClick="ans_Click" /> 
               <asp:Button ID="Button1" runat="server" Text="Next" CssClass="w3-button w3-blue w3-margin w3-round-large" OnClick="Button1_Click" />
           </div>
           
        </div>
        <br />
        <div runat="server" id="summary" style="width:500px" class="w3-card w3-white w3-round-large">
            <h1> you're finished!</h1>
            <p>You got  <asp:Label ID="scoreDisnut" runat="server" Text="Label"></asp:Label> stars! </p>          
            <asp:Button ID="submit" runat="server" Text="Go back to dashboard" CssClass="w3-button w3-blue w3-round-large w3-margin" OnClick="submit_Click" />
            <br />
            <br />
        </div>
    </center>
     <audio id="mybg" controls autoplay loop hidden visible="false">
            <source src="https://feeds.soundcloud.com/stream/1654313922-rencee-c-banez-happy.mp3" loop="true" type="audio/mpeg" />
        </audio>
        <script>
            var audio = document.getElementById("mybg");
            audio.volume = 0.01;
        </script>
</asp:Content>
