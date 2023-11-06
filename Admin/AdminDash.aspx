<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDash.aspx.cs" Inherits="MATH1.Admin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    <style>
       
    </style>


    <div style="height:1000px;">
       <center>
            <h2 style="text-align: center">Welcome Admin!</h2>
            <br />
            <br />
            
                <div class="w3-row-padding">
                    <a   href="TeacherList.aspx" class="w3-half  w3-white w3-round-large ">
                        <h4>Teachers</h4>
                        <h1><b><asp:Label ID="teacher" runat="server" Text="////"></asp:Label></b></h1>
                    </a>
                     <a   href="StudentList.aspx"  class=" w3-third  w3-white  w3-round-large ">
                         <h4>Students</h4>
                          <h1><b><asp:Label ID="students" runat="server" Text="////"></asp:Label></b></h1>
                    </a>
                    <div class="w3-third">

                    </div>
                </div>
           <div style="width:1000px;" class="w3-row-padding">
                    <a href="Enroll.aspx" style="width:40%" class="w3-button w3-quarter w3-container w3-white w3-round-large w3-margin">
                        <h4>Enroll a student <b>(<asp:Label ID="enrollCount" runat="server" Text="Label"></asp:Label>)</b></h4>
                        
                        
                    </a>
                     <a href="auditLog.aspx" style="width:40%"  class="w3-button w3-quarter w3-container w3-white  w3-round-large w3-margin">
                         <h4>Audit Log</h4>
                          
                    </a>               
                </div>        
       </center>

        
       
    </div>
</asp:Content>
