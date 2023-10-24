#include "system.h"
#include "sys/alt_stdio.h"
#include "altera_avalon_pio_regs.h"
#include "io.h"
#include "alt_types.h"

#define OCRAM_OFFSET 0x0000
#define OCRAM_WRITEDATA 0xFFFF

int main ()
{

	alt_u16 readdata = 0;

	while( 1 )
	{
		// read switches state and consequently set LEDs state
		IOWR_ALTERA_AVALON_PIO_DATA( LEDS_BASE, IORD_ALTERA_AVALON_PIO_DATA( SWITCHES_BASE ) );
    // write OCRAM
		IOWR( OCRAM_BASE, OCRAM_OFFSET, OCRAM_WRITEDATA );
    // read OCRAM (read previously written value)
		readdata = IORD( OCRAM_BASE, OCRAM_OFFSET );
		// TODO: PILOTARE LED SFRUTTANDO IL VALORE LETO
	}

	return 0;

}
