void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}
void draw() {
  drawGameScreen();
  fill (paddleColorR);
  text("Left Player", 280,120);
  fill (paddleColorL);
  text("Right Player", 680, 120);
  fill (paddleColorR);
  text(leftScore, 400,200);
  fill (paddleColorL);
  text(rightScore, 800, 200);

 
}


void drawGameScreen() {
  if ((!pause)&&(gamestate==1)){
  background(bgColor);
 // detectKeys();
  drawBall();
  updateBallVelocity();
  updateBallPosition();
  drawPaddles();
    fill (paddleColorR);
  text("Press p to pause", 400,400);
  fill (paddleColorL);
  text("Press r to reset", 400, 600);
  }
  else if (gamestate==1){
    text("Press m to unpause",350,500);}
  else if (gamestate==0){
    background(140);
     text("Press s to start",430,400);
    }
    if (reset){
gamestate=0;
ballVy=BALL_VELOCITY;
ballVx=BALL_VELOCITY;
leftPaddle=displayHeight/2;
rightPaddle=displayHeight/2;
ballX=-ballRadius+paddleWidth*3;
ballY=ballRadius+paddleWidth*3;
pause=false;
leftScore=0;
rightScore=0;
}
if (start){
gamestate=1;
}

}

void drawBall() {
fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
}

void drawPaddles() {
   fill(paddleColorR);
  rectMode(CENTER);
 rect(0+paddleWidth/2,leftPaddle,paddleWidth,paddleLength,100);
   fill(paddleColorL);
  rectMode(CENTER);
 rect(displayWidth-paddleWidth/2,rightPaddle,paddleWidth,paddleLength,100);
updatePaddlePositions();
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
}