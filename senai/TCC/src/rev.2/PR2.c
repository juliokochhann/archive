#include <system.h>		//Inclui as definições principais do programa
#include<lcd_driver.h>

#define LCD_ARGS	 1,	/* Interface type: mode 0 = 8bit, 1 = 4bit(low nibble), 2 = 4bit(upper nibble) */ \
		1,				/* Use busy signal: 1 = use busy, 0 = use time delays */\
		PORTC, TRISC, 	/* Data port and data port tris register */ \
		PORTC, TRISC, 	/* Control port and control port tris register */ \
		4,				/* Bit number of control port is connected to RS */ \
		5,				/* Bit number of control port is connected to RW */ \
		6 				/* Bit number of control port is connected to Enable */ \
		
	void teste();
		void controle();
	void status();
		void comando();
	void escreve();
		void cor();
	void efeito();

char contador, delay, segundo, estado, controle, stop, pause, cor, efeito, lamp;
// Declara variáveis do tipo char

void interrupt()	//Rotina que comanda as interrupções de tempo
{
	if(test_bit(intcon,T0IF))
		{
			tmr0 = 131;
			contador++;		// Incrementa var contador
			delay++;
			
			if(delay == 125)
			delay = 0;
			if(contador == 125) //Cada 125 ciclos corresponde a exato 1 segundo
				{
					segundo++;	//Incrementa segundo
					if(segundo == 5)
							
							segundo = 0;	// a cada 4 segundos a contagem é reiniciada
				}	
			clear_bit(intcon,T0IF);
		}
}

void main()	//Rotina que contém os comandos principais para iniciar o programa
{
	trisa = 0;		
	trisb = 7;
	porta = 0;
	portb = 0;
		
		estado = 0;
		segundo = 0;			// Inicia todas as varíaveis com valor zero
		controle = 0;
		stop = 0;
		pause = 0;
		cor = 0;
		efeito = 0;
		lamp = 0;
	
		
			lcd_setup();
				lcd_clear();
	
	option_reg = 133;
	tmr0=131;
	set_bit(intcon,T0IE);	 // As interrupções de tempo são ativadas
	set_bit(intcon,GIE);

do	// Enquanto o circuito estiver ligado, while(1), serão executadas as sub-rotinas abaixo
		{
			teste();
			status();
			comando();
			controle();
			escreve();
			cor();
			efeito();
		}while(1);
}	//Fim do void main

void teste()	// Liga e desliga o circuito de acordo com os testes e modifica variáveis
{

		if((test_bit(portb,0) == 0) && (stop == 0))
			{	
			delay_ms(20);
			estado = 1;		// Se verdadeiro, liga o circuito tirando-o do modo "Stand-By"
			stop = 1;
			}

		if((test_bit(portb,0) == 1) && (stop == 1))
			stop = 2;
		
		if((test_bit(portb,0) == 0) && (stop == 2))
			{
			delay_ms(20);		// coloca o circuito em "Stand-By" e zera todas as variáveis
			controle = 0;
			  estado = 0;
			  efeito = 0;
			   portb = 0;
			    lamp = 0;
			     cor = 0;
			    stop = 4;
			 }
		if((test_bit(portb,0) == 1) && (stop == 4))
			stop = 0;

}	//Fim do void teste

void controle()	// Seleciona, através de uma tecla, a ação do circuito do 555 no PIC
{
		if((test_bit(portb,1) == 0) && (pause == 0))
			{
			delay_ms(20);
			controle++;
			pause = 1;
			}
		
		if((test_bit(portb,1) == 2) && (pause == 1))
			pause = 2;
			
		if((test_bit(portb,1) == 0) && (pause == 2))
			{
			delay_ms(20);
			controle++;
			pause = 4;
			}
			
		if((test_bit(portb,1) == 2) && (pause == 4))
			pause = 0;
		
		if(controle == 4)
			controle = 0;
			
}	//Fim do void controle

void status()	// Indica em 3 LEDs a condição de funcionamento do circuito
{
	if(estado == 1)
	{
		if(lamp == 0)
		
		porta = 34; 	// Liga LED verde, liga Back-light do display e habilita o 555
		
		if(lamp == 1)
		
		porta = 44; 	// Aciona Relé da lâmpada no RB3, LED azul
		
	}else
		porta = 9; // Liga LED RGB na cor vermelho indicando que o circuito está em "Stand-By",
						//e tambem a lâmpada
}	//Fim do void status

//Obs.: Stand By: Estado no qual quase todas as variáveis ficam zeradas e 555 inativo

void comando()	// Define as variáveis cor e efeito, de acordo com o valor do "controle"
{

	if((estado == 1) && (test_bit(portb,2) == 4))
		{
		if(controle == 1)
		{
					// Enquanto for verdadeiro, incrementa a var cor em +1
			while((estado == 1) && (test_bit(portb,2) == 4) && (controle == 1));
			{
			delay_ms(20);
			cor++;
			}
		}
	if(cor == 6)					// Quando a var cor for igual a 6
		{						   // esta é zerada
			delay_ms(20);		
			cor = 0;
		}
	
		if(controle == 2)
		{
			while((estado == 1) && (test_bit(portb,2) == 4) && (controle == 2));
			{
			delay_ms(20);
			efeito++;
			}
		}
	
	if(efeito == 5)
			{
			delay_ms(20);
			efeito = 0;
			}
			
		if(controle == 3)
		{
			while((estado == 1) && (test_bit(portb,2) == 4) && (controle == 3));
			{
			delay_ms(20);
			lamp++;
			}
			
		if(lamp == 2)
			{
			delay_ms(20);
			lamp = 0;
			}
		}
	}	
}	//Fim do void comando

void cor()		// Contém os efeitos, instruções para cada LED ( RED, GREEN AND BLUE )
{

if((estado == 1) && (controle == 1))// Se verdadeiro executa o switch de acordo com o caso
	{
		
		switch ( cor ) // Variável alvo
			{
		
		case 0: // Quando a var cor for igual a zero, executa o bloco de ações do case 0
		{
		lcd_gotoxy(5,1);
			lprintf(" Vermelho      ");
		portb = 8;
		break;
		}
		
		case 1:	// Igual a 1..
		{
		lcd_gotoxy(5,1);
			lprintf(" Verde         ");
		portb = 16;
		break;
		}
		
		case 2:
		{
		lcd_gotoxy(5,1);
			lprintf(" Azul          ");
		portb = 32;
		break;
		}
		
		case 3:
		{
		lcd_gotoxy(5,1);
			lprintf(" Laranja       ");
		portb= 56;
		break;
		}
			
		case 4:
		{
		lcd_gotoxy(5,1);
			lprintf(" Roxo          ");
		portb = 40;
		break;
		}
		
		case 5:
		{
		lcd_gotoxy(5,1);
			lprintf(" Ciano         ");
		portb = 48;
		break;
		}
			}
	}
}

void efeito()
{

if((estado == 1) && (controle == 2))
		{
		
		switch ( efeito )
			{
		case 0:
		{
		lcd_gotoxy(9,1);
			lprintf("Sequencial ");
		if(delay < 25)
		portb = 8;
			if((delay > 25) && (delay < 50))
		portb = 16;
			if((delay > 50) && (delay < 75))
		portb = 32;
			if((delay > 75) && (delay < 100))
		portb = 56;
			if((delay > 100) && (delay < 125))
		portb = 40;
			if((delay > 125) && (delay < 150))
		portb = 48;
		break;
		}
		
		case 1:
		{
		lcd_gotoxy(9,1);
			lprintf("Psicodelico");
		if(delay < 20)
		portb = 1 * delay;
			if((delay > 20) && (delay < 40))
		portb = 16 * delay;
			if((delay > 40) && (delay < 60))
		portb = 32 * delay;
			if((delay > 60) && (delay < 80))
		portb = 56 * delay;
			if((delay > 80) && (delay < 100))
		portb = 40 * delay;
			if((delay > 100) && (delay < 120))
		portb = 48 * delay;
		break;
		}
		
		case 2:
		{
		lcd_gotoxy(9,1);
			lprintf("Pisca-Red  ");
			if(delay < 20)
		portb = 8;
			if((delay > 20) && (delay < 40))
		portb = 0;
			if((delay > 40) && (delay < 60))
		portb = 8;
			if((delay > 60) && (delay < 80))
		portb = 0;
			if((delay > 80) && (delay < 100))
		portb = 8;
			if((delay > 100) && (delay < 120))
		portb = 0;
		break;
		}
		
		case 3:
		{
		lcd_gotoxy(9,1);
			lprintf("Pisca-Green");
		if(delay < 20)
		portb = 16;
			if((delay > 20) && (delay < 40))
		portb = 0;
			if((delay > 40) && (delay < 60))
		portb = 16;
			if((delay > 60) && (delay < 80))
		portb = 0;
			if((delay > 80) && (delay < 100))
		portb = 16;
			if((delay > 100) && (delay < 120))
		portb = 0;
		break;
		}
		
		case 4:
		{
		lcd_gotoxy(9,1);
			lprintf("Pisca-Blue ");
		if(delay < 20)
		portb = 32;
			if((delay > 20) && (delay < 40))
		portb = 0;
			if((delay > 40) && (delay < 60))
		portb = 32;
			if((delay > 60) && (delay < 80))
		portb = 0;
			if((delay > 80) && (delay < 100))
		portb = 32;
			if((delay > 100) && (delay < 120))
		portb = 0;
		break;
		}
		}
	}
}

void escreve()
{
	if(estado == 1)
		{
			lcd_gotoxy(0,2);
			lprintf("Modo :");
			
			if(contador < 120)
			{
			lcd_gotoxy(0,0);
			lprintf("     LED Shower     ");
			}
			else
				{
			lcd_gotoxy(0,0);
			lprintf("                    ");
				}
			
		if(segundo == 0)
			{
			lcd_gotoxy(15,3);
			lprintf("Julio");
			}
		if(segundo == 1)
			{
			lcd_gotoxy(9,3);
			lprintf("Julio Cesar");
			}
		if(segundo == 2)
			{
			lcd_gotoxy(0,3);
			lprintf("Julio Cesar Kochhann");
			}
		if(segundo == 4)
			{
			lcd_gotoxy(0,3);
			lprintf("                    ");
			}
			
		if(controle == 0)
			{
			lcd_gotoxy(7,2);
			lprintf("Desativado  ");
			
			portb = 0;
			}
			
		if(controle == 1)
			{
			lcd_gotoxy(0,1);
			lprintf("Cor :");
			
			lcd_gotoxy(7,2);
			lprintf("Color        ");
			}
			
		if(controle == 2)
			{
			lcd_gotoxy(0,1);
			lprintf("Efeito : ");
			
			lcd_gotoxy(7,2);
			lprintf("Effect       ");
			}
		
		if(controle == 3)
			{
			lcd_gotoxy(7,2);
			lprintf("Iluminacao   ");
			
			lcd_gotoxy(0,1);
			lprintf("Lampada : ");
			
			if(lamp == 1)
			{
			lcd_gotoxy(10,1);
			lprintf("Ligada    ");
			}else
			{
			lcd_gotoxy(10,1);
			lprintf("Desligada ");
			}
		}
	}
			if(estado == 0)	
			lcd_clear();
}