[understanding-altitude-ekf](https://ardupilot.org/copter/docs/common-understanding-altitude.html)

The EKF subsystem is responsible for generating attitude, velocity, position, and altitude estimates for the vehicle so that the navigation and control systems can properly operate. EKF takes the IMU, GPS, and BARO sensor inputs and integrates them to provide these estimates, one of which is the Estimated ALT.

Do I need a distance sensor feed to the ArduPilot for this?