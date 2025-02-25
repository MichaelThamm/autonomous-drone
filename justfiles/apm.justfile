# Configure APM Planner
# https://github.com/ArduPilot/apm_planner

default:
  just --list

apm-planner:
    # https://github.com/ArduPilot/apm_planner/ for latest release candidates
    chmod +x APM-Planner_2-2.0.30-rc3-x86_64.AppImage
    ./APM-Planner_2-2.0.30-rc3-x86_64.AppImage
    # Connect to ttyACM0 @ 115200 in app UI
  
config-ardupilot:
  # LiDAR settings (https://ardupilot.org/copter/docs/common-hereflow.html)
  CAN_P1_DRIVER, 1
  CAN_D1_PROTOCOL, 1
  RNGFND_TYPE, 24
  FLOW_TYPE, 6
  RNGFND1_MAX_CM, 200
  RNGFND1_MIN_CM, 5
  BRD_BOOT_DELAY, 3000  # delay autopilot startup
  
  # Motors
  SERVO_BLH_RVMASK, ?  # reverse the motor spin direction
  SERVO_BLH_AUTO, 1  # BLHeli auto-enable
  SERVO_DSHOT_ESC, 1  # set to 3 for more data -> https://ardupilot.org/copter/docs/parameters.html#servo-dshot-esc 
  MOT_PWM_TYPE, 6  # set DSHOT600

  # Communications
  SERIAL4_BAUD, 115  # set up UART4 for the telem data
  SERIAL4_OPTIONS, 16
  SERIAL4_PROTOCOL, 16

  # Harmonic Notch filter
  INS_HNTCH_ENABLE, 1  # write then refresh params to see the rest
  INS_HNTCH_BW, 20
  INS_HNTCH_FM_RAT, 1
  INS_HNTCH_FREQ, 80
  INS_HNTCH_HMNCS, 3
  INS_HNTCH_MODE, 3
  INS_HNTCH_OPTS, 2
  INS_HNTCH_REF, 1
  INS_LOG_BAT_MASK, 1  # logging to check it's all working
  INS_LOG_BAT_OPT, 4

  # AHRS settings
  AHRS_GPS_USE, 0
  AHRS_EKF_TYPE, 3
  EK3_ENABLE, 1
  EK3_GPS_TYPE, 3  # no GPS (will use optical flow only if available)
  COMPASS_ENABLE, 0
  GPS_TYPE, 0
  
  # Battery
  BATT_MONITOR, 9  # use ESC battery data
  BATT_ARM_VOLT, 22.1
  BATT_LOW_VOLT, 21.6
  BATT_CRT_VOLT, 20
  BATT_FS_CRT_ACT, 1
  BATT_FS_LOW_ACT, 2

  # Dead reckoning failsafe (https://ardupilot.org/copter/docs/deadreckoning-failsafe.html)
  FS_DR_ENABLE,2  # return to launch (RTL)
  FS_DR_TIMEOUT,30  # time until switch to DR mode

  # Arming
  BRD_SAFETY_DEFLT, 0  # disable the safety switch
  ARMING_CHECK, 159615
  # bitmask below
  0100110111101111111
  - |0|all
  - |1|barometer
  - |0|compass
  - |0|GPS lock
  - |1|INS
  - |1|parameters
  - |0|RC channel
  - |1|board voltage
  - |1|battery level
  - |1|logging
  - |1|hardware safety switch
  - |0|GPS config
  - |1|system
  - |1|mission
  - |1|rangefinder
  - |1|camera
  - |1|aux auth
  - |1|visual odemetry
  - |1|FFT

config-rpi:
  MORE_SETTINGS, 

config-speedybee:
  MORE_SETTINGS, 

apm-ui-action-drone-hold:
  open ./apmplanner2
  Actions>SetMode>FlowHold  # This could be crazy to investigate holding height

apm-ui-status:
  # LiDAR statuses
  current_distance -> LiDAR distance from camera
  ground_distance -> ??? Are they the same? Do I need to overwrite from current_distance?
  flow ->
  flow_comp ->
  flow_rate ->
  min_distance ->  RNGFND1_MIN_CM, 5
  max_distance ->  RNGFND1_MAX_CM, 200