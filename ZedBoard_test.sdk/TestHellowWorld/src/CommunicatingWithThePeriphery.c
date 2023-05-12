/*
 * CommunicatingWithThePeriphery.c
 *
 *  Created on: 21 ���. 2020 �.
 *      Author: stud
 */


#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"


u32 TestINdigital(XGpio * Gpio){
	u32 DataRead = XGpio_DiscreteRead(Gpio, 2);
//	xil_printf("DataRaedINdigital = 0x%0x\r\n", DataRead);
	return DataRead;
}

//u32 TestINanalog(u32 Channel) {
//	u32 j = 4;
//	u32 DataRead = Xil_In32(XPAR_IP_AXI_ADC_0_S00_AXI_BASEADDR + (Channel*j));
//	xil_printf("DataRaed Channel ");
//	xil_printf("%0x", Channel);
//	xil_printf(" = 0x%0x\r\n", DataRead);
//	return DataRead;
//}
//
//u32 INdigital(XGpio * Gpio){
//	u32 DataRead = XGpio_DiscreteRead(Gpio, 1);
//	xil_printf("DataRaedINdigital = 0x%0x\r\n", DataRead);
//	return DataRead;
//}
//
//u32 AXI_BUS_READ(u32 BASEADDR, u32 Channel) {
//	u32 j = 4;
//	u32 DataRead = Xil_In32(BASEADDR + (Channel*j));
//	xil_printf("DataRaed Channel ");
//	xil_printf("%0x", Channel);
//	xil_printf(" = 0x%0x\r\n", DataRead);
//	return DataRead;
//}
//
//void AXI_BUS_WRITE(u32 BASEADDR, u32 Channel, u32 Data) {
//	u32 j = 4;
//	Xil_Out32((BASEADDR + (Channel*j)), Data);
//}
