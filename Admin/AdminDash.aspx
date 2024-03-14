<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDash.aspx.cs" Inherits="MATH1.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
   
     

    <center style="height:1000px;">
            <h1>Welcome Admin!</h1>
          <div style="margin-left:15%" class="w3-row-padding">
            <a  href="TeacherList.aspx" style="width:40%" class="w3-half w3-card w3-white w3-margin w3-button w3-round-large w3-tooltip">
                  <h4>Tutors</h4>
                  <h1><b>(<asp:Label ID="teacher" runat="server" Text="////"></asp:Label>)</b></h1>
                  <p class="w3-text">Check list of tutors and modify them.</p>
            </a>
            <a href="StudentList.aspx" style="width:40%" class="w3-half w3-card w3-white w3-margin w3-button  w3-round-large w3-tooltip">
                <h4>Students</h4>
                <h1><b>(<asp:Label ID="students" runat="server" Text="////"></asp:Label>)</b></h1>
                 <p class="w3-text">Check List of students</p>
            </a>            
        </div>   
         <div style="margin-left:15%" class="w3-row-padding">            
            <a href="Enroll.aspx" style="width:40%" class="w3-half w3-card w3-white w3-margin w3-button  w3-round-large w3-tooltip">
                <h4>Enroll a student</h4>
                <h1>
                    <b>(<asp:Label ID="enrollCount" runat="server" Text="Label"></asp:Label>)</b>
                </h1>
                <p class="w3-text">Enroll a student in any grade level.</p>
            </a>
            <a href="auditLog.aspx" style="width:40%" class="w3-half w3-card w3-white w3-margin w3-button  w3-round-large w3-tooltip">
                 <h4>Audit Log</h4>
                 <h1>
                    <b>(<asp:Label ID="Label1" runat="server" Text=" "></asp:Label>)</b>
                </h1>
                <p class="w3-text">Check user activities in the system.</p>
            </a>
        </div>   
       <div style="margin-left:15%" class="w3-row-padding">
           <a href="/Admin/Applications.aspx" style="width:40%" class="w3-half w3-card w3-white w3-margin w3-button  w3-round-large w3-tooltip">
                <h4>Tutor Application</h4>
               <h1>
                   <b><asp:Label ID="app" runat="server" Text="Label"></asp:Label></b>
               </h1>
               <p class="w3-text">Accept or reject applications for position Tutor.</p>
           </a>
           <a href="/Admin/WebForm10.aspx" style="width:40%" class="w3-half w3-card w3-white w3-margin w3-button  w3-round-large w3-tooltip">
               <h4>Search</h4>
               <h1>
                   <b>Users</b>
               </h1>
               <p class="w3-text">Search and print student's data.</p>
           </a>
       </div>
    </center>
</asp:Content>
