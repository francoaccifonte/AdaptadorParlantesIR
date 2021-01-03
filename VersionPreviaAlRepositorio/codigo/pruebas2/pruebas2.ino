/*
 * PORTD: [F G LR LG LW IR X X]
 * PORTB: [? ? B A Dp C D E]
 */

const int pinRelayCont=16;
int i=0;
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
int aux=0;
int aux2=0;




void setup()
{
  Serial.begin(9600);
  aux=DDRD;
  DDRD=(aux|11111000);
}

void loop() 
{
  aux2=PIND;
  Serial.print("PIND= ");
  Serial.println(aux2);
  Serial.print("PORTD= ");
  Serial.println(PORTD);
  PORTD=(aux2^11111000);
  Serial.print("PORTD 2= ");
  Serial.println(aux2);
  
  
}
