<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDash.aspx.cs" Inherits="MATH1.Admin.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    <style>
        .grid-container {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            gap: 1px;
            padding: 20px;
        }

        .grid-item {
            font-size: 30px;
        }

        .button2 {
            display: grid;
            gap: 1px;
            padding: 20px;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: all 0.3s ease 0s;
            background-color: white;
            width: 100%;
            margin: 10px;
            padding: 80px 40px 80px;
            border-radius: 10px;
            width: 300px;
            height: 100%;
        }

        table.mygridview {
            color: black;
        }

        able.mygridview th {
            font-weight: lighter;
            color: black;
            font-size: 80%;
        }

        table.mygridview td {
            font-size: 80%;
            color: black;
            padding: 3px;
        }

            table.mygridview td:nth-child(2) {
                text-align: right;
            }
    </style>


    <div style="height:1000px" class="w3-container">
       <div>
            <h2 style="text-align: center">Welcome Admin!</h2>
            <br />
            <br />
            
                <div style="width:1000px; " class="w3-row-padding">
                <div class="w3-third w3-container w3-white w3-round-large">
                    <h4>Teachers</h4>
                    <h1><asp:Label ID="teacher" runat="server" Text="////"></asp:Label></h1>
                </div>
                 <div  class="w3-third w3-card w3-white  w3-round-large">
                     <h4>Students</h4>
                      <h1><asp:Label ID="students" runat="server" Text="////"></asp:Label></h1>
                </div>
                 <div  class="w3-third w3-card w3-white  w3-round-large">
                        <h4>Request</h4>
                      <asp:Label ID="request" runat="server" Text="////"></asp:Label>
                </div>

            </div>        
       </div>

        
       
    </div>
</asp:Content>
