## FC and ESC Stack
* A [flight-controller](https://oscarliang.com/flight-controller-explained/#Flight-Controller-What-it-is-and-How-it-Works) is a circuit board equipped with sensors that detect the drone’s movements and user commands. With this information, the FC adjusts the speed of the motors to move the drone in the desired direction.
* After reading [best-fc-esc-stack](https://oscarliang.com/top-5-best-fc-mini-quad/), the chosen FC and ESC stack was:
* [Speedybee F405 V3 FC + 50A BLHeli_S 4in1 ESC](https://www.amazon.com/SpeedyBee-Flight-Controller-Stack-Configuration/dp/B0BFQ3X892/ref=sr_1_4?camp=1789&creative=9325&keywords=speedybee+f405+v3&linkCode=ur2&linkId=bc576ce7bb8496867e3d21903b7925c5&qid=1693113981&sr=8-4)
* Reason: Cheapest and 4K looptime is sufficient
* The Racerstar brushless motors recommend a 45A ESC and the Speedybee F405 V3 FC + 50A BLHeli_S 4in1 ESC is 50A continuous per motor.
* IMPORTANT: In order to prevent the stack from being burnt out by voltage spikes on powering up, it is strongly recommended to use the Low ESR capacitor in the package.

## Python Program
* [python-oak-d-lite](https://core-electronics.com.au/guides/oak-d-lite-raspberry-pi/)
* 