# Direction Advice
* [my-reddit-post](https://www.reddit.com/r/diydrones/comments/16gkw2b/autonomous_raspberry_pi_to_fcesc_stack_control/?utm_source=share&utm_medium=web2x&context=3)
* [autonomous-projects](https://www.reddit.com/r/diydrones/comments/uwreq1/fpv_drone_using_raspberry_pi/)

# Raspberry Pi 4 Model B
* The Raspberry Pi 4 Model B is required due to the integration of computer vision and autonomous drone control.
* The ESC uses the DSHOT300/600 protocol. I need to use M1 to M4 on the CUAV nano since they are in the same group and then configure it to use DSHOT.
* To use BLHeli Passthrough with your CUAV Nano, Speedybee ESC, and Raspberry Pi configuration:
  * Connect the signal (PWM) wires from your Speedybee ESCs to one of the motor output pins on the CUAV Nano that supports BLHeli Passthrough (pins 9, 10, or 11). You can choose one of these pins based on your preference and available space on your drone frame.
  * Connect the ground (GND) wires from the ESCs to the ground (GND) on the CUAV Nano to establish a common ground reference.
  * Connect your Raspberry Pi to the CUAV Nano flight controller using UART (serial) communication. You will need to use one of the available UART ports on both the Raspberry Pi and the CUAV Nano.
  * On your Raspberry Pi, you'll need BLHeli Passthrough software to communicate with the ESCs. One popular software tool for this purpose is "BLHeliSuite" or "BLHeli Configurator," which you can install on your Raspberry Pi.

## Blue OS for Pi
* [BlueOS](https://github.com/bluerobotics/BlueOS)


## MAVLink
* MAVLink is the communication protocol used by many ground control station software, such as [Mission Planner](http://ardupilot.org/planner/docs/mission-planner-installation.html).
* [cuav-github](https://github.com/cuav)
* [quick-start-cuav-v5-nano](https://docs.px4.io/main/en/assembly/quick_start_cuav_v5_nano.html)
* [MAVLink-docs](https://mavlink.io/en/)
* [MAVSDK](https://mavsdk.mavlink.io/main/en/index.html)
* Ardupilot uses mavlink to communicate and there are things like "mavproxy" which does all the routing to external devices, and "pymavlink" for programmatically talking to the flight controller.
* [ardupilot-raspberry-pi-via-mavlink](https://ardupilot.org/dev/docs/raspberry-pi-via-mavlink.html)

## Considerations
* Since it is operating on a drone it must be a [battery-powered-pi](https://www.circuitbasics.com/how-to-power-your-raspberry-pi-with-a-lithium-battery/).
* I can view the video via [VNC over SSH wirelessly](https://www.youtube.com/watch?v=5QBFDO5xoZI) while the drown is flying.
* [Fix high latency using VNC in Pi](https://www.reddit.com/r/RASPBERRY_PI_PROJECTS/comments/sixrr4/why_is_my_raspberry_pi_4_sooooo_slow_when_using/).

# Ardupilot & Dronekit
* [ardupilot-supported-hardware](https://ardupilot.org/copter/docs/common-autopilots.html)
* [drone-kit-python](https://github.com/MichaelThamm/autonomous-drone/blob/main/sub-systems/control-system/autonomous-control/dronekit.py)
* [drone-kit-python-motor-control](https://github.com/MichaelThamm/autonomous-drone/blob/main/sub-systems/control-system/autonomous-control/overridemotor.py)

## Oak-D-Lite
* [python-oak-d-lite](https://core-electronics.com.au/guides/oak-d-lite-raspberry-pi/)
* [first-time-oak-d-setup](https://www.youtube.com/watch?v=e_uPEE_zlDo)