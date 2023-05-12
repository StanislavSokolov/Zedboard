################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/xemacps_example_util.c \
../src/xemacps_ieee1588.c \
../src/xemacps_ieee1588_example.c 

OBJS += \
./src/xemacps_example_util.o \
./src/xemacps_ieee1588.o \
./src/xemacps_ieee1588_example.o 

C_DEPS += \
./src/xemacps_example_util.d \
./src/xemacps_ieee1588.d \
./src/xemacps_ieee1588_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../TestHellowWorld_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


