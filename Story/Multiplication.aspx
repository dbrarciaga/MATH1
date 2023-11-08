<%@ Page MaintainScrollPositionOnPostback="true" Title="" Language="C#" MasterPageFile="~/Story/Site1.Master" AutoEventWireup="true" CodeBehind="Multiplication.aspx.cs" Inherits="MATH1.Story.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .grid-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            padding: 10px;
            font-family: 'Comic Sans MS';
            text-align: center;
        }

        .grid-container2 {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            padding: 10px;
            margin: 20px 100px 20px;
            font-family: 'Comic Sans MS';
            text-align: center;
        }

        .grid-item {
            padding: 30px;
            font-size: 30px;
            text-align: center;
            padding-bottom: 10px;
            margin-bottom: 100px;
        }

        .button1 {
            padding: 9px 25px;
            background-color: white;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.3s ease 0s;
            color: black;
        }

            .button1:hover {
                background-color: black;
                color: white;
            }




        .first {
            margin: 0px;
            padding: 300px;
            display: flex;
            flex-direction: column;
            align-items: center;
            font-family: 'Comic Sans MS';
            font-size: 30px;
        }

        .second {
            margin: 50px;
            padding: 0px;
            display: flex;
            flex-direction: column;
            align-items: center;
            font-family: 'Comic Sans MS';
            font-size: 30px;
        }

        .secBlack {
            background-color: white;
            color: black;
            border-radius: 2px;
            margin-left: 10px;
            margin-right: 10px;
        }

        .fonts {
            font-family: 'Comic Sans MS';
            font-weight: 900;
        }

        .img {
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 5px;
            width: 150px;
            box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
        }

        .input1 {
            padding-left: 15px;
            height: 65px;
            width: 180px;
            position: relative;
            left: -90px;
            top: -175px;
        }

        .button2 {
            padding: 9px 25px;
            background-color: yellow;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.3s ease 0s;
            color: black;
            width: 20%;
        }

            .button2:hover {
                background-color: black;
                color: white;
            }

        .picSize {
            height: 150%;
            width: 150%;
            padding: 20%;
        }






        /* Hide all steps by default: */
        .tab {
            display: none;
        }







        * {
            box-sizing: border-box;
        }

        body {
            background-color: #f1f1f1;
        }

        #regForm {
            background-color: #ffffff;
            margin: 100px auto;
            font-family: Raleway;
            padding: 40px;
            width: 70%;
            min-width: 300px;
        }

        h1 {
            text-align: center;
        }

        input {
            padding: 10px;
            width: 100%;
            font-size: 17px;
            font-family: Raleway;
            border: 1px solid #aaaaaa;
        }


            input.invalid {
                background-color: #ffdddd;
            }


        button {
            background-color: #04AA6D;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            font-size: 17px;
            font-family: Raleway;
            cursor: pointer;
        }

            button:hover {
                opacity: 0.8;
            }

        #prevBtn {
            background-color: #bbbbbb;
        }


        .step {
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbbbbb;
            border: none;
            border-radius: 50%;
            display: inline-block;
            opacity: 0.5;
        }

            .step.active {
                opacity: 1;
            }


            .step.finish {
                background-color: #04AA6D;
            }
    </style>



        <!--1st-->
    <section >
        <div style= "margin-bottom:15px;" class="first">
        <h1 style="font-size:250%" class="fonts">Chapter 3 </h1>
        <h4 style="font-size:150%" class="fonts"><asp:label runat="server" ID="title1" Text=""></asp:label></h4>
        <h5 tyle="font-size:150%" class="fonts"> A method of finding the product of two or more numbers</h5>
      

            

    </div>
    </section>
    <!--1st-->





    
     <!--HOW1-->
    <section class="secBlack">
        <h3 class="second fonts w3-container" style="margin-bottom:25px; font-size:500%; text-align:center;">Multiplication of Whole Numbers</h3>

        <div class="w3-row w3-border w3-white w3-mobile" >

            <div class="w3-container w3-half">
               <p style="font-family:'Comic Sans MS'; text-align:center;font-size:45px;"><b>How?</b></p>
               <p style="font-family:'Comic Sans MS'; text-align:center;font-size:30px;">
                    There are Two Methods in Multiplying Whole Numbers;
                    <br />
                     The First Method is the <b>Expansion Method</b>, this method involves expanding each digit in 
                     the multiplicand to show their value before multiplying them with the 
                     multiplier.
                </p>
                  <p><center>
                   <audio controls>
                   <source src="https://feeds.soundcloud.com/stream/1637128266-rencee-c-banez-mult-how1.mp" type="audio/mpeg" />
                   </audio>
                </center></p>

           </div> 

           <div class="w3-container w3-half w3-mobile">    
                <br />
                <br />
                <br />
                <br />
               <a><img  style="height:100%; width:100%;" src="https://i.imgur.com/i1Wt4fi.gif" title="source: imgur.com" /></a>     
          </div>
        </div>     
    </section>
    <!--HOW1-->

     <!--HOW2-->
    <section class="secBlack">
        <h3 class="second fonts w3-container" style="margin-bottom:25px; font-size:500%; text-align:center;">Multiplication of Whole Numbers</h3>

        <div class="w3-row w3-border w3-white w3-mobile" >

            <div class="w3-container w3-half">
               <p style="font-family:'Comic Sans MS'; text-align:center;font-size:45px;"><b>How?</b></p>
               <p style="font-family:'Comic Sans MS'; text-align:center;font-size:30px;">
                    The Second Method is the <b>Stacking Method</b>, Fortunately, 
                    there's a way to write the problem so that you can break it into smaller pieces. 
                    It's called stacking. It means that we'll write the numbers on top of one another instead of side by side.
                </p>
                <p><center>
                   <audio controls>
            <source src="https://feeds.soundcloud.com/stream/1637128467-rencee-c-banez-mult-how2.mp3" type="audio/mpeg" />
                   </audio>
                </center></p>

           </div> 

           <div class="w3-container w3-half w3-mobile"> 
               <br />
                <br />
                <br />
                <br />
                <a><img  style="height:100%; width:100%;" src="https://i.imgur.com/kaKW6R0.gif" title="source: imgur.com" /></a>      
          </div> 
         </div>
    </section>
    <!--HOW2-->

	

	

 <div id="regForm">
        <div id="fire" runat="server" class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>
        <div class="firework"></div>

      <!--Exercise1-->
        <section class="secBlack">
            <div runat="server" id="xrsc" visible="true">
                <script>
                    function clear()
                    onFocus = "if (this.value == this.defaultValue) { this.value = ''; }"
                </script>
                <center>
                    <asp:label runat="server" ID="exercisenum" class="w3-container w3-mobile second" style="font-family: 'Comic Sans MS'; margin-bottom: 25px; font-size: 500%"/>
                </center>
                  <!--exercise 1&2-->
                <div  runat="server" id="ex23" visible="true" >
                    <center>
                        <img id="Img1" runat="server" style="height: 100%; width: 100%; padding: 20%;" src="" class="w3-half picSize" />

                    </center>
                </div>
                <!--exercise 3&4-->
                <div  runat="server" id="ex34" visible="true" style="font-size: 30px;" class="w3-row w3-border w3-white w3-mobile">
                    <div style="font-family: 'Comic Sans MS'; text-align: center;" class="w3-container w3-half">
                        <h2 style="font-family: 'Comic Sans MS';">
                            <asp:Label runat="server" ID="qTitle1" Text=""></asp:Label>
                        </h2>
                        <p style="font-family: 'Comic Sans MS';">
                            <asp:Label runat="server" ID="addQ1" Text="asda"></asp:Label>
                        </p>
                        <center>
                            <audio controls runat="server" id="ex1Aud" src="">
                                <source type="audio/mpeg" />
                            </audio>
                        </center>
                    </div>
                    <div class="w3-container w3-half">
                        <img id="ex1Img" runat="server" style="height: 100%; width: 100%; padding: 20%;" src="" class="w3-half picSize" />
                    </div>
                </div>
               
                <!--2nd row-->
                <div class="w3-row w3-border  w3-mobile">
                    <center>
                        <div class="w3-container w3-rest">

                            <asp:TextBox Style="width: 30%" AutoCompleteType="Disabled" ID="TextBox1" runat="server" onFocus="if (this.value == this.defaultValue) { this.value = ''; }">=</asp:TextBox>
                            <br />
                            <asp:Button CssClass="button2" ID="Button2" runat="server" Text="SUBMIT" OnClick="submit_Click1" />
                        </div>
                    </center>
                </div>
                <h2>
                    <asp:Label CssClass="fonts" ID="Label1" runat="server" Text=" "></asp:Label>
                </h2>
            </div>
        </section>

 <!------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->


        <!--summary-->
        <section class="secBlack">
            <div runat="server" id="summary" visible="false">
                <script>
                    function clear()
                    onFocus = "if (this.value == this.defaultValue) { this.value = ''; }"
                </script>
                <center>
                    <h3 class="w3-container w3-mobile second" style="font-family: 'Comic Sans MS'; margin-bottom: 25px; font-size: 500%">EXERCISE SUMMARY</h3>
                </center>
                <!--first row-->
                <div style="font-size: 30px;" class="w3-row w3-border w3-white w3-mobile">
                    <div style="font-family: 'Comic Sans MS'; text-align: center;" class="w3-container w3-half">
                        <h2 style="font-family: 'Comic Sans MS';">Stars Collected
                        </h2>

                        <p style="font-family: 'Comic Sans MS';">
                            <img src="https://i.imgur.com/AwHUIaV.png" title="source: imgur.com" style="height: 300px; width: 300px;" />
                        </p>

                    </div>
                    <div style="text-align: center; padding: 10%; font-size: 300%; font-family: 'Comic Sans MS'" class="w3-container w3-half">
                        <h2></h2>
                        <h2>
                            <asp:Label CssClass="fonts" ID="Label5" runat="server" Text=" " style="font-family: 'Comic Sans MS'; margin-bottom: 25px; font-size: 500%"></asp:Label>
                        </h2>
                        <asp:Button class="button5" ID="Button5" runat="server" Text="Submit Answers" OnClick="submit_Click5" />

                    </div>
                </div>
            </div>
        </section>
       

    </div>



      <!--end-->
    <section class="first" style="margin: 10px">
        <br />
        <br />
        <br />
        <br />
        <h2 style="text-align: center; font-family: 'Copperplate Gothic'"><b>That's awesome! you learned something new today!</b></h2>
        <div class="w3-container">
            <center>
                <div class="w3-rest">
                    <a href="/OnSession/dashboard/dasdboard.aspx" class="button1 ">I'M FINISHED! YEY</a>
                </div>
            </center>
        </div>
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

        <audio id="mybg" controls autoplay loop hidden visible="false">
            <source src="https://feeds.soundcloud.com/stream/1654313922-rencee-c-banez-happy.mp3" loop="true" type="audio/mpeg" />
        </audio>
        <script>
            var audio = document.getElementById("mybg");
            audio.volume = 0.01;
        </script>
    </section>
    <!--end-->
	


</asp:Content>
