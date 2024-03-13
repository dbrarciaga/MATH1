<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="TypeOfSearch.aspx.cs" Inherits="MATH1.Admin.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <center style="height:1000px;">            
          <div style="margin-left:15%" class="w3-row-padding">
            <a  href="/Admin/WebForm10.aspx" style="width:40%" class="w3-half w3-card w3-white w3-margin w3-button w3-round-large w3-tooltip">
                  <h4>Single Search</h4>                
                  <p class="w3-text">Check Individual students</p>
            </a>
            <a href="Multiple_Search.aspx" style="width:40%" class="w3-half w3-card w3-white w3-margin w3-button  w3-round-large w3-tooltip">
                <h4>Multiple Search</h4>               
                 <p class="w3-text">Search and display a list of students or tutors</p>
            </a>            
        </div>           
    </center>
</asp:Content>
