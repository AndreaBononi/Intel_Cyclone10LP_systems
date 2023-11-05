#include "system.h"
#include "sys/alt_stdio.h"
#include "altera_avalon_pio_regs.h"
#include "io.h"
#include "alt_types.h"

#define DATA_OCRAM_OFFSET 0x0000

int main()
{
	alt_u32 readdata;

	while( 1 )
	{
		// read switches state
		readdata = IORD_ALTERA_AVALON_PIO_DATA( SWITCHES_BASE );
		// store switches state in data memory
		IOWR( DATA_OCRAM_BASE, DATA_OCRAM_OFFSET, readdata );
		// read switches state from memory
		readdata = IORD( DATA_OCRAM_BASE, DATA_OCRAM_OFFSET );
		// set LEDs state
		IOWR_ALTERA_AVALON_PIO_DATA( LEDS_BASE, readdata );
	}

	return 0;
}
