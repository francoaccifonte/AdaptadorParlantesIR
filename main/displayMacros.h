//   const byte MAC0b = 0b00110111;
//   const byte MAC0d = 0b10000000;
//     const byte MAC1b = 0b00100100;
//     const byte MAC1d = 0b00000000;
//   const byte MAC2b = 0b00110011;
//   const byte MAC2d = 0b01000000;
//     const byte MAC3b = 0b00110110;
//     const byte MAC3d = 0b01000000;
//   const byte MAC4b = 0b00100100;
//   const byte MAC4d = 0b11000000;
//     const byte MAC5b = 0b00010110;
//     const byte MAC5d = 0b11000000;
//   const byte MAC6b = 0b00010111;
//   const byte MAC6d = 0b11000000;
//     const byte MAC7b = 0b00110100;
//     const byte MAC7d = 0b00000000;
//   const byte MAC8b = 0b00110111;
//   const byte MAC8d = 0b11000000;
//     const byte MAC9b = 0b00110110;
//     const byte MAC9d = 0b11000000;
// // PORTB: [? ? B A Dp C D E]
// // PORTD: [F G LR LG LW IR X X]
//   const byte MACledW  = 0b00001000;
//   const byte MACledG  = 0b00010000;
//   const byte MACledWG = 0b00011000;
//   const byte MACledR  = 0b00100000;
//   const byte MACledRW = 0b00101000;
//   const byte MACledRGW= 0b00111000;
//   const byte MACledOFF= 0;

#define MAC0b 0b00110111;
#define MAC0d 0b10000000;
#define MAC1b 0b00100100;
#define MAC1d 0b00000000;
#define MAC2b 0b00110011;
#define MAC2d 0b01000000;
#define MAC3b 0b00110110;
#define MAC3d 0b01000000;
#define MAC4b 0b00100100;
#define MAC4d 0b11000000;
#define MAC5b 0b00010110;
#define MAC5d 0b11000000;
#define MAC6b 0b00010111;
#define MAC6d 0b11000000;
#define MAC7b 0b00110100;
#define MAC7d 0b00000000;
#define MAC8b 0b00110111;
#define MAC8d 0b11000000;
#define MAC9b 0b00110110;
#define MAC9d 0b11000000;
// PORTB: [? ? B A Dp C D E]
// PORTD: [F G LR LG LW IR X X]
#define MACledW 0b00001000;
#define MACledG 0b00010000;
#define MACledWG 0b00011000;
#define MACledR 0b00100000;
#define MACledRW 0b00101000;
#define MACledRGW 0b00111000;
#define MACledOFF 0;

void mostrarDisp(byte statusDispB, byte statusDispD, byte statusLeds)
{
  // PORTB: [? ? B A Dp C D E]
  // PORTD: [F G LR LG LW IR X X]
  const int delayEnganarOjo = 1;
  const byte maskUnknownD = 0b00000011;
  const byte maskUnknownB = 0b11000000;
  byte maskB = 0b00000001;
  byte maskD = 0b00000100;
  byte aux = 0;
  byte auxd = 0;
  byte auxb = 0;
  for (int i=1; i<=6 ; i++)
  {
    aux = PORTD;
    auxd = (aux & maskUnknownD) | (maskD & (statusDispD|statusLeds) ) ;
    PORTD = auxd;
    aux = PORTB;
    auxb = (aux & maskUnknownB) | (maskB & statusDispB) ;
    PORTB = auxb;
    maskB = maskB<<1;
    maskD = maskD<<1;
    if ( (auxb != 0) || (auxd != 0) )
    {
    	delay(delayEnganarOjo);
	}
  }
}

void escalarNumero(int valor, int maximo)
{
	int aux=0;
	if ( valor >= 0 && valor <= maximo )
		aux = 10 * valor / maximo;

	switch (aux) {
	    case 0:
	      statusDispB = MAC0b;
	      statusDispD = MAC0d;
	      break;
	    case 1:
	      statusDispB = MAC1b;
	      statusDispD = MAC1d;
	      break;
	    case 2:
	      statusDispB = MAC2b;
	      statusDispD = MAC2d;
	      break;
	    case 3:
	      statusDispB = MAC3b;
	      statusDispD = MAC3d;
	      break;
	    case 4:
	      statusDispB = MAC4b;
	      statusDispD = MAC4d;
	      break;
	    case 5:
	      statusDispB = MAC5b;
	      statusDispD = MAC5d;
	      break;
	    case 6:
	      statusDispB = MAC6b;
	      statusDispD = MAC6d;
	      break;
	    case 7:
	      statusDispB = MAC7b;
	      statusDispD = MAC7d;
	      break;
	    case 8:
	      statusDispB = MAC8b;
	      statusDispD = MAC8d;
	      break;
	    case 9:
	      statusDispB = MAC9b;
	      statusDispD = MAC9d;
	      break;
	    default: break;
	}
	if (powerStatus == false)
	{
		statusDispB = 0;
		statusDispD = 0;
	}
}