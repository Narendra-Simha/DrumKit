
let y;

//var audi = new Audio("tom1.mp3");
y=function handleclick(temp){
    var buttondata =temp;
    switch(temp){
        case "w":
            var audi1=new Audio('tom-1.mp3').play();
            audi1.play();
            //console.log("I got Click");
            break;
        case "a":
            var audi2 = new Audio('tom-2.mp3');
            document.querySelector(".a").innerHTML="&fire";
            audi2.play();
            break;
        case "s":
            document.querySelector(".s").innerHTML="&fire";
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
}

for(var i=0;i<7;i++){            //7-> i<document.querySelectorAll(".drum").length
    var s=document.querySelectorAll(".drum")[i].innerHTML;
    document.querySelectorAll(".drum")[i].addEventListener("click",()=>{y(s)});
    // console.log(this.innerHTML)
    // console.log(document.querySelectorAll(".drum")[i].innerHTML)
    }

/*function dosa(){
    var audis7 = new Audio('kick-bass.mp3');
    audis7.play();
    document.querySelector(".dosa").innerHTML="&fire";
}*/

//var audi = new Audio("tom1.mp3");
//audi.play();