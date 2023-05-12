/*
 * test_functions.h
 *
 *  Created on: 16 но€б. 2020 г.
 *      Author: stud
 */

#ifndef SRC_TEST_FUNCTIONS_H_
#define SRC_TEST_FUNCTIONS_H_

#define LED 				0x01
#define LED_DELAY     		10000000
#define LED_CHANNEL 		1


int initial_action(int action);
void read_in(u32 * DataRead);
void write_out(u32 DataWrite);
int exit_programm();
void update_from_terminal(u8 * ReciveBuffer);
void control_from_MPU();

#endif /* SRC_TEST_FUNCTIONS_H_ */
