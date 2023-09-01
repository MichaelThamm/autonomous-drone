# Raspberry Pi
* The Raspberry Pi needs to be powered with 5V DC, so we need to have a DC/DC converter to convert the battery voltage to 5V.
* If you’re powering the Raspberry Pi with a rechargeable battery, you need to have a battery charge controller.
* Charge controllers regulate the incoming current and voltage to your batteries.
* They are used to prevent overcharging, allow you to charge your lithium batteries safely, prolonging your battery’s lifespan.

# Batteries
* The discharge rate (C) is important to know the max current before overheating and voltage drop.
* lipo battery voltage ranges from 3.2-4.2v
* 4s range: 12.8-16.8v
* 5s range: 16-21v
* 6s range: 19.2-25.2v
## Drone battery
### Requirements
* 200 A discharge capability
* 4s - 6s voltage supply
* 4Ah - 10Ah capacity
* < 500 grams
### Sourcing
* [6s-lipo-3000mah](https://rc-innovations.es/shop/lipo-6s-22-2v-3000mah-60c-b-60c-3000-6s1p-gens-ace?category=356&attrib=&attrib=22-188&attrib=#attr=2817,1936,2891)
* [shop-for-battery](https://rc-innovations.es/shop/category/LiPo-batteries-6s-22-2V-high-quality?category=356&search=&attrib=&attrib=)
* [6Ah-45C](https://rc-innovations.es/gens-ace-6s-22-2v-6000mah-45c-ec5-connector-lipo-battery?category=356&attrib=&attrib=22-112&attrib=) 
* [8Ah-12C](https://hobbyking.com/de_de/turnigy-high-capacity-battery-8000mah-6s-12c-drone-lipo-pack-xt90.html?___store=de_de)
* [9Ah-25C](https://rc-innovations.es/lipo-gens-ace-tattu-6s-9000mah-25c-22-2v?category=356&attrib=&attrib=22-85&attrib=)
### Regulators & Cables
* [usbc-flying-leads](https://www.reichelt.at/at/de/usb-c-stecker-auf-freie-enden-sw-20-cm-usb-c-awg22-20-p292505.html)
* [buck-converter-8A](https://www.deliversafev.com/voltage-regulator-buck-converter-8a100w-dc4540v-step-down-volt-convert-module-p-127431.htm)
* IMPORTANT: Buy the right connector for the battery: XT60=60 amp & XT90=90 amp & EC5=120 amp
* [batter-power-1m-2f-y-splitter](https://de.aliexpress.com/i/32845175528.html?gatewayAdapt=glo2deu)
* Require conversion of plug to flying leads: [ali-express-cable-style-regulator](https://de.aliexpress.com/item/1005004462440542.html?gatewayAdapt=glo2deu)

## Vision & Pi Battery
* [0.5Ah-20C](https://www.amazon.com/ECHOBBY-Battery-Airplane-Helicopter-Quadcopter/dp/B0C4YQ4LGN/ref=sr_1_44?keywords=2s+lipo&qid=1693419224&sr=8-44)
* [1Ah-20C](https://www.amazon.com/1000mAh-Battery-Airplane-Helicopter-Racing/dp/B09WLKVLVJ/ref=sr_1_41?keywords=2s%2Blipo&qid=1693419224&sr=8-41&th=1)
* [0.58Ah-20C](https://www.amazon.com/ECHOBBY-580mAh-Battery-PH2-0-3P-Quadcopter/dp/B0BN92JD73/ref=sr_1_40?keywords=2s+lipo&qid=1693419224&sr=8-40)
### Regulators & Cables
* [usbc-flying-leads](https://www.reichelt.at/at/de/usb-c-stecker-auf-freie-enden-sw-20-cm-usb-c-awg22-20-p292505.html)
* [ali-express-cable-style-regulator](https://de.aliexpress.com/item/1005004462440542.html?gatewayAdapt=glo2deu)
* [IC-chip-regulator](https://www.digikey.com/en/products/detail/rohm-semiconductor/BD86120EFJ-E2/4037737)
* [regulator-4amp](https://de.aliexpress.com/i/32946554914.html?gatewayAdapt=glo2deu)
