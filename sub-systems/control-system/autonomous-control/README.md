# DepthAI to ArduCopter
* start with enabling SSH and VNC
* [manual-DepthAI-installation](https://docs.luxonis.com/en/latest/pages/tutorials/first_steps/#first-steps-with-depthai)
* [ardupilot-depthai-scripts](https://github.com/rishabsingh3003/ardupilot_depthai_scripts?tab=readme-ov-file#depthai-scripts-for-ardupilot)
  * `main.py` runs on the RPi and uses the DepthAI library
  * `main_app.cpp` runs on an ESP32 device. It sends Mavlink messages to control a drone based on the tracked object's position.

# ArduCopter
* [supported-hardware](https://ardupilot.org/copter/docs/common-autopilots.html)
* [first-time-guide](https://ardupilot.org/copter/)
* [connect-escs-and-motors](https://ardupilot.org/copter/docs/connect-escs-and-motors.html)
* [mandatory-hardware-config](https://ardupilot.org/copter/docs/configuring-hardware.html)
* [esc-calibration](https://ardupilot.org/copter/docs/esc-calibration.html#esc-calibration)
  * Via GCS or direct connect to ESC
* [flight-modes](https://ardupilot.org/copter/docs/flight-modes.html#flight-modes)
* [safety-practices](https://ardupilot.org/copter/docs/safety-multicopter.html#safety-multicopter)

## EKF
- [ardupilot-no-gps](https://discuss.ardupilot.org/t/arducopter-dronekit-arming-without-gps/113093/3)
- [understanding-altitude-ekf](https://ardupilot.org/copter/docs/common-understanding-altitude.html)

The EKF is responsible for generating attitude, velocity, position, and altitude estimates for the vehicle. EKF takes the IMU, GPS, and BARO sensor inputs with the vertical distance sensor.

## ESC to ArduCopter forum discussions
* [BLHeliSuite-8bit](https://github.com/bitdump/BLHeli/releases) (only on Windows 🥀) or BLHeli Configurator can be used to configure the ESC.
* [No-GPS-flight](https://ardupilot.org/copter/docs/common-non-gps-navigation-landing-page.html)
* Rishabh Singh - [oak-on-drones](https://docs.luxonis.com/en/latest/pages/oak_on_drones/)
  * [part-1](https://discuss.ardupilot.org/t/easy-way-to-integrate-ai-with-ardupilot-oak-d-part-1/79306)
  * [part-2](https://discuss.ardupilot.org/t/easy-way-to-integrate-ai-with-ardupilot-oak-d-part-2/79307)

# Raspberry Pi 4 Model B
* The Raspberry Pi 4 Model B is required due to the integration of computer vision and autonomous drone control.
* I can view the video via RDP over SSH wirelessly while the drone is flying.

* The following sections are modules which can be installed on the Pi for drone functionality:
  * [MAVLink](#mavlink)
  * [Oak-D Lite](#oak-d-lite)

## MAVLink
* MAVLink is the communication protocol used by many GCS software.
* [MAVLink-docs](https://mavlink.io/en/)
* [MAVSDK](https://mavsdk.mavlink.io/main/en/index.html)
* Ardupilot uses mavlink to communicate and there are things like "mavproxy" which does all the routing to external devices, and "pymavlink" for programmatically talking to the flight controller.
* [ardupilot-raspberry-pi-via-mavlink](https://ardupilot.org/dev/docs/raspberry-pi-via-mavlink.html)

## Oak-D Lite
* [python-oak-d-lite](https://core-electronics.com.au/guides/oak-d-lite-raspberry-pi/)
* [first-time-oak-d-setup](https://www.youtube.com/watch?v=e_uPEE_zlDo)
