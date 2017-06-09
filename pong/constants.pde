int displayWidth=1200, displayHeight=700;

// Velocity Cnstants
float BALL_VELOCITY = 15; //This is the MAX speed of the ball.
float PADDLE_VELOCITY = 10;

// Background Color
int bgColor = 0;

// Ball parameters
float ballX, ballY;
float ballVx=BALL_VELOCITY, ballVy=BALL_VELOCITY; // ballVx is always BALL_VELOCTY or -BALL_VELOCITY; ballVy varies.
float ballRadius = 10;
int ballColor = 255;
float restitutionCoeff=1;

// Y - position of Left and Right paddles
float leftPaddle=displayHeight/2, rightPaddle=displayHeight/2;
// Paddle Dimensions
float paddleLength = 180, paddleWidth = 20;
int paddleColorR = color(0,180,0,200);
int paddleColorL = color(123,10,255,200);

float paddlepositionincrease=5;

// Score Variables
int leftScore=0, rightScore=0;

// Controls for the Left Paddle
char LEFT_UP = 'q', LEFT_DOWN = 'a';

// Controls for the Right Paddle
char RIGHT_UP = 'o', RIGHT_DOWN = 'l';

// Game Controls
char RESET = 'r', PAUSE = 'p', START = 's',UNPAUSE='m';

// Keyoard Handling Booleans

boolean left_up, right_up, left_down, right_down;
boolean reset, pause, start;
int gamestate=0;