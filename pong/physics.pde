void updateBallVelocity() {
  println(ballX);
  
if ((ballX-ballRadius<=paddleWidth)&&(ballY-ballRadius<=paddleLength/2+leftPaddle)&&(ballY+ballRadius>=-paddleLength/2+leftPaddle)){
  // If collide with paddle, or top/bottom wall, then bounce off
  
 // bgColor=color(0,0,180,0);
  ballVx*=-1;
 
ballVy=BALL_VELOCITY*(ballY-leftPaddle)/(leftPaddle/2)*restitutionCoeff;
}
else if ((ballX+ballRadius>=displayWidth-paddleWidth)&&(ballY-ballRadius<=paddleLength/2+rightPaddle)&&(ballY+ballRadius>=-paddleLength/2+rightPaddle)){
// bgColor=color(180,0,0,0);
  ballVx*=-1;
 
ballVy+=BALL_VELOCITY*(ballY-rightPaddle)/(rightPaddle/2)*restitutionCoeff;
}
else {bgColor=0;}

if(ballY >= displayHeight-ballRadius){
    ballY=displayHeight-ballRadius;
    ballVy *= -restitutionCoeff;
  }
  if(ballX >displayWidth){
    leftScore++;
   ballX=-ballRadius+paddleWidth*3;
   ballY=ballRadius+paddleWidth*3;
   ballVy=BALL_VELOCITY;
   ballVx=BALL_VELOCITY;
   updateBallVelocity();
   pause=true;
   // ballX=displayWidth-ballRadius;
   // ballVx *= -restitutionCoeff;
  }
  if(ballY <=ballRadius){
    ballY=ballRadius;
    ballVy *= -restitutionCoeff;
  }
if(ballX<0){
 rightScore++;
    ballX=displayWidth-(ballRadius+paddleWidth*2);
    ballY=displayHeight-(ballRadius+paddleWidth*2);
    ballVy=BALL_VELOCITY;
    ballVx=-BALL_VELOCITY;
       updateBallVelocity();
        pause=true;
  //  ballX=ballRadius;
   // ballVx *= -restitutionCoeff;
  }

}

void updateBallPosition() {
  


  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions() {
if (leftPaddle!=paddleLength/2){
  if (left_up){
     leftPaddle-=PADDLE_VELOCITY ;
   }
}
if (leftPaddle+paddleLength/2!=displayHeight){
   if (left_down){
    leftPaddle+=PADDLE_VELOCITY ;
   }
}
if (rightPaddle!=paddleLength/2) {
   if (right_up){
     rightPaddle-=PADDLE_VELOCITY ;
   }
}
if (rightPaddle+paddleLength/2!=displayHeight){
   if (right_down){
   rightPaddle+=PADDLE_VELOCITY ;
   }
}
}