// Modified ‘hello_world_small’ demonstrator using the JTAG UART and PIO interface
// written by C. Jakob, fbeit, h_da, December 2024, christian.jakob@h-da.de
// rewritten by V.S. Agilan, fbeit, h_da, November 2025, agilan.vellaloresaminathadurairaj@stud.h-da.de

#include "system.h"
#include "sys/alt_stdio.h"

typedef unsigned int alt_u32;

#define __I  volatile const     // read-only permission
#define __IO volatile           // read/write permission
#define __O  volatile           // write-only permission ;-) doesn't work in C...

typedef struct {
    __IO alt_u32 DATA_REG;
    __IO alt_u32 DIRECTION_REG;
    __IO alt_u32 INTERRUPTMASK_REG;
    __IO alt_u32 EDGECAPTURE_REG;
     __O alt_u32 OUTSET_REG;
     __O alt_u32 OUTCLEAR_REG;
} PIO_TYPE;

// Replace XXXXX with the address provided for SYS_PIO_OUT_BASE in the system.h header file.
#define LEDS (*((PIO_TYPE *) 0x80011030 ))

volatile unsigned long delay = 0;

int main(void)
{
    LEDS.DATA_REG = 0x00;
    alt_putstr("PSOC platform alive!");
    while(1){
        LEDS.DATA_REG ^= 0xFF;
        for (delay = 0; delay < 100000; delay++) {};
    }
    return 0;
}
