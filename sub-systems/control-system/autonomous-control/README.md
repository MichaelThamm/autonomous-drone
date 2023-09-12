# Direction Advice
* [my-reddit-post](https://www.reddit.com/r/diydrones/comments/16gkw2b/autonomous_raspberry_pi_to_fcesc_stack_control/?utm_source=share&utm_medium=web2x&context=3)
* [autonomous-projects](https://www.reddit.com/r/diydrones/comments/uwreq1/fpv_drone_using_raspberry_pi/)

# Raspberry Pi 4 Model B
* The Raspberry Pi 4 Model B is required due to the integration of computer vision and autonomous drone control.
* Use UART (serial) to connect the TX pin from the Raspberry Pi to the RX pin on the CUAV V5 Nano, and vice versa.
* The ESC uses the DSHOT300/600 protocol. I need to use M1 to M4 on the CUAV nano since they are in the same group and then configure it to use DSHOT.
* To use BLHeli Passthrough with your CUAV Nano, Speedybee ESC, and Raspberry Pi configuration:
  * Connect the signal (PWM) wires from your Speedybee ESCs to one of the motor output pins on the CUAV Nano that supports BLHeli Passthrough (pins 9, 10, or 11). You can choose one of these pins based on your preference and available space on your drone frame.
  * Connect the ground (GND) wires from the ESCs to the ground (GND) on the CUAV Nano to establish a common ground reference. Provide power to the ESCs from your drone's power distribution system. Ensure that the voltage supplied matches the requirements of your ESCs (e.g., 6S for a 6-cell LiPo battery).
  * Connect your Raspberry Pi to the CUAV Nano flight controller using UART (serial) communication. You will need to use one of the available UART ports on both the Raspberry Pi and the CUAV Nano. Ensure that the wiring for TX (transmit), RX (receive), and ground (GND) is correct.
  * On your Raspberry Pi, you'll need BLHeli Passthrough software to communicate with the ESCs. One popular software tool for this purpose is "BLHeliSuite" or "BLHeli Configurator," which you can install on your Raspberry Pi. These tools allow you to configure and tune the settings of your ESCs using BLHeli Passthrough.
  * Launch the BLHeli Passthrough software on your Raspberry Pi. Connect to your flight controller (CUAV Nano) via the UART connection. Once connected, you should be able to access and configure the settings of the ESCs connected to the BLHeli Passthrough-supported motor output pins (9, 10, or 11).
## Check Compatibility
* UART Mapping
  * SERIAL0 -> USB MAVLINK
    * MAVLink is a protocol commonly used in the drone industry to exchange telemetry data, commands, and other information between the flight controller and external components.
    * Telemetry Data Exchange: You can use the MAVLink interface to exchange telemetry data between the CUAV Nano flight controller and your Raspberry Pi. This data includes information about the drone's status, GPS coordinates, altitude, battery voltage, sensor data, and more. This real-time telemetry data is valuable for monitoring and controlling the drone from your Raspberry Pi.
    * Autonomous Flight: MAVLink allows you to send commands from your Raspberry Pi to the flight controller, enabling autonomous flight. You can program your Raspberry Pi to control the drone's mission, waypoints, and flight behavior based on sensor inputs or custom algorithms.
    * Ground Control Station (GCS): MAVLink is the communication protocol used by many ground control station software, such as Mission Planner or QGroundControl. You can use your Raspberry Pi as a ground control station to plan, monitor, and control your drone's missions. The GCS software communicates with the flight controller via MAVLink.
    * Payload Control: If your drone has specialized payloads, such as cameras or sensors, you can use MAVLink to control and receive data from these payloads through your Raspberry Pi.
    * To utilize the MAVLink pin effectively, you'll need to: Connect the MAVLink pin on the CUAV Nano to a UART (serial) port on your Raspberry Pi. 
    * Configure the UART port on your Raspberry Pi for serial communication with the appropriate baud rate.
    Implement MAVLink communication in your Raspberry Pi software using MAVLink libraries or SDKs.
    * Define and handle the specific MAVLink messages you need for your application, whether it's telemetry data, commands, or mission planning.

By integrating MAVLink communication between your CUAV Nano flight controller and Raspberry Pi, you can create a powerful platform for advanced drone operations, including autonomous flight, data collection, and real-time monitoring.

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