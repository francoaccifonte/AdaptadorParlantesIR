#define NEC_POWER 0x802000FF
#define NEC_MUTE 0x8020708F
#define NEC_1 0x8020807F
#define NEC_2 0x802010EF
#define NEC_3 0x8020F00F
#define NEC_4 0x802040BF
#define NEC_5 0x8020906F
#define NEC_6 0x802008F7
#define NEC_7 0x8020C03F
#define NEC_8 0x802050AF
#define NEC_9 0x80208877
#define NEC_0 0x8020D02F
#define NEC_RED 0x8020A05F
#define NEC_GREEN 0x8020C837
#define NEC_YELLOW 0x8020609F
#define NEC_BLUE 0x802028D7
#define NEC_UP 0x8020E01F
#define NEC_DOWN 0x8020B847
#define NEC_LEFT 0x8020A857
#define NEC_RIGHT 0x8020C23D
#define NEC_OK 0x802038C7
#define NEC_VOL_UP 0x8020D827
#define NEC_VOL_DOWN 0x802042BD
#define NEC_CH_UP 0x8020E817
#define NEC_CH_DOWN 0x802018E7

#define CEL_NEC_POWER 0x18E710EF
#define CEL_NEC_MUTE 0x18E7906F
#define CEL_NEC_1 0x18E708F7
#define CEL_NEC_2 0x18E78877
#define CEL_NEC_3 0x18E748B7
#define CEL_NEC_4 0x18E7C837
#define CEL_NEC_5 0x18E728D7
#define CEL_NEC_6 0x18E7A857
#define CEL_NEC_7 0x18E76897
#define CEL_NEC_8 0x18E7E817
#define CEL_NEC_9 0x18E718E7
#define CEL_NEC_0 0x18E758A7
//#define CEL_NEC_RED 0x
//#define CEL_NEC_GREEN 0x
//#define CEL_NEC_YELLOW 0x
//#define CEL_NEC_BLUE 0x
#define CEL_NEC_UP 0x18180DF2
#define CEL_NEC_DOWN 0x18188D72
#define CEL_NEC_LEFT 0x18184DB2
#define CEL_NEC_RIGHT 0x1818CD32
#define CEL_NEC_OK 0x1818B34C
#define CEL_NEC_VOL_UP 0x18E740BF
#define CEL_NEC_VOL_DOWN 0x18E7C03F
#define CEL_NEC_CH_UP 0x18E700FF
#define CEL_NEC_CH_DOWN 0x18E7807F
#define CEL_NEC_MENU 0x18182DD2



void togglePower()
{
	if (powerStatus==true)
	{
		digitalWrite(pinRelayCont, LOW);
		//posicionServo = 1;
		powerStatus = false;
		statusLeds = 0;
    myservo.detach();
	}
	else
	{
		digitalWrite(pinRelayCont, HIGH);
		// posicionServo = 1;
		powerStatus = true;
		statusLeds = MACledG;
    myservo.attach(pinServo);
	}
}

void toggleMute()
{
	if (muteStatus==true)
	{
		posicionServo = backupVolMute;
		muteStatus = false;
		statusLeds = statusLeds^MACledR;
	}
	else
	{
		backupVolMute = posicionServo;
		posicionServo = 0;
		muteStatus = true;
		statusLeds = statusLeds|MACledR;
	}
}

void togglePhysicMode()
{

}


void updateStatuses()
{
	myDecoder.decode();           //Decode it
	if (powerStatus==true || (myDecoder.value == NEC_POWER ||
							              myDecoder.value == CEL_NEC_POWER ||
							              myDecoder.value == CEL_NEC_MENU ))
		switch (myDecoder.value) 
		{
		    case NEC_0:
		    case CEL_NEC_0:
		      posicionServo = 0 * maxServo/10;
		      break;
		    case NEC_1:
		    case CEL_NEC_1:
		      posicionServo = 1 * maxServo/10;
		      break;
		    case NEC_2:
		    case CEL_NEC_2:
		      posicionServo = 2 * maxServo/10;
		      break;
		    case NEC_3:
		    case CEL_NEC_3:
		      posicionServo = 3 * maxServo/10;
		      break;
		    case NEC_4:
		    case CEL_NEC_4:
		      posicionServo = 4 * maxServo/10;
		      break;
		    case NEC_5:
		    case CEL_NEC_5:
		      posicionServo = 5 * maxServo/10;
		      break;
		    case NEC_6:
		    case CEL_NEC_6:
		      posicionServo = 6 * maxServo/10;
		      break;
		    case NEC_7:
		    case CEL_NEC_7:
		      posicionServo = 7 * maxServo/10;
		      break;
		    case NEC_8:
		    case CEL_NEC_8:
		      posicionServo = 8 * maxServo/10;
		      break;
		    case NEC_9:
		    case CEL_NEC_9:
		      posicionServo = 9 * maxServo/10;
		      break;
		    case NEC_VOL_UP:
		    case CEL_NEC_VOL_UP:
		      posicionServo++;
		      break;
		    case NEC_VOL_DOWN:
		    case CEL_NEC_VOL_DOWN:
		      posicionServo--;
		      break;
		    case NEC_CH_UP:
		    case CEL_NEC_UP:
		      posicionServo=posicionServo+maxServo/10;
		      break;
		    case NEC_CH_DOWN:
		    case CEL_NEC_DOWN:
		      posicionServo=posicionServo-maxServo/10;
		      break;
		    case NEC_POWER:
		    case CEL_NEC_POWER:
		    case CEL_NEC_MENU:
		      togglePower();
		      break;
		    case NEC_MUTE:
		    case CEL_NEC_MUTE:
		      toggleMute();
		      break;
		    case NEC_RED:
		      //togglePhysicMode();
		      break;
		    default:
		      break;
		}
	if (posicionServo>maxServo)
		posicionServo=maxServo;
	if (posicionServo<0) 
		posicionServo=1;
	if (myservo.read()<posicionServo)
	{
		myservo.write(posicionServo);
		myservo.write(posicionServo-1);
	}
	else if(myservo.read()>posicionServo)
	{
		myservo.write(posicionServo);
		myservo.write(posicionServo+1);
	}
	
	myReceiver.enableIRIn();
}

