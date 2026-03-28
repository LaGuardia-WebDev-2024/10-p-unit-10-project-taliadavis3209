//Stars!
var starXPos = [];
var starYPos = [];
var star = "🌟";
var starTotal = 100;

//star explosian
var staryXPos = [];
var staryYPos = [];
var stary = "⭐️";
var staryTotal = 100;

//weird star
var whispXPos = [];
var whispYPos = [];
var whisp = "💫";
var whispTotal = 3;
var whispFound = 0;


setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < whispXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, whispXPos[i], whispYPos[i])<15){
      whispXPos.splice(i, 1);
      whispYPos.splice(i, 1);
      whispFound++;
    }
  }
}

var display = function(){
  background(100,100,100,0);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < whispXPos.length; i ++){
    text(whisp, whispXPos[i], whispYPos[i]);
  }

  for(var i = 0; i < starXPos.length; i ++){
    text(star, starXPos[i], starYPos[i]);
  }
  for(var i = 0; i < staryXPos.length; i ++){
    text(stary,staryXPos[i], staryYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + whisp + "s   |   " + whisp + " " + whispFound + "/" + whispTotal, 0, 425);

  if(whispFound == whispTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  starXPos = [];
  starYPos = [];
  staryXPos = [];
  staryYPos = [];
  whispXPos = [];
  whispYPos = [];
  whispFound = 0;


  for(var i = 0; i < starTotal; i++){
    starXPos.push(random(0,600));
    starYPos.push(random(0,400));
  }

    for(var i = 0; i < staryTotal; i++){
    staryXPos.push(random(0,600));
    staryYPos.push(random(0,600));
  }

  for(var i = 0; i < whispTotal; i++){
    whispXPos.push(random(0,600));
    whispYPos.push(random(0,400));
  }
 
}