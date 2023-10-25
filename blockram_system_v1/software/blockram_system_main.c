#include "system.h"
#include "sys/alt_stdio.h"
#include "altera_avalon_pio_regs.h"
#include "io.h"
#include "alt_types.h"

#define OCRAM_OFFSET 0x0000

int main ()
{

	alt_u16 readdata = 0;
	alt_u16 switches_state = 0;

	while( 1 )
	{
		// read switches state
		switches_state = IORD_ALTERA_AVALON_PIO_DATA( SWITCHES_BASE );
		// write OCRAM
		IOWR( OCRAM_BASE, OCRAM_OFFSET, switches_state );
    // read OCRAM (read previously written value)
		readdata = IORD( OCRAM_BASE, OCRAM_OFFSET );
		// set LEDs state
		IOWR_ALTERA_AVALON_PIO_DATA( LEDS_BASE, readdata );
	}

	return 0;

}
