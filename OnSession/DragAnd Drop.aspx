<%@ Page Title="" Language="C#" MasterPageFile="~/OnSession/OnSesh.Master" AutoEventWireup="true" CodeBehind="DragAnd Drop.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="MATH1.OnSession.WebForm17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Montserrat');

        .grid-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            padding: 10px;
            text-align: center;
        }

        body {
            font-family: 'Montserrat', sans-serif;
            background-color: #eee;
            color: #111;
        }

        .draggable-elements {
            display: block;
            margin: 2rem;
        }

        .draggable {
            height: 5rem;
            width: 5rem;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 4rem;
            margin: 0rem 0.5rem;
            cursor: move;
            transition: opacity 0.2s;
        }

            .draggable:hover {
                opacity: 1;
            }

        .droppable {
            height: 8.5rem;
            width: 8.5rem;
            margin: 1rem auto;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-align: center;
            font-size: 4rem;
            font-weight: bold;
            background-color: #fff;
            border: 3px dashed #111;
            transition: border-width 0.2s, transform 0.2s, background-color 0.4s;
        }

            .droppable span {
                font-size: 1.25rem;
                pointer-events: none; /* The element is never the target of pointer events */
            }

            /* Drag and Drop Related Styling */

            .droppable.droppable-hover {
                /* background-color: #bee3f0; */
                border-width: 5px;
                transform: scale(1.1);
            }

            .droppable.dropped {
                border-style: solid;
                color: #fff;
            }

                .droppable.dropped span {
                    font-size: 0.75rem;
                    margin-top: 0.5rem;
                }

                .droppable.dropped i {
                    pointer-events: none;
                }

        .draggable.dragged {
            user-select: none;
            opacity: 0.1;
            cursor: default;
        }

            .draggable.dragged:hover {
                opacity: 0.1;
            }

        @media (max-width: 600px) {
            html {
                font-size: 14px;
            }

            .draggable-elements {
                margin: 1.5rem;
            }
        }

        .borderMargin {
            margin-right: 200px;
            margin-left: 100px;
            margin-bottom: 50px;
            margin-top: 50px;
        }

        .borderInstruction {
            margin-right: 200px;
            margin-left: 100px;
        }

        .score-container {
            display: inline-block;
            vertical-align: top;
            border: 3px solid #000;
            font-size: 2em;
            padding: 1em;
            margin-top: 50px;
        }
    </style>





    <h1 style="font-family: 'Comic Sans MS';" class="borderInstruction">DRAG and DROP</h1>
    <h1 style="font-family: 'Comic Sans MS';" class="borderInstruction">Instructions:</h1>
    <h2 style="font-family: 'Comic Sans MS';" class="borderInstruction">Drag the Correct answer to the Corresponding Box </h2>


    <div style="font-family: 'Comic Sans MS';" class="borderInstruction score-container">
        Score: <span id="score">
            <asp:Label ID="Score_label" runat="server" Text="0"></asp:Label></span>
    </div>
    <div class="borderInstruction">
        <h4 id="demo" style="font-size: 150%" class="fonts">
            <asp:Label runat="server" ID="incomplete" Text=""></asp:Label></h4>
    </div>



    <div style="font-family: 'Comic Sans MS';" class="grid-container w3-white w3-round-xlarge borderMargin">




        <section class="draggable-elements">
            <i class="fas fa-cat draggable" draggable="true" style="color: #ff6384;" id="n1">
                <asp:Label ID="Drag1" runat="server" Text=""></asp:Label></i> &nbsp;      
            <br /><br /><br />
    <i class="fas fa-dog draggable" draggable="true" style="color: #36a2eb;" id="n2">
        <asp:Label ID="Drag2" runat="server" Text=""></asp:Label></i>&nbsp;
             <br /><br /><br />
    <i class="fas fa-dove draggable" draggable="true" style="color: #ffce56;" id="n3">
        <asp:Label ID="Drag3" runat="server" Text=""></asp:Label></i>&nbsp;
            <br /><br /><br />
    <i class="fas fa-fish draggable" draggable="true" style="color: #9966ff;" id="n4">
        <asp:Label ID="Drag4" runat="server" Text=""></asp:Label></i>&nbsp
            <br /><br /><br />
    <i class="fas fa-frog draggable" draggable="true" style="color: #4bc0c0;" id="n5">
        <asp:Label ID="Drag5" runat="server" Text=""></asp:Label></i>
            <!-- <i class="fas fa-horse draggable" draggable="true" style="color: #333333;" id="horse"></i>
    <i class="fas fa-hippo draggable" draggable="true" style="color: #ff9f40;" id="hippo"></i>
    <i class="fas fa-spider draggable" draggable="true" style="color: #ff99cc;" id="spider"></i> -->
        </section>



        <section class="droppable-elements">

            <div class="droppable" data-draggable-id="n5" id="drop5"><span>
                <asp:Label ID="Drop5" runat="server" Text=""></asp:Label></span></div>
            <div class="droppable" data-draggable-id="n3" id="drop3"><span>
                <asp:Label ID="Drop3" runat="server" Text=""></asp:Label></span></div>
            <div class="droppable" data-draggable-id="n1" id="drop1"><span>
                <asp:Label ID="Drop1" runat="server" Text=""></asp:Label></span></div>
            <div class="droppable" data-draggable-id="n4" id="drop4"><span>
                <asp:Label ID="Drop4" runat="server" Text=""></asp:Label></span></div>
            <div class="droppable" data-draggable-id="n2" id="drop2"><span>
                <asp:Label ID="Drop2" runat="server" Text=""></asp:Label></span></div>
            <!-- <div class="droppable" data-draggable-id="spider"><span>Spider</span></div>
    <div class="droppable" data-draggable-id="horse"><span>Horse</span></div>
    <div class="droppable" data-draggable-id="hippo"><span>Hippo</span></div> -->
        </section>

    </div>

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>



    <div class="w3-row w3-margin ">
        <asp:HiddenField runat="server" ID="hidScore" />
        <asp:Button CssClass="w3-button w3-black w3-round" ID="btnSubmit" OnClientClick="return sbmt();" OnClick="sbmt_Click" class="btn btn-info" runat="server" Text="FINISH" />
    </div>












    <script>
        const draggableElements = document.querySelectorAll(".draggable");
        const droppableElements = document.querySelectorAll(".droppable");
        var score = 0;
        var qNumber = 5;


        var correctSound = document.createElement('audio');
        correctSound.setAttribute('src', 'http://www.orangefreesounds.com/wp-content/uploads/2017/06/Ting-sound-effect.mp3');

        var errorSound = document.createElement('audio');
        errorSound.setAttribute('src', 'http://soundbible.com/mp3/Buzz-SoundBible.com-1790490578.mp3');

        const playAgainBtn = ("#play-again-btn");

        draggableElements.forEach(elem => {
            elem.addEventListener("dragstart", dragStart); // Fires as soon as the user starts dragging an item - This is where we can define the drag data
            // elem.addEventListener("drag", drag); // Fires when a dragged item (element or text selection) is dragged
            // elem.addEventListener("dragend", dragEnd); // Fires when a drag operation ends (such as releasing a mouse button or hitting the Esc key) - After the dragend event, the drag and drop operation is complete
        });

        droppableElements.forEach(elem => {
            elem.addEventListener("dragenter", dragEnter); // Fires when a dragged item enters a valid drop target
            elem.addEventListener("dragover", dragOver); // Fires when a dragged item is being dragged over a valid drop target, repeatedly while the draggable item is within the drop zone
            elem.addEventListener("dragleave", dragLeave); // Fires when a dragged item leaves a valid drop target
            elem.addEventListener("drop", drop); // Fires when an item is dropped on a valid drop target

        });

        // Drag and Drop Functions

        //Events fired on the drag target

        function dragStart(event) {
            event.dataTransfer.setData("text", event.target.id); // or "text/plain" but just "text" would also be fine since we are not setting any other type/format for data value

        }

        //Events fired on the drop target

        function dragEnter(event) {
            if (!event.target.classList.contains("dropped")) {
                event.target.classList.add("droppable-hover");
            }
        }

        function dragOver(event) {
            if (!event.target.classList.contains("dropped")) {
                event.preventDefault(); // Prevent default to allow drop

            }
        }

        function dragLeave(event) {
            if (!event.target.classList.contains("dropped")) {
                event.target.classList.remove("droppable-hover");
                
            }
        }

        function drop(event) {
            event.preventDefault(); // This is in order to prevent the browser default handling of the data
            event.target.classList.remove("droppable-hover");
            const draggableElementData = event.dataTransfer.getData("text"); // Get the dragged data. This method will return any data that was set to the same type in the setData() method
            const droppableElementData = event.target.getAttribute("data-draggable-id");
            const isCorrectMatching = draggableElementData === droppableElementData;
            if (isCorrectMatching) {
                const draggableElement = document.getElementById(draggableElementData);
                event.target.classList.add("dropped");
                // event.target.style.backgroundColor = draggableElement.style.color; // This approach works only for inline styles. A more general approach would be the following: 
                event.target.style.backgroundColor = window.getComputedStyle(draggableElement).color;
                draggableElement.classList.add("dragged");
                draggableElement.setAttribute("draggable", "false");
                event.target.insertAdjacentHTML("afterbegin", `<i class="fas fa-${draggableElementData}"></i>`);
                score++;

                correctSound.play();




            }

            // output score
            document.getElementById("score").innerHTML = score;
            if (score == 5) {
                document.getElementById("score2").innerHTML = "5";
            }

        }







    </script>

    <script>
        function sbmt() {
            thisScore = score;
            document.getElementById('<%=hidScore.ClientID %>').value = thisScore;
            return true;
        }

    </script>


</asp:Content>
