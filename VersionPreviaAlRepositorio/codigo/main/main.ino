/*
* PORTD: [F G LR LG LW IR X X]
* PORTB: [? ? B A Dp C D E]
* Mascaras para configurar como salida los leds, y entrada el receptor IR:
* maskOutD = 0b11111000
* maskInD = 0b00000100
* maskOutB = 0b00111111
*/

// -------------- PINES DE LEDS Y CONEXIONES -----------
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

//---------------- OJETOS -----------------------------
#include <avr/sleep.h>
#include <Servo.h>
#include <IRLibDecodeBase.h>
// #include <IRLibSendBase.h>
#include <IRLib_P01_NEC.h>
#include <IRLibCombo.h>
#include <IRLibRecvPCI.h>

Servo myservo;
IRrecvPCI myReceiver(pinIrRcv);
IRdecode myDecoder;

//----------------- LIBRERONGAS -----------------------



#include "displayMacros.h"
#include "remoteMacros.h"



void setup()
{
  //Serial.begin(9600);
  //Serial.println("Empezo la serial");
  configLeds();
  pinMode(pinRelayCont,OUTPUT);
  digitalWrite(pinRelayCont,LOW);
  //myservo.attach(pinServo);
  myservo.write(posicionServo);
  myReceiver.enableIRIn();
  statusDispB = MAC0b;
  statusDispD = MAC0d;
  statusLeds = 0;
}

void loop()
{
  if (myReceiver.getResults())
  {
    updateStatuses();
  }
  escalarNumero(posicionServo,maxServo);
  mostrarDisp(statusDispB,statusDispD,statusLeds);
  // for (int i=0 ; i<= maxServo ; i++)
  // {
  //   escalarNumero(i,maxServo);
  //   mostrarDisp(statusDispB,statusDispD,statusLeds);
  //   myservo.write(i);

  // }
  // for (int i=maxServo ; i>=0; i--)
  // {
  //   escalarNumero(i,maxServo);
  //   mostrarDisp(statusDispB,statusDispD,statusLeds);
  //   myservo.write(i);
  // }

}

void configLeds()
{
  // NOTA: estoy dejando como 0 la entrada de la interrupcion(PORTD.2), supongo que la librerira se encargara de configurarlo.
  const int maskOutD = 0b11111000; // 1 significa que es salida, 0 que no me importa
  const int maskInD = 0b00000000; // 1 significa que es entrada, 0 que no me importa
  const int maskOutB = 0b00111111;
  const int maskInB = 0b00000000;
  int aux = 0;
  // Pongo como entrada o salida, segun corresponda.
  aux = DDRD;
  DDRD = (maskOutD) | (aux & (~maskInD));
  aux = DDRB;
  DDRB = (maskOutB) | (aux & (~maskInB));
  // Inicializo en 0 las que son salida, y en 1 la que es entrada (para que no haya un pin flotando)
  aux = PORTD;
  PORTD = (maskInD) | (aux & (~maskOutD));
  aux = PORTB;
  PORTB = (maskInB) | (aux & (~maskOutB));
}


