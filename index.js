for(var i=0;i<7;i++){
    document.querySelectorAll(".drum")[i].addEventListener("click",function(){
        var temp=this.innerHTML;
        animatebutton(temp);
        switch(temp){
            case "w":
                var audi1=new Audio('tom-1.mp3').play();
                audi1.play();
                //console.log("I got Click");
                break;
            case "a":
                var audi2 = new Audio('tom-2.mp3');
                //document.querySelector(".a").innerHTML="&fire";
                audi2.play();
                break;
            case "s":
                //document.querySelector(".s").innerHTML="&fire";
                var audi3 = new Audio('tom-3.mp3');
                audi3.play();
                break;
            case "d":
                var audi4 = new Audio('tom-4.mp3');
                audi4.play();
                break;
            case "j":
                var audi5 = new Audio('snare.mp3');
                audi5.play();
                break;
            case "k":
                var audi6 = new Audio('crash.mp3');
                audi6.play();
                break;
            case "l":
                var audi7 = new Audio('kick-bass.mp3');
                audi7.play();
                break;
            default: console.log("this is default");
        }
    });
}

// KeY PRESSING DONE IN KONCHAM DIFFERENT WAY
    for(var i=0;i<7;i++){
        document.addEventListener("keypress",function(event){
            var temp=event.key;
            animatebutton(event.key)
            switch(temp){
                case "w":
                    var audi1=new Audio('tom-1.mp3').play();
                    audi1.play();
                    //console.log("I got Click");
                    break;
                case "a":
                    var audi2 = new Audio('tom-2.mp3');
                    //document.querySelector(".a").innerHTML="&fire";
                    audi2.play();
                    break;
                case "s":
                    //document.querySelector(".s").innerHTML="&fire";
                    var audi3 = new Audio('tom-3.mp3');
                    audi3.play();
                    break;
                case "d":
                    var audi4 = new Audio('tom-4.mp3');
                    audi4.play();
                    break;
                case "j":
                    var audi5 = new Audio('snare.mp3');
                    audi5.play();
                    break;
                case "k":
                    var audi6 = new Audio('crash.mp3');
                    audi6.play();
                    break;
                case "l":
                    var audi7 = new Audio('kick-bass.mp3');
                    audi7.play();
                    break;
                default: console.log("this is default");
            }
        });
    
    }

    function animatebutton(curkey){
        var activebutton=document.querySelector("."+curkey);
        activebutton.classList.add("pressed");
        setTimeout(function(){
            activebutton.classList.remove("pressed");
        },100);
        //activebutton.classList.remove("pressed");

    }