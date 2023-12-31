# Project Direction Advice
* [pixhawk-pi-fully-assembly-youtube](https://youtu.be/kB9YyG2V-nA?t=660)
* [my-ardupilot-post->cuav-nano-to-4-in-1-esc](https://discuss.ardupilot.org/t/cuav-nano-to-4-in-1-esc/110884)
* [my-reddit-post](https://www.reddit.com/r/diydrones/comments/16gkw2b/autonomous_raspberry_pi_to_fcesc_stack_control/?utm_source=share&utm_medium=web2x&context=3)

# ArduCopter
* [supported-hardware](https://ardupilot.org/copter/docs/common-autopilots.html)
* [first-time-guide](https://ardupilot.org/copter/)
* [connect-escs-and-motors](https://ardupilot.org/copter/docs/connect-escs-and-motors.html)
* [mandatory-hardware-config](https://ardupilot.org/copter/docs/configuring-hardware.html)
* [esc-calibration](https://ardupilot.org/copter/docs/esc-calibration.html#esc-calibration)
  * This is likely done in MissionPlanner or via direct connect to ESC
* [flight-modes](https://ardupilot.org/copter/docs/flight-modes.html#flight-modes)
* [safety-practices](https://ardupilot.org/copter/docs/safety-multicopter.html#safety-multicopter)

## 4in1 ESC to ArduCopter forum discussions
* [CUAV-ESC-Calibration-MissionPlanner](https://discuss.ardupilot.org/t/cuav-v5-nano-calibration-issue/73486)
  * [CUAV-V5-Nano-BLHeli32-Passthrough-Not-Working](https://discuss.ardupilot.org/t/blheli32-pass-through-not-working-on-cuav-v5-nano-but-working-on-cuav-v5/89030)
* [BLHeli32-4-in-1-ESC-to-PixHawk](https://discuss.ardupilot.org/t/velox-4in1-esc-to-pixhawk-2-4-8/71547)

### CUAV V5 Nano
* __Connect CUAV to SpeedyBee BLS 50A With (TELEM, +, GND) to (TELEM2)__
* [quick-start-cuav-v5-nano](https://docs.px4.io/main/en/assembly/quick_start_cuav_v5_nano.html)
* I need to use [M1 to M4 on the CUAV nano](https://ardupilot.org/copter/docs/common-cuav-v5nano-overview.html#pwm-output) since they are in the same group and then configure it to use DSHOT.
* Raspberry Pi to the CUAV Nano via UART (TELEM2).
* To use BLHeli Passthrough with your CUAV Nano and Speedybee ESC:
  * Connect the signal (PWM) wires from your Speedybee ESCs to one of the motor output pins on the CUAV Nano that supports BLHeli Passthrough __(pins 9, 10, or 11)__.
  * __Connect the ground (GND) wires from the ESCs to the ground (GND) on the CUAV Nano to establish a common ground reference__.
  * [BLHeliSuite](https://oscarliang.com/connect-flash-blheli-32-esc/) or BLHeli Configurator can be used to configure the ESC.

# Raspberry Pi 4 Model B
* The Raspberry Pi 4 Model B is required due to the integration of computer vision and autonomous drone control.
* I can view the video via [VNC over SSH wirelessly](https://www.youtube.com/watch?v=5QBFDO5xoZI) while the drone is flying.

* The following sections are modules which can be installed on the Pi for drone functionality:
  * [Dronekit](#dronekit)
  * [MAVLink](#mavlink)
  * [Oak-D-Lite](#oak-d-lite)

## Dronekit
* [drone-kit-python](https://github.com/MichaelThamm/autonomous-drone/blob/main/sub-systems/control-system/autonomous-control/dronekit.py)
* [drone-kit-python-motor-control](https://github.com/MichaelThamm/autonomous-drone/blob/main/sub-systems/control-system/autonomous-control/overridemotor.py)

## MAVLink
* MAVLink is the communication protocol used by many ground control station software, such as [Mission Planner](http://ardupilot.org/planner/docs/mission-planner-installation.html).
* [MAVLink-docs](https://mavlink.io/en/)
* [MAVSDK](https://mavsdk.mavlink.io/main/en/index.html)
* Ardupilot uses mavlink to communicate and there are things like "mavproxy" which does all the routing to external devices, and "pymavlink" for programmatically talking to the flight controller.
* [ardupilot-raspberry-pi-via-mavlink](https://ardupilot.org/dev/docs/raspberry-pi-via-mavlink.html)

## Oak-D-Lite
* [python-oak-d-lite](https://core-electronics.com.au/guides/oak-d-lite-raspberry-pi/)
* [first-time-oak-d-setup](https://www.youtube.com/watch?v=e_uPEE_zlDo)