/// @description Set the proper variables
isManControlled = true;
isControllable = false;

idleAnimation = spr_ManIdle;
walkAnimation = spr_ManWalking;
drinkAnimation = spr_ManDrinking;
eatingAnimation = spr_ManEating;
huggingAnimation = spr_ManHugging;
dyingAnimation = spr_ManDying;
apatheticAnimation = spr_ManApathetic;

apathetic = false;
dead = false;

walkingSpeed = 1;

thirstLevel = 100;
batteryLevel = 90;
sanityLevel = 100;

currentlyDrinking = false;
drinkingTime = 100;

currentlyEating = false;
eatingTime = 40;

encouragingTimeout = 0;

encouragementText[0] = "Come on!";
encouragementText[1] = "Do not give up now!";
encouragementText[2] = "You can make it! We'll be together soon!";
encouragementText[3] = "You're fine! Go on!";
encouragementText[4] = "Endure the pain! Continue!";
encouragementText[5] = "PUSH, PUSH, PUSH!";
encouragementText[6] = "JUST. KEEP. PUSHING!";
encouragementText[7] = "You cannot give up now.";
encouragementText[8] = "You're stronger than you think! Continue!";
encouragementText[9] = "Go, go, go!";