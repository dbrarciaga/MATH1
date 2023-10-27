<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Site1.Master" AutoEventWireup="true" CodeBehind="aboutUs.aspx.cs" Inherits="MATH1.Main.WebForm4" MaintainScrollPositionOnPostback="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>
  

body {
  margin: 0;
  font-family: Arial, sans-serif;
}

#header {
      background-color: #333;
      color: bisque;
      text-align: center;
      padding: 20px;
    }


 .about 
 {
  max-width: 800px;
  margin: 0 auto;
 }

    </style>
  </head>
  <body>
  

    <main>

      <section class="about">
       <h2><b>Our Company</b></h2>
    <p>??????</p>
    
       <h2><b>Our Vision</b></h2>
    <p> 
        To inspire a love of learning mathematics in elementary students by making it fun, engaging, and accessible to everyone, regardless of their background or ability level. 
    </p>

    <h2><b>Our Mission</b></h2>
    <p>Our mission is to provide a high-quality, interactive online learning platform that helps elementary students build a strong foundation in mathematics. We aim to achieve this by:</p>
         <ul>
             <li>
                  <p> Creating fun and engaging math activities that encourage students to think critically and problem-solve.</p>
             </li>
             <li>
                  <p> Providing clear explanations and step-by-step instructions to help students understand mathematical concepts and apply them in real-world situations.</p>  
             </li>
             <li>
                  <p> Fostering a safe and inclusive learning environment that encourages students learn mathematics</p>
             </li>
             <li>
                  <p> Continuously improving our platform and content based on feedback from teachers, students, and parents.</p>
             </li>
         </ul>
           <p>We believe that by making mathematics learning enjoyable and accessible, we can help students develop a lifelong love of learning and set them up for success in their academic and professional lives.</p>


        <h2><b>Our Team</b></h2>
        <ul>
          <li>
            <img src="team-member-1.jpg" alt="Team Member 1">
            <h3>John Doe</h3>
            <p>CEO</p>
          </li>
          <li>
            <img src="team-member-2.jpg" alt="Team Member 2">
            <h3>Jane Smith</h3>
            <p>Marketing Director</p>
          </li>
          <li>
            <img src="team-member-3.jpg" alt="Team Member 3">
            <h3>Bob Johnson</h3>
            <p>Head of Sales</p>
          </li>
           <li>
            <img src="team-member-3.jpg" alt="Team Member 3">
            <h3>Bob Johnson</h3>
            <p>Head of Sales</p>
          </li>
        </ul>
      </section>
    </main>

  </body>
</html>


    

  
</asp:Content>
