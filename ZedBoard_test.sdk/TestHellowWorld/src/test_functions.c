/*
 * test_functions.c
 *
 *  Created on: 16 но€б. 2020 г.
 *      Author: stud
 */
#include "xgpio.h"
#include "test_functions.h"
#include "project_parameters.h"
#include "module_uart.h"

int initial_action(int action) {
	volatile int Delay;
	int x = 0;
	while (x < action) {
				/* Set the LED to High */
				XGpio_DiscreteWrite(&Gpio_0, LED_CHANNEL, LED << x);

				/* Wait a small amount of time so the LED is visible */
				for (Delay = 0; Delay < LED_DELAY; Delay++);

				/* Clear the LED bit */
				XGpio_DiscreteClear(&Gpio_0, LED_CHANNEL, LED << x);

				/* Wait a small amount of time so the LED is visible */
				for (Delay = 0; Delay < LED_DELAY; Delay++);

				x++;
			}

}

void read_in(u32 * DataRead){
	u32 Data = XGpio_DiscreteRead(&Gpio_0, 2);
	* DataRead = Data;
}

void write_out(u32 DataWrite){
	XGpio_DiscreteWrite(&Gpio_0, LED_CHANNEL, DataWrite);
}

void update_from_terminal(u8 * ReciveBuffer){
	XGpio_DiscreteWrite(&Gpio_0, LED_CHANNEL, ReciveBuffer[26]);
}


int count;
int value;
void control_from_MPU(){
	if (XGpio_DiscreteRead(&Gpio_1, 1) == 2) {
		count++;
		if (count > 100000) {
			count = 0;
			value++;
		}
	} else if (XGpio_DiscreteRead(&Gpio_1, 1) == 16) {
		count++;
		if (count > 100000) {
			count = 0;
			value--;
		}
	}
	else count = 0;
	bild_send_buffer(114, value);


}



int exit_programm() {
	if (XGpio_DiscreteRead(&Gpio_1, 1) != 1) return 1; else return 0;

}
