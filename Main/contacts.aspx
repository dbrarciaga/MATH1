<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Site1.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="MATH1.Main.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
        .center{
            display:flex;
            flex-direction:column;
            align-items:center;
        }
        #rcorners1 {
          border-radius: 25px;
          background: black;
          padding: 20px; 
          width: 500px;
          height: 50px;  
          color:white;
          font-family:Calibri;
        }

    </style>
  
    <section style="margin:25px 50px 1000px;" class="center">
          <br />
    <br />
    <br />
    <br />
        <br />
        <br />
        <br />
        <br />
        <h1 style="font-family:Calibri;">Contacts</h1>
        <a href="https://www.facebook.com/slybastard.idiot"><h3 style="margin:5px;" class="center" id="rcorners1"> Facebook</h3></a>
        <a href="https://www.twitter.com"><h3 style="margin:5px;" class="center" id="rcorners1"> twitter</h3></a>
        <a href="https://www.Instagram.com"><h3 style="margin:5px;" class="center" id="rcorners1"> Instagram</h3></a>
        <a href="https://www.youtube.com/watch?v=o-YBDTqX_ZU&ab_channel=MusRest"><h3 style="margin:5px;" class="center" id="rcorners1"> Youtube</h3></a>
    </section>



</asp:Content>
