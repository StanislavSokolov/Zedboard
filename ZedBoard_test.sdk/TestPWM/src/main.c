//----------------------------------------------------------------------------
//      _____
//     *     *
//    *____   *____
//   * *===*   *==*
//  *___*===*___**  AVNET
//       *======*
//        *====*
//----------------------------------------------------------------------------
//
// This design is the property of Avnet.  Publication of this
// design is not authorized without written consent from Avnet.
//
// Please direct any questions to:  technical.support@avnet.com
//
// Disclaimer:
//    Avnet, Inc. makes no warranty for the use of this code or design.
//    This code is provided  "As Is". Avnet, Inc assumes no responsibility for
//    any errors, which may appear in this code, nor does it make a commitment
//    to update the information contained herein. Avnet, Inc specifically
//    disclaims any implied warranties of fitness for a particular purpose.
//                     Copyright(c) 2013 Avnet, Inc.
//                             All rights reserved.
//
//----------------------------------------------------------------------------
//
// Create Date:         Oct 25, 2013
// Design Name:         LED Dimmer Application
// Module Name:         main.c
// Project Name:        Zynq Software SpeedWay
// Target Devices:      Zynq-7000
// Hardware Boards:     MicroZed/ZedBoard
//
// Tool versions:       Vivado/SDK 2013.3
//
// Description:         Zed LED Dimmer Example
//
// Dependencies:
//
// Revision:            Oct 25, 2013: 1.00 Initial version
//
//----------------------------------------------------------------------------

/***************************** Include Files *********************************/

#include "xparameters.h"
#include "xil_io.h"
#include "xstatus.h"

/************************** Constant Definitions *****************************/
/*
 * The following constant maps to the name of the hardware instances that
 * were created in the EDK XPS system.
 */
#define PWM_BASE_ADDRESS 0x43C00000

/************************** Variable Definitions *****************************/

/*
 * The following are declared globally so they are zeroed and so they are
 * easily accessible from a debugger
 */

/************************** Main Code Entry **********************************/
int main(void)
{
    int status = XST_SUCCESS;
    u32 value = 0;
    u32 period = 0;
    u32 brightness = 0;

    /* Initialize the LED Dimmer controller to a safe PWM value. */
    Xil_Out32(PWM_BASE_ADDRESS, 0);

    /* Now that the hardware has been initialized, continuously loop while
     * prompting the user for updates to the brightness level. */
    while (1) 
    {
        /* Prompt the user to select a brightness value ranging from 
         * 0 to 9. */
        print("Select a Brightness between 0 and 9\n\r");
        
        /* Read an input value from the console. */
        value = inbyte();
        
        /* Convert the input ASCII character to an integer value. */
        period = value - 0x30;
        
        /* Print the input value back to the console to provide some
         * feedback to the user. */
        xil_printf("Brightness Level %d selected\n\r", period);
        
        /* Since the LED width is 1e6 clk cycles, we need to normalize
         * the period to that clk.  Since we accept values 0-9, that will
         * scale period from 0-999,000.  0 turns off LEDs, 999,000 is full
         * brightness. */
        brightness = period * 110000;
        
        /* Write the duty_cycle width (Period) out to the PL PWM 
         * peripheral. */
        Xil_Out32(PWM_BASE_ADDRESS, brightness);
    }

    return status;
}