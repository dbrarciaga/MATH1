<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="dasdboard.aspx.cs" Inherits="MATH1.OnSession.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <style>
        .box {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .center {
            border: 5px solid;
            margin: auto;
            width: 50%;
            padding: 10px;
        }
           .TextBoxNiWaow{
            padding:5px;
            font-size:20px;
            font-weight:bold;
            font-family:Calibri;
            border-radius:30px;
        }
    </style>
    <!-- Page Content -->
    <div>
        <div class="box w3-animate-right">
            <h1 style="font-weight: bold; background-color: white; border-radius: 12px; padding: 35px; margin-bottom: 1px;">Welcome!
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </h1>
        </div>
        <div class="w3-row-padding">
            <div class="w3-quarter">
                <div class="w3-card-2 w3-white w3-round-large w3-animate-left">
                    <h1 style="font-size: 20px">Your tutor is: </h1>
                    <asp:Label ID="teacher" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>

        <asp:Label ID="error1" runat="server" Text=""></asp:Label>

        <ceneter class="box w3-animate-bottom">
            <a runat="server" id="learn" href="/OnSession/selectionPage.aspx" style="width: 70%; height: 150px" class="w3-container w3-button w3-round-large w3-margin w3-white w3-card">
                <h1>Learn</h1>
            </a>
            <br />
            <a runat="server" id="chal" href="/OnSession/SelectQuiz.aspx" style="width: 70%; height: 150px" class="w3-container w3-button w3-round-large w3-margin w3-white w3-card">
                <h1>Challenge</h1>
            </a>
            <br />
            <a runat="server" id="prog" href="/OnSession/progress.aspx" style="width: 70%; height: 150px" class="w3-container w3-button w3-round-large w3-margin w3-white w3-card">
                <h1>Progress</h1>
            </a>
            <br />

            <br />




        </ceneter>

        <!-- ENROLLMENT REQUEST FORM -->
        <div id="no_teacher" runat="server" visible="false">
        <center >
            <a runat="server" id="soon" style="width: 72%; height: 350px" class="w3-container w3-button w3-round-large w3-margin w3-white w3-card center" text="">
                <h1>PLEASE SEND AN ENROLLMENT REQUEST</h1>
                <h4>You have sent <asp:Label ID="numReq" runat="server" Text="0"></asp:Label>/3 requests</h4>
                <br>
                <label for="fname">First Name:</label>
                <input class="TextBoxNiWaow" runat="server" type="text" id="fname" name="fname"><br>
                <br>
                <label for="lname">Last Name:</label>
                <input class="TextBoxNiWaow" runat="server" type="text" id="lname" name="lname"><br>
                <br>                      
                <asp:Button  CssClass="w3-button w3-black w3-round-xlarge" Visible="false" ID="request" OnClick="request_Click" class="btn btn-info" runat="server" Text="Send Request" />
            </a>
        </center>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <!-- ENROLLMENT REQUEST FORM -->

        <!-- ENROLLMENT REQUEST FORM -->
        <div id="Div1" runat="server" visible="false">
        <center >
            <a runat="server" id="A1" style="width: 72%; height: 260px" class="w3-container w3-button w3-round-large w3-margin w3-white w3-card center" text="">
                <h4>You have sent <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>/3 requests</h4>
                <h1>YOU HAVE EXCEEDED YOUR NUMBER OF  </h1>
                 <h1>   REQUEST, PLEASE WAIT UNTIL A</h1>
                <h1>TEACHER IS ASSIGNED TO YOU</h1>
            </a>
            <br />
              <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <!-- ENROLLMENT REQUEST FORM -->
    </div>
</asp:Content>
