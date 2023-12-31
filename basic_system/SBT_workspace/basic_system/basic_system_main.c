#include "system.h"
#include "sys/alt_stdio.h"
#include "altera_avalon_pio_regs.h"

int main ()
{
	int flag;

	while( 1 )
	{
		// read switches state
		flag = IORD_ALTERA_AVALON_PIO_DATA( SWITCHES_BASE );
		// set LEDs state
		IOWR_ALTERA_AVALON_PIO_DATA( LEDS_BASE, flag & 0xff );
	}

	return 0;
}
