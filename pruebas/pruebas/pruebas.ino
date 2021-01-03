const int pinIrRcv = 2;
const int pinRelayCont = 16;
const int pinServo = 15;
const int displayA = 12;
const int displayB = 13;
const int displayC = 10;
const int displayD = 9;
const int displayE = 8;
const int displayF = 7;
const int displayG = 6;
const int displayDp = 11;
const int ledR = 5;
const int ledG = 4;
const int ledW = 3;
// -------------- VARIABLES GLOBALES -------------------
byte statusDispB = 0;
byte statusDispD = 0;
byte statusLeds = 0;

int posicionServo = 1;
int maxServo = 150;
bool powerStatus = false;
bool muteStatus = false;

int backupVolMute=0;
//---------------- OBJETOS -----------------------------
#include <Servo.h>
#include <IRLibDecodeBase.h>
// #include <IRLibSendBase.h>
#include <IRLib_P01_NEC.h>
#include <IRLibCombo.h>
#include <IRLibRecvPCI.h>

Servo myservo;
IRrecvPCI myReceiver(pinIrRcv);
IRdecode myDecoder;

//----------------- LIBS -----------------------------
#include <avr/sleep.h>

void setup()
{
  //Serial.begin(9600);
  //Serial.println("Empezo la serial");
  pinMode(pinRelayCont,OUTPUT);
  digitalWrite(pinRelayCont,LOW);
  myservo.attach(pinServo);
  myservo.write(posicionServo);
  myReceiver.enableIRIn();
}

void loop() {
  int temp=SMCR;
  myservo.write(100);
  delay(100);
  myservo.write(0);
  delay(100);
  temp=255;
  temp=temp ^ (1<<SM2 | 1<<SM1 | 1<<SM2);
  
  myDecoder.decode();           //Decode it
}
