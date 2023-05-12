################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/CommunicatingWithThePeriphery.c \
../src/helloworld.c \
../src/platform.c \
../src/test_functions.c 

OBJS += \
./src/CommunicatingWithThePeriphery.o \
./src/helloworld.o \
./src/platform.o \
./src/test_functions.o 

C_DEPS += \
./src/CommunicatingWithThePeriphery.d \
./src/helloworld.d \
./src/platform.d \
./src/test_functions.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O2 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../TestHellowWorld_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


