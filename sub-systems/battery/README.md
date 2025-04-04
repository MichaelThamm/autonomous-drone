# External needs
* Need a DC/DC converter to convert the battery voltage to 5V.
## Raspberry Pi
* The Raspberry Pi needs to be powered with 5V DC up to 1.28A
## Oak-D Lite
* To use a [battery-powered Oak-D Lite](https://discuss.luxonis.com/d/1767-powering-oak-d-lite), Luxonis recommends the [Y-adapter](https://docs.luxonis.com/projects/hardware/en/latest/pages/DM6010/#y-adapter)
* The power port wants 5V DC power up to 2.1A
* USB-C to the power port and the [data-to-Pi-see-section-6](https://github.com/luxonis/depthai-hardware/blob/master/DM9095_OAK-D-LITE_DepthAI_USB3C/Datasheet/OAK-D-Lite_Datasheet.pdf)
* If you don't have USB-C, use battery rated for at least 1A / 5W (preferably 2A / 10W)
* Always connect the 'power' first before connected the host to the 'data'

# Batteries
## Sourcing
* [shop-for-battery](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjy5PeRtqqBAxXJiP0HHS2fB-oQFnoECBEQAQ&url=https%3A%2F%2Fwww.canadahobbies.ca%2Fcategory%2Frc-cars%2Fbatteries-for-cars%2F&usg=AOvVaw05v5mvMgbiTdw41yo8yrtY&opi=89978449)
## Regulators & Cables
* [usbc-flying-leads](https://www.reichelt.at/at/de/usb-c-stecker-auf-freie-enden-sw-20-cm-usb-c-awg22-20-p292505.html)
* [best-converter-1](https://www.ti.com/product/LM25148) or [best-converter-2](https://www.ti.com/product/LM3150?keyMatch=PMP10650)
  * [5v-12A-wiring](https://www.mouser.at/new/texas-instruments/ti-lm25148-synchronous-buck-dc-dc-controller/?_gl=1*1vmu844*_ga*dW5kZWZpbmVk*_ga_15W4STQT4T*dW5kZWZpbmVk*_ga_1KQLCYKRX3*dW5kZWZpbmVk)
  * [buck-converter-8A](https://www.deliversafev.com/voltage-regulator-buck-converter-8a100w-dc4540v-step-down-volt-convert-module-p-127431.htm)
  * I could get x 2 of [6S-5v-3A-Converter](https://www.amazon.de/KINGDUO-Converter-Ausgang-15x8Mm-Racing/dp/B07GVCDJ72) since they are cheap and more consistent than a variable output knob.

## My 6S1P 70c/140c 4000mAh 22.2V battery
### Charging
- There are 2 types of charging: constant current (CC) and constant voltage (CV)
  - Either is fine
- Recommended 1C - 2C charge rate
  - Translates to 4A - 8A charging
- Plug in the cables to the battery last!

## Discharging
- Failsafe for 3V per cell = 18V

## Storage
- Minimum voltage > 3V
- Recommended 50% charge