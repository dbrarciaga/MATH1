<%@ Page Title="" Language="C#" MasterPageFile="~/Main/Site1.Master" AutoEventWireup="true" CodeBehind="NewHomePage.aspx.cs" Inherits="MATH1.Main.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .first {
            margin: 300px;
            padding: 0px;
            display: flex;
            flex-direction: column;
            align-items: center;
            font-family: Calibri;
            font-size: 30px;
        }

        .fonts {
            font-family: 'Gill Sans MT';
        }

        * {
            margin: 0;
            padding: 0;
        }

        .imgbox {
            display: grid;
            height: 100%;
        }

        .center-fit {
            max-width: 100%;
            max-height: 100vh;
            margin: auto;
        }

        .span {
            margin-left: 0.1em;
            margin-right: 0.1em;
        }

        div {
            border-radius: 10px 10px; /* <---------- use this to round the opposite corners */
        }
    </style>






    <!--first-->
    <div style="text-align: center;">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <a  href="/Main/AccountPge/AccountPge.aspx"><img  style="height: 100%; width: 100%;" class="center-fit" src="https://i.imgur.com/ysE7Raj.png" title="source: imgur.com" /></a>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />


    </div>
    <!--first-->
    <br />
    <br />
    <br />


    <!--2nd-->


    <div style="text-align: center; color:black;" class="w3-container w3-card w3-white">
        <h3 style="font-family: 'Gill Sans MT'"><b>LEARN MATH, THE EASY WAY.</b></h3>
        <p style="margin: 5px; font-family: 'Gill Sans MT'; font-size: 25px;">MATHiNIQUE offers wide range of topics and concepts to learn in just touch of a finger.</p>
    </div>

    <br />
    <br />
    <br />
    <br />

    <!--3rd-->
    <div style="text-align: center;" class="w3-row w3-margin-bottom">
        <div style="background-size: cover; background-repeat: no-repeat; background-image: url('https://images.theconversation.com/files/339942/original/file-20200604-67393-1dej576.jpg?ixlib=rb-1.1.0&rect=0%2C22%2C994%2C633&q=20&auto=format&w=320&fit=clip&dpr=2&usm=12&cs=strip')" class="w3-half">
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

        </div>





        <br />
        <br />
        <br />
        <!--3nd-->
        <div style="font-family: 'Gill Sans MT'; font-size: 30px; border-radius: 10px 10px; margin-left: 5px; width: 49.5%; background-color: rgba(1,1,1,.5); border: 2px solid rgba(1,1,1,.5);" class="w3-container w3-white w3-half">
            <h3 style="font-family: 'Gill Sans MT'; font-size: 35px;"><b>Using the technology today,</b></h3>
            <p style="margin: 5px; font-family: 'Gill Sans MT'; font-size: 25px;">You can easily learn math from the comfort of your home or anywhere you want, using your device at your own pace.</p>
        </div>
    </div>
    <!--3rd-->
    <br />
    <br />
    <br />




    <!--4th-->
    <div style="text-align: center;" class="w3-white w3-hoverable ">
        <h1 style="font-family: 'Gill Sans MT'; font-size: 35px"><b>TOPICS</b></h1>
        <center>
            <!--1-->
            <div style="font-family: 'Gill Sans MT'; font-size: 25px" class="w3-row-padding">
                <div style="border-radius: 10px 10px;" class="w3-third w3-round  w3-panel w3-card w3-blue w3-animate-zoom   ">
                    <b>
                        <p>+</p>
                    </b>
                    <p>ADDITION</p>
                </div>

                <div style="border-radius: 10px 10px;" class="w3-third w3-round w3-panel w3-card-4 w3-red w3-animate-zoom  ">
                    <b>
                        <p>-</p>
                    </b>
                    <p>SUBTRACTION</p>
                </div>
                <div style="border-radius: 10px 10px;" class="w3-third w3-round w3-panel w3-card-4 w3-white w3-animate-zoom ">
                    <b>
                        <p>X</p>
                    </b>
                    <p>MULTIPLICATION</p>
                </div>

            </div>
            <!--2-->
            <div style="font-family: 'Gill Sans MT'; font-size: 25px" class="w3-row-padding">
                <div style="border-radius: 10px 10px;" class="w3-third w3-round w3-panel w3-card-4 w3-green w3-animate-zoom  ">
                    <b>
                        <p>÷</p>
                    </b>
                    <p>DIVISION</p>
                </div>
                <div style="border-radius: 10px 10px;" class="w3-third w3-round w3-panel w3-card-4 w3-pink w3-animate-zoom   ">
                    <b>
                        <p>+/-</p>
                    </b>
                    <p>Addition & Subtraction of INTEGER</p>
                </div>
                <div style="border-radius: 10px 10px;" class="w3-third w3-round w3-panel w3-card-4 w3-teal w3-animate-zoom  ">
                    <b>
                        <p>(+)X(-)</p>
                    </b>
                    <p>Multiplication of INTEGER</p>
                </div>

            </div>
            <!--3-->
            <div style="font-family: 'Gill Sans MT'; font-size: 25px" class="w3-row-padding">
                <div style="border-radius: 10px 10px;" class="w3-third w3-round w3-panel w3-card-4 w3-dark-gray  w3-animate-zoom ">
                    <b>
                        <p>(+)÷(-)</p>
                    </b>
                    <p>Division of INTEGER</p>
                </div>

                <div style="border-radius: 10px 10px;" class="w3-third w3-round w3-panel w3-card-4 w3-pale-blue w3-animate-zoom   ">
                    <b>
                        <p>X²</p>
                    </b>
                    <p>EXPONENTS</p>
                </div>
                <div style="border-radius: 10px 10px;" class="w3-third w3-round w3-panel w3-card-4 w3-pale-red w3-animate-zoom ">
                    <b>
                        <p>(+-)+(X÷)²</p>
                    </b>
                    <p>ORDER OF OPERATION</p>
                </div>

            </div>
        </center>
    </div>
    <!--4th-->
    <br />
    <br />
    <br />


    <!--5th-->
    <div style="text-align: left; color: white; font-family: 'Gill Sans MT'; font-size: 25px;" class="w3-container w3-margin">
        <h3 style="font-family: 'Gill Sans MT'; font-size: 30px; border-radius: 10px 10px;" class="w3-container w3-white"><b>The Learners</b></h3>

        <div class="w3-row-padding w3-margin-top">

            <div class="w3-third">
                <div class="w3-card w3-round-large">
                    <img src="https://www.verywellfamily.com/thmb/WUuWeZetmtRdPvoUnT2flgl2mTg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Getty_7_year_old_child_chores_kids_doing_dishes_LARGE_TongRo-5683033e3df78ccc15c3cc20.jpg" style="width: 100%">
                    <div class="w3-container w3-white">
                        <h4><b>Grade 1</b></h4>
                        <p>Kid's ages 6 to 8 years old</p>

                        <br />
                    </div>
                </div>
            </div>

            <div class="w3-third">
                <div class="w3-card w3-round-large">
                    <img src="https://media.funchildhood.com/2019/09/school-children-busy-writing-notes-using-digital-tablet-class_23-2148039920-626x4312.jpg" style="width: 100%">
                    <div class="w3-container w3-white">
                        <h4><b>Grade 2</b></h4>
                        <p>Kid's ages 7 to 8 years old</p>
                        <br />
                    </div>
                </div>
            </div>



            <div class="w3-third">
                <div class="w3-card w3-round-large">
                    <img src="https://static01.nyt.com/images/2018/02/14/well/family/well-family-insta/well-family-insta-superJumbo.jpg" style="width: 100%">
                    <div class="w3-container  w3-white">
                        <h4><b>Grade 3</b></h4>
                        <p>Kid's ages 8 to 9 years old</p>

                        <br />
                    </div>
                </div>
            </div>

        </div>

        <!-- row 2 -->
        <div class="w3-row-padding w3-margin-top">

            <div class="w3-third">
                <div class="w3-card w3-round-large">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxFXckWW_nH_jnJxdSgCV6vladE9YGqGoF-Q&usqp=CAU" style="width: 100%">
                    <div class="w3-container w3-white">
                        <h4><b>Grade 4</b></h4>
                        <p>Kid's ages 9 to 10 years old</p>

                        <br />
                    </div>
                </div>
            </div>

            <div class="w3-third">
                <div class="w3-card w3-round-large">
                    <img src="https://www.cdc.gov/ncbddd/childdevelopment/images/school-aged-children-on-playground-700px.jpg?_=82036" style="width: 100%">
                    <div class="w3-container  w3-white">
                        <h4><b>Grade 5</b></h4>
                        <p>Kid's ages 10 to 11 years old</p>

                        <br />
                    </div>
                </div>
            </div>

            <div class="w3-third">
                <div class="w3-card w3-round-large">
                    <img src="https://www.cdc.gov/ncbddd/childdevelopment/images/school-aged-children-on-playground-700px.jpg?_=82036" style="width: 100%">
                    <div class="w3-container  w3-white">
                        <h4><b>Grade 6</b></h4>
                        <p>Kid's ages 11 to 12 years old</p>

                        <br />
                    </div>
                </div>
            </div>


        </div>
        <br />
        <br />

        <br />
    </div>


    <!-- 6th -->
    <div style="text-align: center;" class="w3-container">


        <h3 style="font-family: 'Gill Sans MT'; font-size: 30px; border-radius: 10px 10px;" class="w3-container w3-white"><b>Math Storyboard</b></h3>


    </div>

    <div style="font-family: 'Gill Sans MT'; font-size: 30px; border-radius: 10px 10px;" class="w3-row w3-margin-bottom">
        <div style="background-size: cover; background-repeat: no-repeat; background-image: url('https://images.theconversation.com/files/339942/original/file-20200604-67393-1dej576.jpg?ixlib=rb-1.1.0&rect=0%2C22%2C994%2C633&q=20&auto=format&w=320&fit=clip&dpr=2&usm=12&cs=strip')" class="w3-half">
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
        </div>
        <div class="w3-half" style="text-align:center;font-family: 'Gill Sans MT'; ">
            <br />
            <br />
            <br />
            <br />
            <p style="margin: 5px;">There's never been a better time to build your math education. Introduce your learners to important math skills through our fun and engaging storyboard interactives</p>
        </div>
    </div>
    <!-- 6th -->





    <!-- 7th -->
    <div style="text-align: center;" class="w3-container w3-margin-bottom w3-margin-bottom">
    </div>
    <!-- 7th -->







    <!--join-->

    <section style="color: black;" class="first">
        <p>Want to join?</p>
        <a class="button2" href="/Main/AccountPge/AccountPge.aspx" style="font-size:50px;font-family: 'Gill Sans MT';"><b>Learn math now!</b></a>
    </section>



</asp:Content>
