## Raspberry Pi 4 Model B
* The Raspberry Pi 4 Model B was chosen due to its light weight and relatively high computation ability.
* A Raspberry Pi for this project is required due to the integration of computer vision and autonomous drone control.

## Considerations
* Since it is operating on a drone it must be a [battery-powered-pi](https://www.circuitbasics.com/how-to-power-your-raspberry-pi-with-a-lithium-battery/).
* This requires an [adafruit-converter](https://www.adafruit.com/product/2465#technical-details)
* [adafruit-converter-downloads](https://learn.adafruit.com/adafruit-powerboost-1000c-load-share-usb-charge-boost/downloads)
* The Pi 4 B can last 1.3 hours with a 1000 mAH battery. Should there be a 3.7V lipo battery on board?
* Alternatively, the Speedybee ESC has 9 groups of 5V output. with max 2A load accross all. Pi 4 B draws 1.28 A max so this is sufficient.
* I think the [adafruit-converter](https://www.adafruit.com/product/2465#technical-details) is not worth it then since we can debug with the default power cable.