<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/Teacher.Master" AutoEventWireup="true" CodeBehind="fetchGrade.aspx.cs" Inherits="MATH1.Teacher.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="WebForm1.aspx" class="w3-button w3-card w3-white w3-round-large">< back</a>
      <center style="height:1000px">
          <h1>View Student Progress</h1>
        <center style="width:500px" class="w3-card w3-white w3-round-large">
           <div class="w3-margin">
                <h4>Select student: </h4>
                <p>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList> 
                </p>
           </div>
        </center>
        <div runat="server" id="con1" class="w3-container">
            <h3><asp:Label ID="student" runat="server" Text="student name"></asp:Label></h3>
            <br />
            <asp:Label ID="progressBar" runat="server" Text="Label"></asp:Label>
        </div>
          <div runat="server" id="tasks">
              <h1> Exercises </h1>
              <p>Grade 1</p>
              <div runat="server" id="ADDITION" class="w3-container w3-white w3-animate-left w3-round-large w3-magin">
                  <h4> ADDITION (Finished) </h4>
              </div>
              <br />
              <div runat="server" id="SUBTRATION" class="w3-container w3-white w3-animate-right w3-round-large w3-magin">
                  <h4> SUBTRACTION (Finished) </h4>
              </div>
              <br />

               <div runat="server" id="MULTIPLICATION" class="w3-container w3-white w3-animate-left w3-round-large w3-magin">
                  <h4> MULTIPLICATION (Finished) </h4>
              </div>
              <br />
               <div runat="server" id="DIVISION" class="w3-container w3-white w3-animate-right w3-round-large w3-magin">
                  <h4> DIVISION (Finished) </h4>
              </div>
          </div>
           <div runat="server" id="tasks2">              
              <p>Grade 2</p>
              <div runat="server" id="ADDITION2" class="w3-container w3-white w3-animate-left w3-round-large w3-magin">
                  <h4> ADDITION (Finished) </h4>
              </div>
              <br />
              <div runat="server" id="SUBTRATION2" class="w3-container w3-white w3-animate-right w3-round-large w3-magin">
                  <h4> SUBTRACTION (Finished) </h4>
              </div>
              <br />

               <div runat="server" id="MULTIPLICATION2" class="w3-container w3-white w3-animate-left w3-round-large w3-magin">
                  <h4> MULTIPLICATION (Finished) </h4>
              </div>
              <br />
               <div runat="server" id="DIVISION2" class="w3-container w3-white w3-animate-right w3-round-large w3-magin">
                  <h4> DIVISION (Finished) </h4>
              </div>
          </div>
           <div runat="server" id="tasks3">
              
              <p>Grade 3</p>
              <div runat="server" id="ADDITION3" class="w3-container w3-white w3-animate-left w3-round-large w3-magin">
                  <h4> ADDITION (Finished) </h4>
              </div>
              <br />
              <div runat="server" id="SUBTRATION3" class="w3-container w3-white w3-animate-right w3-round-large w3-magin">
                  <h4> SUBTRACTION (Finished) </h4>
              </div>
              <br />

               <div runat="server" id="MULTIPLICATION3" class="w3-container w3-white w3-animate-left w3-round-large w3-magin">
                  <h4> MULTIPLICATION (Finished) </h4>
              </div>
              <br />
               <div runat="server" id="DIVISION3" class="w3-container w3-white w3-animate-right w3-round-large w3-magin">
                  <h4> DIVISION (Finished) </h4>
              </div>
		<div runat="server" id="ADDSUBINT" class="w3-container w3-white w3-animate-right w3-round-large w3-magin">
                  <h4> ADDITION AND SUBTRACTION OF INTEGER (Finished) </h4>
              </div>
               <br />
		<div runat="server" id="MULTIINT" class="w3-container w3-white w3-animate-right w3-round-large w3-magin">
                  <h4> MULTIPLICATION OF INTEGER (Finished) </h4>
              </div>
               <br />
          </div>
           <div runat="server" id="tasks4">
              
              <p>Grade 4</p>
              <div runat="server" id="ADDITION4" class="w3-container w3-white w3-animate-left w3-round-large w3-magin">
                  <h4> ADDITION (Finished) </h4>
              </div>
              
              <div runat="server" id="SUBTRATION4" class="w3-container w3-white w3-animate-right w3-round-large w3-magin">
                  <h4> SUBTRACTION (Finished) </h4>
              </div>
              

               <div runat="server" id="MULTIPLICATION4" class="w3-container w3-white w3-animate-left w3-round-large w3-magin">
                  <h4> MULTIPLICATION (Finished) </h4>
              </div>
              
               <div runat="server" id="DIVISION4" class="w3-container w3-white w3-animate-right w3-round-large w3-magin">
                  <h4> DIVISION (Finished) </h4>
              </div>
               
		<div runat="server" id="ADDSUBINT4" class="w3-container w3-white w3-animate-right w3-round-large w3-magin">
                  <h4> ADDITION AND SUBTRACTION OF INTEGER (Finished) </h4>
              </div>
               
		<div runat="server" id="MULTIINT4" class="w3-container w3-white w3-animate-right w3-round-large w3-main">
                  <h4> MULTIPLICATION OF INTEGER (Finished) </h4>
              </div>
          </div>
     </center>
</asp:Content>
