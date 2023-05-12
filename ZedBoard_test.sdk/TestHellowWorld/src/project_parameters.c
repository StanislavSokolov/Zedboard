/*
 * project_parameters.c
 *
 *  Created on: 16 но€б. 2020 г.
 *      Author: stud
 */


#include "xparameters.h"
#include "xgpio.h"
#include "xplatform_info.h"
#include "project_parameters.h"

int initialization_of_project(int x, int y) {

	int Status = 0;

	switch (x) {
	case 0:

		Status = XGpio_Initialize(&Gpio_0, XPAR_AXI_GPIO_0_DEVICE_ID);
		if (Status != XST_SUCCESS) {
			xil_printf("Gpio_0 Initialization Failed\r\n");
		    return XST_FAILURE;
		} xil_printf("Gpio_0 ok\r\n");

		Status = XGpio_Initialize(&Gpio_1, XPAR_AXI_GPIO_1_DEVICE_ID);
				if (Status != XST_SUCCESS) {
					xil_printf("Gpio_1 Initialization Failed\r\n");
				    return XST_FAILURE;
				} xil_printf("Gpio_1 ok\r\n");

//		Status = UartPsIntrExample(&InterruptController, &UartPs,
//						UART_DEVICE_ID, UART_INT_IRQ_ID);
//			if (Status != XST_SUCCESS) {
//				xil_printf("UART Interrupt Example Test Failed\r\n");
//				return XST_FAILURE;
//			}


	  break;
	case 1:

		Status = XGpio_Initialize(&Gpio_1, XPAR_AXI_GPIO_1_DEVICE_ID);
		if (Status != XST_SUCCESS) {
			xil_printf("Gpio_1 Initialization Failed\r\n");
		    return XST_FAILURE;
		} xil_printf("Gpio_1 ok\r\n");

	  break;
	case 2:
		  break;
	case 3:
		  break;
	default:
	  break;
	}

	switch (y) {
		case 0:
		  break;
		case 1:
		  break;
		case 2:
			  break;
		case 3:
			  break;
		default:
		  break;
		}

}
