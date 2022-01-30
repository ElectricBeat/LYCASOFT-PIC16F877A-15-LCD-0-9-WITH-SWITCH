#include<pic.h>
#include<htc.h>
#define _XTAL_FREQ 20e6
__CONFIG(0X3F3A);

#define RS RD2
#define EN RD3

#define ON 1
#define OFF 0

#define SW RD1

void Lcd_Command(char cmd)
{
	PORTD = (cmd & 0XF0);
	RS = OFF;
	EN = ON;
	__delay_ms(5);
	EN = OFF;

	PORTD = ((cmd<<4) & 0xF0);
	RS = OFF;
	EN = ON;
	__delay_ms(5);
	EN = OFF;
}

void Lcd_Data(char Data)
{
	PORTD = (Data & 0XF0);
	RS = ON;
	EN = ON;
	__delay_ms(5);
	EN = OFF;

	PORTD = ((Data<<4) & 0xF0);
	RS = ON;
	EN = ON;
	__delay_ms(5);
	EN = OFF;
}

void Lcd_String(const unsigned char *Str)
{
	while(*Str != 0)
	{
		Lcd_Data(*Str++);
	}	
}

void Lcd_Intialization()
{
	Lcd_Command(0x02);
	Lcd_Command(0x28);
	Lcd_Command(0x0c);
}

void main()
{
	TRISD=0X02;
	PORTD=0X00;
	TRISC=0X00;
	PORTC=0X00;

	int Count;
	
	Lcd_Intialization();
	
	Lcd_Command(0x80);
	Lcd_String("LYCA SOFT");
	
	while(1)
	{
		while(SW==1)
		{
			Lcd_Command(0xc0);
			Lcd_Data(Count+48);
			Count++;	
			if(Count>=10)
			{
				Count=0;
			}
			while(SW==1);		
		}
	}
}