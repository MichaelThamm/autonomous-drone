# Autonomous Control
* [README.md](https://github.com/MichaelThamm/autonomous-drone/blob/main/sub-systems/control-system/autonomous-control/README.md)

# Standard Control
## FC and ESC
* A [flight-controller](https://oscarliang.com/flight-controller-explained/#Flight-Controller-What-it-is-and-How-it-Works) is a circuit board equipped with sensors that detect the drone’s movements and user commands. With this information, the FC signals the [ESC](https://oscarliang.com/esc/) to move the drone in the desired direction.
* [cuav-v5-nano-fc](https://ardupilot.org/copter/docs/common-cuav-v5nano-overview.html) & [cuav-v5-nano-fc-pdf](http://manual.cuav.net/V5-nano.pdf) & [ardupilot-cuav-github](https://github.com/ArduPilot/Schematics/tree/master/CUAV)
* [speedybee-f7-v3-bl32-50a-4-in-1-esc](https://www.speedybee.com/speedybee-f7-v3-bl32-50a-4-in-1-esc/#Manual)
* The Racerstar brushless motors recommend a 45A ESC and the Speedybee 50A BLHeli_S 4in1 ESC is 50A continuous per motor.

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