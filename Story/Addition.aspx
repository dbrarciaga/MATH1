<%@ Page MaintainScrollPositionOnPostback="true" Title="" Language="C#" MasterPageFile="~/Story/Site1.Master" AutoEventWireup="true" CodeBehind="Addition.aspx.cs" Inherits="MATH1.Story.WebForm1" %>

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

        .image {
            height: 80%;
            width: 80%;
        }



        @keyframes firework {
            0% {
                transform: translate(var(--x), var(--initialY));
                width: var(--initialSize);
                opacity: 1;
            }

            50% {
                width: 0.5vmin;
                opacity: 1;
            }

            100% {
                width: var(--finalSize);
                opacity: 0;
            }
        }

        /* @keyframes fireworkPseudo {
  0% { transform: translate(-50%, -50%); width: var(--initialSize); opacity: 1; }
  50% { width: 0.5vmin; opacity: 1; }
  100% { width: var(--finalSize); opacity: 0; }
}
 */
        .firework,
        .firework::before,
        .firework::after {
            --initialSize: 0.5vmin;
            --finalSize: 45vmin;
            --particleSize: 0.2vmin;
            --color1: yellow;
            --color2: khaki;
            --color3: white;
            --color4: lime;
            --color5: gold;
            --color6: mediumseagreen;
            --y: -30vmin;
            --x: -50%;
            --initialY: 60vmin;
            content: "";
            animation: firework 2s infinite;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, var(--y));
            width: var(--initialSize);
            aspect-ratio: 1;
            background:
            /*
    radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 0% 0%,
    radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 100% 0%,
    radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 100% 100%,
    radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 0% 100%,
    */
            radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 50% 0%, radial-gradient(circle, var(--color2) var(--particleSize), #0000 0) 100% 50%, radial-gradient(circle, var(--color3) var(--particleSize), #0000 0) 50% 100%, radial-gradient(circle, var(--color4) var(--particleSize), #0000 0) 0% 50%,
            /* bottom right */
            radial-gradient(circle, var(--color5) var(--particleSize), #0000 0) 80% 90%, radial-gradient(circle, var(--color6) var(--particleSize), #0000 0) 95% 90%, radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 90% 70%, radial-gradient(circle, var(--color2) var(--particleSize), #0000 0) 100% 60%, radial-gradient(circle, var(--color3) var(--particleSize), #0000 0) 55% 80%, radial-gradient(circle, var(--color4) var(--particleSize), #0000 0) 70% 77%,
            /* bottom left */
            radial-gradient(circle, var(--color5) var(--particleSize), #0000 0) 22% 90%, radial-gradient(circle, var(--color6) var(--particleSize), #0000 0) 45% 90%, radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 33% 70%, radial-gradient(circle, var(--color2) var(--particleSize), #0000 0) 10% 60%, radial-gradient(circle, var(--color3) var(--particleSize), #0000 0) 31% 80%, radial-gradient(circle, var(--color4) var(--particleSize), #0000 0) 28% 77%, radial-gradient(circle, var(--color5) var(--particleSize), #0000 0) 13% 72%,
            /* top left */
            radial-gradient(circle, var(--color6) var(--particleSize), #0000 0) 80% 10%, radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 95% 14%, radial-gradient(circle, var(--color2) var(--particleSize), #0000 0) 90% 23%, radial-gradient(circle, var(--color3) var(--particleSize), #0000 0) 100% 43%, radial-gradient(circle, var(--color4) var(--particleSize), #0000 0) 85% 27%, radial-gradient(circle, var(--color5) var(--particleSize), #0000 0) 77% 37%, radial-gradient(circle, var(--color6) var(--particleSize), #0000 0) 60% 7%,
            /* top right */
            radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 22% 14%, radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 45% 20%, radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 33% 34%, radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 10% 29%, radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 31% 37%, radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 28% 7%, radial-gradient(circle, var(--color1) var(--particleSize), #0000 0) 13% 42%;
            background-size: var(--initialSize) var(--initialSize);
            background-repeat: no-repeat;
        }

            .firework::before {
                --x: -50%;
                --y: -50%;
                --initialY: -50%;
                /*   transform: translate(-20vmin, -2vmin) rotate(40deg) scale(1.3) rotateY(40deg); */
                transform: translate(-50%, -50%) rotate(40deg) scale(1.3) rotateY(40deg);
                /*   animation: fireworkPseudo 2s infinite; */
            }

            .firework::after {
                --x: -50%;
                --y: -50%;
                --initialY: -50%;
                /*   transform: translate(44vmin, -50%) rotate(170deg) scale(1.15) rotateY(-30deg); */
                transform: translate(-50%, -50%) rotate(170deg) scale(1.15) rotateY(-30deg);
                /*   animation: fireworkPseudo 2s infinite; */
            }

            .firework:nth-child(2) {
                --x: 30vmin;
            }

                .firework:nth-child(2),
                .firework:nth-child(2)::before,
                .firework:nth-child(2)::after {
                    --color1: pink;
                    --color2: violet;
                    --color3: fuchsia;
                    --color4: orchid;
                    --color5: plum;
                    --color6: lavender;
                    --finalSize: 40vmin;
                    left: 30%;
                    top: 60%;
                    animation-delay: -0.25s;
                }

            .firework:nth-child(3) {
                --x: -30vmin;
                --y: -50vmin;
            }

                .firework:nth-child(3),
                .firework:nth-child(3)::before,
                .firework:nth-child(3)::after {
                    --color1: cyan;
                    --color2: lightcyan;
                    --color3: lightblue;
                    --color4: PaleTurquoise;
                    --color5: SkyBlue;
                    --color6: lavender;
                    --finalSize: 35vmin;
                    left: 70%;
                    top: 60%;
                    animation-delay: -0.4s;
                }

        .input-hidden {
            position: absolute;
            left: -9999px;
        }

        input[type=radio]:checked + label > img {
            border: 1px solid #fff;
            box-shadow: 0 0 3px 3px #090;
        }

        /* Stuff after this is only to make things more pretty */
        input[type=radio] + label > img {
            width: 16px;
            height: 16px;
            transition: 500ms all;
        }

        input[type=radio]:checked + label > img {
            transform: rotateZ(-10deg) rotateX(10deg);
        }
    </style>





    <section runat="server" id="chapter1" style="text-align: center;" class="w3-container">
        <div style="margin-bottom: 15px;" class="first">
            <h1 style="font-size: 250%" class="fonts">Chapter 1 </h1>
            <h4 style="font-size: 150%" class="fonts">
                <asp:Label runat="server" ID="title1" Text=""></asp:Label></h4>
            <h5 style="font-size: 150%" class="fonts">Finding the total of two or more sets of objects or numbers</h5>

        </div>
    </section>





    <!--HOW-->
    <section runat="server" id="div1" class="secBlack">
        <h3 class="second fonts w3-container" style="margin-bottom: 25px; font-size: 500%; text-align: center;">Addition of Whole Numbers</h3>

        <div class="w3-row w3-border w3-white w3-mobile">

            <div class="w3-container w3-half">
                <p style="font-family: 'Comic Sans MS'; text-align: center; font-size: 45px;"><b>How?</b></p>
                <p style="font-family: 'Comic Sans MS'; text-align: center; font-size: 30px;">
                    Addition is when you combine numbers to make a bigger number. Use + to show addition. To add 3 Monsters and 1 Monster together, you put them together and count them up.   
                </p>
                <p>
                    <center>
                        <audio controls>
                            <source src="https://feeds.soundcloud.com/stream/1654265469-rencee-c-banez-addg1.mp3" type="audio/mpeg" />
                        </audio>
                    </center>
                </p>

            </div>

            <div class="w3-container w3-half w3-mobile">
                <a>
                    <img class="image" src="https://i.imgur.com/N40OD7K.png" title="source: imgur.com" /></a>
            </div>

        </div>
    </section>
    <!--HOW-->







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
            <div runat="server" id="xrsc" visible="true" >
                <script>
                    function clear()
                    onFocus = "if (this.value == this.defaultValue) { this.value = ''; }"
                </script>
                <center>
                    <asp:Label runat="server" ID="exercisenum" class="w3-container w3-mobile second" Style="font-family: 'Comic Sans MS'; margin-bottom: 25px; font-size: 500%" />
                </center>
                <!--first row-->
                <div style="font-size: 30px; " class="w3-row w3-border w3-white w3-mobile">
                    <div style="font-family: 'Comic Sans MS'; text-align: center; " class="w3-container w3-half">
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
                    <!--rad-->
                    <div>
                        <style>
                            .customRadioImage {
                                cursor: pointer; /* Make the images cursor change to a pointer on hover to indicate they are clickable. */
                            }

                                .customRadioImage.selected {
                                    /* Apply styles for the selected state, e.g., changing the image appearance. */
                                    border: 2px solid #007bff; /* Add a border to the selected image. */
                                }
                        </style>

                        <br />
                        <br />
                        
                        <asp:RadioButton ID="rbImage1" runat="server" ClientIDMode="Static" Style="display: none" Value="106" AutoPostBack="false" />
                        <img runat="server" src="" alt="Radio Button 1" id="ex1Img" class="customRadioImage" onclick="selectRadioButton(1)" style="height: 20%; width: 20%" />

                        <asp:RadioButton ID="rbImage2" runat="server" ClientIDMode="Static" Style="display: none" Value="11" AutoPostBack="false" />
                        <img runat="server" src="" alt="Radio Button 2" id="ex1Img2s" class="customRadioImage" onclick="selectRadioButton(2)" style="height: 20%; width: 20%" />

                        <asp:RadioButton ID="rbImage3" runat="server" ClientIDMode="Static" Style="display: none" Value="" AutoPostBack="false"  />
                        <img runat="server" src="" alt="Radio Button 3" id="ex1Img3s" class="customRadioImage" onclick="selectRadioButton(3)" style="height: 20%; width: 20%" />

                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        
                        


                        <asp:HiddenField ID="HiddenFieldValue" runat="server" ClientIDMode="Static" />

                        <script type="text/javascript">
                            const customRadioImages = document.querySelectorAll('.customRadioImage');
                            const hiddenField = document.getElementById('<%= HiddenFieldValue.ClientID %>');

                            customRadioImages.forEach((image, index) => {
                                image.addEventListener('click', () => {
                                    // Deselect all radio buttons
                                    customRadioImages.forEach((radioImage) => {
                                        radioImage.classList.remove('selected');
                                    });

                                    // Select the clicked radio button
                                    image.classList.add('selected');

                                    // Check the associated hidden radio button
                                    const radioButton = document.getElementById(`rbImage${index + 1}`);
                                    radioButton.checked = true;

                                    // Set the value of the hidden field
                                    hiddenField.value = radioButton.value;

                                    // Post back to update the TextBox value
                                    __doPostBack('<%= HiddenFieldValue.ClientID %>', '');
                                });
                            });
                        </script>
                    </div>
                    <!--rad-->



            
                    
                    <!--2nd row-->
                    <div class="w3-row w3-border  w3-mobile">
                        <center>
                            <div class= "w3-rest">

                                <asp:TextBox Visible="false" Style="width: 30%" AutoCompleteType="Disabled" ID="TextBox1" runat="server" onFocus="if (this.value == this.defaultValue) { this.value = ''; }">=</asp:TextBox>
                                <br />

                                <asp:Button CssClass="button2" ID="Button2" runat="server" Text="SUBMIT" OnClick="submit_Click1" />
                            </div>

                            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

                        </center>
                    </div>
                    <h2>
                        <asp:Label CssClass="fonts" ID="Label1" runat="server" Text=" "></asp:Label>
                    </h2>
                </div>
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
                            <asp:Label CssClass="fonts" ID="Label5" runat="server" Text=" " Style="font-family: 'Comic Sans MS'; margin-bottom: 25px; font-size: 500%"></asp:Label>
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
     <audio controls>
                            <source src="https://feeds.soundcloud.com/stream/1654265469-rencee-c-banez-addg1.mp3" type="audio/mpeg" />
                        </audio>



</asp:Content>
