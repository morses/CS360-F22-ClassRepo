#include <stdlib.h>
#include <stdio.h>

//#include "hardware.h"
//#include "stepper.h"
#include "laser.h"
//#include "light.h"
//#include "display7seg.h"
//#include "command.h"

// Excerpts from the real main in C

// Status of the machine
enum Status
{
    ENABLED,
    DISABLED,
	BUSY		// the machine is busy doing something in another thread, i.e. a scan
};

struct Scanner
{
    //struct StepperMotor *   mot1;
    //struct StepperMotor *   mot2;
    struct Laser *          laser;
    //struct Light *          light;
	//Camera * 				camera;
	//GPContext *				cameraContext;
    enum Status 			status;
};

// global access to the hardware, only one of these
struct Scanner scanner;

int main (int argc, char *argv[])
{
	printf("Hello WOU Scanner!\n");
    scanner.status = DISABLED;

    printf("...initializing motors");
    //...

    printf("...initializing limit switch");
    //...

    printf("...initializing laser");
    scanner.laser = laser_init(LASER_VMOD,LASER_POWER);
    laser_setPeriod(scanner.laser, 10);
	laser_setBrightness(scanner.laser, 0.25);
	laser_on(scanner.laser);
	laser_enable(scanner.laser);

    printf("...initializing light source");
    //...
	
    printf("...initializing camera");
    //...

    printf("...initializing 7 segment display");
    //...

    scanner.status = ENABLED;
	quit = FALSE;
	stop = FALSE;
	
    // set up for main UI loop...

    int ok = TRUE;
    while(ok)
    {
        // get commands from user and execute
    }

    printf("Shutting down and cleaning things up");
    if( scanner.status == ENABLED )
    {
        //stepper_close(scanner.mot1);
        //stepper_close(scanner.mot2);
        // limit switch
    	laser_off(scanner.laser);
    	laser_close(scanner.laser);
    	//light_close(scanner.light);
        //display7seg_close();
        scanner.status = DISABLED;
    }

	return EXIT_SUCCESS;
}
