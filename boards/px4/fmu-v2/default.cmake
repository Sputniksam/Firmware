
px4_add_board(
	PLATFORM nuttx
	VENDOR px4
	MODEL fmu-v2
	LABEL default
	ARCH cortex-m4
	ROMFS
	ROMFSROOT px4fmu_common
	BOOTLOADER ${PX4_SOURCE_DIR}/ROMFS/px4fmu_common/extras/px4fmuv3_bl.bin
	IO px4_io-v2_default
	#TESTING
	CONSTRAINED_FLASH
	#UAVCAN_INTERFACES 2

	SERIAL_PORTS
		GPS1:/dev/ttyS0
		TEL1:/dev/ttyS1
		TEL2:/dev/ttyS2
		TEL4:/dev/ttyS3

	DRIVERS
		#barometer # all available barometer drivers
		barometer/ms5611
		#batt_smbus
		#blinkm
		#camera_trigger
		#differential_pressure # all available differential pressure drivers
		differential_pressure/ms4525
		#distance_sensor # all available distance sensor drivers
		distance_sensor/ll40ls
		distance_sensor/sf0x
		gps
		#heater
		#imu # all available imu drivers
		#imu/adis16448
		imu/l3gd20
		imu/lsm303d
		imu/mpu6000
		imu/mpu9250
		#iridiumsbd
		#irlock
		#magnetometer # all available magnetometer drivers
		magnetometer/hmc5883
		#mkblctrl
		#oreoled
		#protocol_splitter
		#pca9685
		#pwm_input
		#pwm_out_sim
		px4flow
		px4fmu
		px4io
		rgbled
		stm32
		stm32/adc
		stm32/tone_alarm
		#tap_esc
		#telemetry # all available telemetry drivers
		#test_ppm
		vmount

	MODULES
		#attitude_estimator_q
		camera_feedback
		commander
		dataman
		ekf2
		events
		fw_att_control
		fw_pos_control_l1
		#gnd_att_control
		#gnd_pos_control
		#gpio_led
		land_detector
		#landing_target_estimator
		load_mon
		#local_position_estimator
		logger
		mavlink
		mc_att_control
		mc_pos_control
		navigator
		#position_estimator_inav
		sensors
		#uavcan
		vtol_att_control
		#wind_estimator

	SYSTEMCMDS
		bl_update
		#config
		#dumpfile
		#esc_calib
		hardfault_log
		#led_control
		mixer
		#motor_ramp
		#motor_test
		mtd
		#nshterm
		param
		perf
		pwm
		reboot
		#sd_bench
		#tests # tests and test runner
		top
		#topic_listener
		tune_control
		ver

	EXAMPLES
		#bottle_drop # OBC challenge
		#fixedwing_control # Tutorial code from https://px4.io/dev/example_fixedwing_control
		#hwtest # Hardware test
		#px4_mavlink_debug # Tutorial code from https://px4.io/dev/debug_values
		#px4_simple_app # Tutorial code from https://px4.io/dev/px4_simple_app
		#rover_steering_control # Rover example app
		#segway
	)