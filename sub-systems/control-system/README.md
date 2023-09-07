# Standard Control
## FC and ESC Stack
* A [flight-controller](https://oscarliang.com/flight-controller-explained/#Flight-Controller-What-it-is-and-How-it-Works) is a circuit board equipped with sensors that detect the drone’s movements and user commands. With this information, the FC signals the [ESC](https://oscarliang.com/esc/) to move the drone in the desired direction.
* [SpeedyBee F7 V3 BL32 50A 30x30 Stack](https://www.speedybee.com/speedybee-f7-v3-bl32-50a-30x30-stack/)
* The Racerstar brushless motors recommend a 45A ESC and the Speedybee F405 V3 FC + 50A BLHeli_S 4in1 ESC is 50A continuous per motor.

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

## ESC Pins
* To control the motors via the ESC pins (S1 to S4) using a Raspberry Pi or any other microcontroller, you'll need to send PWM (Pulse Width Modulation) signals. PWM signals are a common way to control ESCs because they encode information about the desired motor speed within the width of the pulse.
* The PWM signal consists of a repeating pulse, where the width (duration) of the pulse determines the motor speed. A wider pulse indicates a higher speed, while a narrower pulse indicates a lower speed.
* The pulse repetition rate (frequency) is typically around 50 Hz, but this can vary. A pulse width of 1.0 ms might correspond to the minimum speed, while a width of 2.0 ms might correspond to the maximum speed. The exact range can vary between ESCs, so you should check the documentation for your specific ESCs.
* To send PWM signals from a Raspberry Pi, you can use one of the GPIO pins. Here's a simplified example in Python using the RPi.GPIO library:

import RPi.GPIO as GPIO
import time

*Set the GPIO pin for ESC control*
esc_pin = 18  *Replace with the actual GPIO pin you're using*

*Initialize GPIO*
GPIO.setmode(GPIO.BCM)
GPIO.setup(esc_pin, GPIO.OUT)

*Create a PWM object with a frequency of 50 Hz*
pwm = GPIO.PWM(esc_pin, 50)

*Start the PWM signal (0% duty cycle initially)*
pwm.start(0)

try:
    while True:
        *Set the desired motor speed by changing the duty cycle (0-100)*
        speed = 50  *Replace with the desired speed (0-100)*
        pwm.ChangeDutyCycle(speed)
        time.sleep(1)  *Change speed every 1 second*

except KeyboardInterrupt:
    *Clean up and stop the PWM signal on program exit*
    pwm.stop()
    GPIO.cleanup()