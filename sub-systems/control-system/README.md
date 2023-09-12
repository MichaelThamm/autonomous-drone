# Standard Control
## FC and ESC
* A [flight-controller](https://oscarliang.com/flight-controller-explained/#Flight-Controller-What-it-is-and-How-it-Works) is a circuit board equipped with sensors that detect the drone’s movements and user commands. With this information, the FC signals the [ESC](https://oscarliang.com/esc/) to move the drone in the desired direction.
* [cuav-v5-nano-fc](https://ardupilot.org/copter/docs/common-cuav-v5nano-overview.html) & [cuav-v5-nano-fc-pdf](http://manual.cuav.net/V5-nano.pdf) & [ardupilot-cuav-github](https://github.com/ArduPilot/Schematics/tree/master/CUAV)
* [speedybee-f7-v3-bl32-50a-4-in-1-esc](https://www.speedybee.com/speedybee-f7-v3-bl32-50a-4-in-1-esc/#Manual)
* The Racerstar brushless motors recommend a 45A ESC and the Speedybee 50A BLHeli_S 4in1 ESC is 50A continuous per motor.

## ArduPilot
* [my-reddit-post](https://www.reddit.com/r/diydrones/comments/16gkw2b/autonomous_raspberry_pi_to_fcesc_stack_control/?utm_source=share&utm_medium=web2x&context=3)
* [pi-to-fc](https://www.reddit.com/r/diydrones/comments/uwreq1/fpv_drone_using_raspberry_pi/?rdt=37023)
* [ardupilot-supported-hardware](https://ardupilot.org/copter/docs/common-autopilots.html)

## Peripheral Explanation
* Receiver: This is your radio receiver, which communicates with your RC transmitter.
* PPM Receiver: PPM (Pulse Position Modulation) is a communication protocol used by some RC receivers. It's an alternative to traditional PWM (Pulse Width Modulation) for transmitting multiple channel signals over a single wire. If you have a PPM receiver, it connects to the PPM input on the FC.
* DJI Air Unit: Digital video transmission system for FPV (First-Person View) drones.
* Analog VTX (Video Transmitter): This is an analog video transmitter for transmitting the video feed from your FPV camera.
* Buzzer: low battery warnings, arming/disarming notifications.
* [speedybee-receiver-troubleshooting](https://speedybee.zendesk.com/hc/en-us/articles/13971551993243-How-to-set-up-your-receiver-in-Betaflight-configurator-on-SpeedyBee-F7-V3-flight-controller-)

## Transmitter & Receiver
* The FC supports an SBUS Receiver. SBUS allows you to transmit multiple channels of control data over a single wire.
* Configure the FC to receive SBUS signals and map the channels correctly for throttle, pitch, roll, yaw, and any auxiliary functions.
* Make sure to choose an ELRS 2.4GHz SBUS receiver compatible with your transmitter and follow the binding and configuration instructions provided with the receiver to establish a secure connection between your transmitter and receiver.
### Radio Transmitter (Remote Control)
* [radio-tx-rx](https://oscarliang.com/radio-transmitter/)
#### Top Pick
* [BetaFPV-LiteRadio-3](https://betafpv.com/products/literadio-3-radio-transmitter)
* [Manual](https://manuals.plus/betafpv/literadio-3-radio-transmitter-manual#axzz8CFUM5o3S)
### Radio Receiver
* [BetaFPV-ELRS-lite-receiver](https://www.drone-fpv-racer.com/en/elrs-lite-receiver-by-betafpv-9218.html#/10019-antenna-tower_antenna)

# Autonomous Control
## Raspberry Pi 4 B
* Since it is operating on a drone it must be a [battery-powered-pi](https://www.circuitbasics.com/how-to-power-your-raspberry-pi-with-a-lithium-battery/).
* Use a usb-c cable splitter for data and power. Then connect battery to splitter for power and data for outgoing to transmitter.

## Python Program
* [python-oak-d-lite](https://core-electronics.com.au/guides/oak-d-lite-raspberry-pi/)
* [first-time-oak-d-setup](https://www.youtube.com/watch?v=e_uPEE_zlDo)
* I need to hook into the radio signal with the raspberry-pi's python program