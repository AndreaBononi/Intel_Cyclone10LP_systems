#include "system.h"
#include "sys/alt_stdio.h"
#include "altera_avalon_pio_regs.h"
#include "alt_types.h"

int main()
{
	alt_u32 readdata;

	while( 1 )
	{
		// read switches state
		readdata = IORD_ALTERA_AVALON_PIO_DATA( SWITCHES_BASE );
		// set LEDs state
		IOWR_ALTERA_AVALON_PIO_DATA( LEDS_BASE, readdata );
	}

	return 0;
}
