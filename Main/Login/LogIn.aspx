<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Site1.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="LogIn.aspx.cs" Inherits="MATH1.Main.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/Responsive.css" />
    <style>
        body {
            font-family: Calibri, Helvetica, sans-serif;
        }


        .waowText {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .button {
            background-color: black;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            transition: all 0.3s ease 0s;
        }

            .button:hover {
                background-color: white;
                color: black;
                opacity: 1;
            }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            width: 40%;
            border-radius: 50%;
        }

        .container1 {
            margin: 100px;
        }

        .red {
            font-size: 20px;
            color: red;
        }

        .TextBoxNiWaow {
            padding: 5px;
            font-size: 20px;
            font-weight: bold;
            font-family: Calibri;
            border-radius: 30px;
        }

        .cardNiWaow {
            background-color: white;
            border-radius: 20px;
            margin: 50px 500px 50px;
            margin-bottom: 25%;
        }
    </style>


    <center style="height:1000px">
        <br />
        <br />
     
        <div style="width: 50%" class="w3-panel w3-card w3-white w3-round-medium w3-animate-left">

            <div style="text-align: center;" class="w3-centered   w3-margin">
                <h2 style="font-size: 30px; font-weight: bold;">Welcome!</h2>
                <label for="uname"><b>Username</b></label>
                <asp:TextBox ID="username" runat="server" CssClass="waowText TextBoxNiWaow"></asp:TextBox>

                <label for="psw"><b>Password</b></label>
                <asp:TextBox ID="password" runat="server" CssClass="waowText TextBoxNiWaow" TextMode="Password"></asp:TextBox>


                <label>
                    <input type="checkbox" checked="checked" name="remember">
                    Remember me
               <br />
                </label>
                <a href="#" class="w3-button">You forgot your password? click here</a>
                <a href="/Main/Login/LoginForTeacher.aspx" class="w3-button">Log-in as a Teacher</a>
                
                <center>
                    <asp:Label ID="Label1" runat="server" Text="" CssClass="red"></asp:Label></center>
                <center>
                    <br />
                    <asp:Button ID="login" runat="server" Text="Log-in" CssClass="w3-button w3-black w3-round-xlarge" OnClick="login_Click" /></center>
            </div>



        </div>
        <div style="width: 50%" class="w3-panel w3-card w3-white w3-round-medium w3-animate-right">
            <h2>just getting started? </h2>
            
            <a href="/Main/Register/WebForm1.aspx" class="w3-button w3-black w3-round-large"><h1>Register here</h1></a>
            <br />
            <br />
        </div>
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
    
  
</asp:Content>
