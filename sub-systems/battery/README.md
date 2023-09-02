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
### Connect a spliced USB-C cable
* Use a usb-c cable splitter for data and power. Then connect battery to splitter for power and data for outgoing to transmitter.
* Leave all ends disconnected except for the VBUS (power) and GND pins

# Batteries
* The discharge rate (C) is important to know the max current before overheating and voltage drop.
* lipo battery voltage ranges from 3.2-4.2v
* 4s range: 12.8-16.8v
* 5s range: 16-21v
* 6s range: 19.2-25.2v
## Drone battery
### Requirements
* 200 A discharge capability + The 5-10A for the Oak-D Lite and Pi
* 4s - 6s voltage supply
* 4Ah - 10Ah capacity
* < 500 grams
### Sourcing
* [6s-lipo-3000mah](https://rc-innovations.es/shop/lipo-6s-22-2v-3000mah-60c-b-60c-3000-6s1p-gens-ace?category=356&attrib=&attrib=22-188&attrib=#attr=2817,1936,2891)
* [shop-for-battery](https://rc-innovations.es/shop/category/LiPo-batteries-6s-22-2V-high-quality?category=356&search=&attrib=&attrib=)
* [6Ah-45C](https://rc-innovations.es/gens-ace-6s-22-2v-6000mah-45c-ec5-connector-lipo-battery?category=356&attrib=&attrib=22-112&attrib=) 
* [8Ah-12C](https://hobbyking.com/de_de/turnigy-high-capacity-battery-8000mah-6s-12c-drone-lipo-pack-xt90.html?___store=de_de)
* [9Ah-25C](https://rc-innovations.es/lipo-gens-ace-tattu-6s-9000mah-25c-22-2v?category=356&attrib=&attrib=22-85&attrib=)
* [6s-6Ah-10C](https://de.aliexpress.com/item/1005005574098144.html)
### Regulators & Cables
* [usbc-flying-leads](https://www.reichelt.at/at/de/usb-c-stecker-auf-freie-enden-sw-20-cm-usb-c-awg22-20-p292505.html)
* [buck-converter-8A](https://www.deliversafev.com/voltage-regulator-buck-converter-8a100w-dc4540v-step-down-volt-convert-module-p-127431.htm)
* IMPORTANT: Buy the right connector for the battery: XT60=60 amp & XT90=90 amp & EC5=120 amp
* [batter-power-1m-2f-y-splitter](https://de.aliexpress.com/i/32845175528.html?gatewayAdapt=glo2deu)
* Require conversion of plug to flying leads: [ali-express-cable-style-regulator](https://de.aliexpress.com/item/1005004462440542.html?gatewayAdapt=glo2deu)
* [usbc-flying-leads](https://www.reichelt.at/at/de/usb-c-stecker-auf-freie-enden-sw-20-cm-usb-c-awg22-20-p292505.html)