#include "xparameters.h"
#include "xgpio.h"
#include "xplatform_info.h"

#define LED 0x01
#define LED_CHANNEL	1

int count = 0;
int latch = 0;

XGpio Gpio_0;

int main(void) {

	int Status;
	Status = XGpio_Initialize(&Gpio_0, XPAR_GPIO_0_DEVICE_ID);
	if (Status != XST_SUCCESS) return XST_FAILURE;
	XGpio_SetDataDirection(&Gpio_0, LED_CHANNEL, ~LED);

	while (1) {

		if (count < 10000000) {
			count++;
		} else {

			if (latch) {
//				XGpio_DiscreteWrite(&Gpio_0, LED_CHANNEL, LED);
				Xil_Out32(XPAR_IP_AXI_MANAGERSERIAL_0_S00_AXI_BASEADDR, 0x0000AA01);
				Xil_Out32(XPAR_IP_AXI_MANAGERPARALL_0_S00_AXI_BASEADDR, 0x00005512);
				latch = 0;

			} else {
//				XGpio_DiscreteWrite(&Gpio_0, LED_CHANNEL, ~LED);
				Xil_Out32(XPAR_IP_AXI_MANAGERSERIAL_0_S00_AXI_BASEADDR, 0x00000550);
				Xil_Out32(XPAR_IP_AXI_MANAGERPARALL_0_S00_AXI_BASEADDR, 0x0000A912);
				latch = 1;
			}
			count = 0;
		}
	}

//	while (1) {
//
//		if (count < 100000) {
//			count++;
//		} else {
//			if (Xil_In32(XPAR_IP_AXI_MANAGERSERIAL_0_S00_AXI_BASEADDR) == 0) {
//				XGpio_DiscreteWrite(&Gpio_0, LED_CHANNEL, LED);
//			} else {
//				XGpio_DiscreteWrite(&Gpio_0, LED_CHANNEL, ~LED);
//			}
//			if (latch) {
//				Xil_Out32(XPAR_IP_AXI_LEDS_0_S00_AXI_BASEADDR, 0x00000000);
//				Xil_Out32(XPAR_IP_AXI_MANAGERPARALL_0_S00_AXI_BASEADDR, 0x00005512);
//				latch = 0;
//
//			} else {
//				Xil_Out32(XPAR_IP_AXI_LEDS_0_S00_AXI_BASEADDR, 0x00000001);
//				Xil_Out32(XPAR_IP_AXI_MANAGERPARALL_0_S00_AXI_BASEADDR, 0x0000A912);
//				latch = 1;
//			}
//			count = 0;
//		}
//	}
}
