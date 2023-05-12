/*
 * project_parameters.h
 *
 *  Created on: 16 нояб. 2020 г.
 *      Author: stud
 */

#ifndef SRC_PROJECT_PARAMETERS_H_
#define SRC_PROJECT_PARAMETERS_H_


/************************** Constant Definitions **************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
//#ifdef XPAR_INTC_0_DEVICE_ID
//#define INTC		XIntc
//#define UART_DEVICE_ID		XPAR_XUARTPS_0_DEVICE_ID
//#define INTC_DEVICE_ID		XPAR_INTC_0_DEVICE_ID
//#define UART_INT_IRQ_ID		XPAR_INTC_0_UARTPS_0_VEC_ID
//#else
//#define INTC		XScuGic
//#define UART_DEVICE_ID		XPAR_XUARTPS_0_DEVICE_ID
//#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
//#define UART_INT_IRQ_ID		XPAR_XUARTPS_1_INTR
//#endif

#define SYSTEM_DESIGN 0 				// 0 - E100, 1- E200
#define PROJECT_NUMBER 0 				// 0 - test system

XGpio Gpio_0;							// Модуль выхода
XGpio Gpio_1;							// Модуль входа


int initialization_of_project(int x, int y);



#endif /* SRC_PROJECT_PARAMETERS_H_ */
