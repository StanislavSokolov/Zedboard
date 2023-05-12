/******************************************************************************
*
* Copyright (C) 2010 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/
/****************************************************************************/
/**
*
* @file		xuartps_intr_example.c
*
* This file contains a design example using the XUartPs driver in interrupt
* mode. It sends data and expects to receive the same data through the device
* using the local loopback mode.
*
*
* @note
* The example contains an infinite loop such that if interrupts are not
* working it may hang.
*
* MODIFICATION HISTORY:
* <pre>
* Ver   Who    Date     Changes
* ----- ------ -------- ----------------------------------------------
* 1.00a  drg/jz 01/13/10 First Release
* 1.00a  sdm    05/25/11 Modified the example for supporting Peripheral tests
*		        in SDK
* 1.03a  sg     07/16/12 Updated the example for CR 666306. Modified
*			the device ID to use the first Device Id
*			and increased the receive timeout to 8
*			Removed the printf at the start of the main
*			Put the device normal mode at the end of the example
* 3.1	kvn		04/10/15 Added code to support Zynq Ultrascale+ MP.
* 3.1   mus     01/14/16 Added support for intc interrupt controller
*
* </pre>
****************************************************************************/

/***************************** Include Files *******************************/

#include "xparameters.h"
#include "xgpio.h"
#include "xplatform_info.h"
//#include "xuartps.h"
//#include "xil_exception.h"
#include "xil_printf.h"
#include "project_parameters.h"
#include "test_functions.h"
#include "module_uart.h"


	int Count;
	u32 DataBuf;
	u32 DataBufPrev;

	u32 CountErrWarnInfo = 48;
	u32 GroupsRegisters = 0;

	u32 DataErrWarnInfo = 0;

int main(void)
{

	initialization_of_project(0, 0); 				// A0 - SYSTEM_DESIGN, A1 - PROJECT_NUMBER
	initialization_of_UART(); 						// A0 - SYSTEM_DESIGN, A1 - PROJECT_NUMBER

	initial_action(7);								// the LEDs during the start
	while(exit_programm()){							// attempt to exit the program
	//while(1){
		read_in(&DataBuf);
		if (DataBufPrev != DataBuf) {
			write_out(DataBuf);
		}
		if (DataBufPrev != DataBuf) {
			bild_send_buffer(24, DataBuf);
			//bild_send_buffer(30, DataBuf);
		}
		DataBufPrev = DataBuf;
		control_from_MPU();
		bild_send_buffer(43, GroupsRegisters);


					if (Count < 1000000) {
						Count++;
					} else {
						Count = 0;
						inverting_the_signal_count_transmitter();
						bild_send_buffer(CountErrWarnInfo, 10);
						//DataErrWarnInfo++;
						terminal_uart_send();
						terminal_uart_recv();
					}

	}
	initial_action(5);								// check
}

//	initial_action(5);

//		u32 DataRead = 0;
//		u32 DataReadPrev = 0;
//		SendBuffer[0] = 4;
//		SendBuffer[1] = 1;

//		while (XGpio_DiscreteRead(&Gpio_1, 1) != 1) {
//			DataReadPrev = DataRead;
//			DataRead = TestINdigital(&Gpio_0);
////			XUartPs_Recv(&UartPs, RecvBuffer, TEST_BUFFER_SIZE);
////			XGpio_DiscreteWrite(&Gpio_0, LED_CHANNEL, RecvBuffer[1]);
////			XGpio_DiscreteWrite(&Gpio_0, LED_CHANNEL, DataRead);
//			XGpio_DiscreteWrite(&Gpio_0, LED_CHANNEL, RecvBuffer[30]);
//			if (DataReadPrev != DataRead) {
//				SendBuffer[24] = DataRead;
//				if (DataRead > 100) SendBuffer[30] = 6;
//				else SendBuffer[30] = 0;
//				SendBuffer[112] = DataRead;
//				SendBuffer[115] = DataRead;
//				SendBuffer[116] = DataRead;
//				SendBuffer[117] = DataRead;
////				XGpio_DiscreteWrite(&Gpio_0, LED_CHANNEL, DataRead);
//			}

