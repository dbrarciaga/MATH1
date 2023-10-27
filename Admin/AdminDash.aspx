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


    <div style="margin-left: 25%">
        <h2 style="text-align: center">Welcome Admin!</h2>
        <br />
        <br />
        <center>
            <div class="w3-row-padding">
            <div class="w3-quarter w3-card w3-white  w3-margin w3-round-large">
                <h4>Teachers</h4>
            </div>
             <div class="w3-quarter w3-card w3-white  w3-margin w3-round-large">
                 <h4>Students</h4>
            </div>
             <div class="w3-quarter w3-card w3-white  w3-margin w3-round-large">
                    <h4>Request</h4>
            </div>

        </div>
        </center>

            <div  style="height:500px;" class="w3-container w3-white w3-card w3-white w3-round-large w3-margin">
                TEACHERS
                <br />
                <br />
                <asp:GridView ID="GridView1" CssClass="w3-table-all w3-hoverable" runat="server"></asp:GridView>
                <asp:Label ID="Label2" runat="server" Text="  " ForeColor="#990000"></asp:Label>
            </div>


            <div  style="height:500px;" class="w3-container w3-white w3-card w3-white w3-round-large w3-margin">
                STUDENTS
                 <br />
                <br />
                <asp:GridView ID="GridView2" CssClass="w3-table-all w3-hoverable" runat="server"></asp:GridView>
                <asp:Label ID="Label3" runat="server" Text="  " ForeColor="#990000"></asp:Label>
            </div>
            
            <div  style="height:500px;" class="w3-container w3-white w3-card w3-white w3-round-large w3-margin">
                PASSWORD REQUEST
                <br />
                <asp:GridView ID="GridView3" CssClass="w3-table-all w3-hoverable" runat="server"></asp:GridView>
            </div>

             <div class="w3-container w3-white w3-card w3-white w3-round-large w3-margin">
                ENROLLMENT REQUEST
                <br />
                <br />
                <asp:GridView ID="GridView4" CssClass="w3-table-all w3-hoverable " runat="server"></asp:GridView>
                <asp:Label ID="Label4" runat="server" Text="  " ForeColor="#990000"></asp:Label>
            </div>
        
       
    </div>
</asp:Content>
