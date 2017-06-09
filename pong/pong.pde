void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  drawGameScreen();
  text(leftScore, 400,200 );
  text(rightScore, 800, 200);  
}

void drawGameScreen() {
  background(bgColor);
 // detectKeys();
  drawBall();
  updateBallVelocity();
  updateBallPosition();
  drawPaddles();
}

void drawBall() {
fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
}

void drawPaddles() {
   fill(paddleColor);
  rectMode(CENTER);
 rect(0+paddleWidth/2,leftPaddle,paddleWidth,paddleLength);
   fill(paddleColor);
  rectMode(CENTER);
 rect(displayWidth-paddleWidth/2,rightPaddle,paddleWidth,paddleLength);
updatePaddlePositions();
}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
}