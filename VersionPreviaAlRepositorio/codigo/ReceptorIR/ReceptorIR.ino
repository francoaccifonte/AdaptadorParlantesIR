  #include <IRLibDecodeBase.h>
  #include <IRLibSendBase.h>
  #include <IRLib_P01_NEC.h>
  #include <IRLibCombo.h>
  #include <IRLibRecvPCI.h>
  #include <Servo.h>
  bool ledVerde = false;
  const int pinLedVerde=3;     
  const int pinServo=9;
  int posicion=0;
  long codigoViejo=0;
  long codigoActual=0;
  #define CODE_REPEAT 0xFFFFFFFF
  
  
  IRrecvPCI myReceiver(2); //Create a receiver object to listen on pin 2
  IRdecode myDecoder;   //Create a decoder object
  Servo myservo;
  
    void setup() {
      myReceiver.enableIRIn(); // Start the receiver
      myservo.attach(pinServo);
      
      Serial.begin(9600);
      pinMode(pinLedVerde,OUTPUT);
      digitalWrite(pinLedVerde,HIGH);
      delay(1000);
      digitalWrite(pinLedVerde,LOW);
    }
     
    void loop() {
      if (myReceiver.getResults()) {
        myDecoder.decode();
        codigoActual=myDecoder.value;
        if (codigoActual==CODE_REPEAT)
        {codigoActual=codigoViejo;}       
        switch (codigoActual){
          case 0x802000FF:
            ledVerde=digitalRead(pinLedVerde);
            if (ledVerde){
              digitalWrite(pinLedVerde,LOW);}
            else
              {digitalWrite(pinLedVerde,HIGH);}
            delay(500);
          break;
          
          case 0x8020D827:   //V up
            if (posicion<160)
              {posicion=posicion+10;
              myservo.write(posicion);
              }
          break;
          
          case 0x802042BD:   //V down
            if (posicion>0)
              {posicion=posicion-10;
              myservo.write(posicion);
              }
          break;}
        Serial.println(posicion);
        Serial.println(codigoActual,HEX);
        codigoViejo=codigoActual;
        
        
        myReceiver.enableIRIn();      //Restart receiver
      }
    }


/*
 * 802000FF = on off
 * 8020D827 = V up
 * 802042BD = V down
 * 8020708F = Mute
 */
