# Specifications
* Cost: €500
* Mass: 1.25 kg
* Upwards Acceleration: 4.4 g
* Size (motor-to-motor): ~250 mm
* [Specs-Calculator-Online](https://ecalc.ch/xcoptercalc.php)

![3d-drone-render](mechanical-design/front-cad.png)
|  |  |  |  |
| ------------- | ------------- | ------------- |------------ | 
| ![front](documentation/Camera.png)  | ![top](documentation/Top.png)  | ![side](documentation/Side.png) | ![esc](documentation/ESC.png) |

|  |  |  |  |
| ------------- | ------------- | ------------- |------------ | 
| ![mono-1](documentation/image-recognition-mono-1.png)  | ![mono-2](documentation/image-recognition-mono-2.png)  | ![ir-1](documentation/image-recognition-ir-1.png) | ![ir-2](documentation/image-recognition-ir-2.png) |

|  |  | 
| ------------- | ------------ | 
| ![slam-1](documentation/depthai-slam-1.png)  | ![slam-2](documentation/depthai-slam-2.png)  |

# Project overview
1. 3D print the drone frame
2. Install the electrical [sub-systems](https://github.com/MichaelThamm/drone-project/tree/main/sub-systems)
3. Configure the Ardupilot parameters using a ground control station (GCS) APM Planner (for Linux) or Mission Planner (for Windows)
4. Write, implement, and test the [pymavlink code]([https://github.com/MichaelThamm/autonomous-drone/tree/main/sub-systems/control-system/python-code](https://github.com/MichaelThamm/autonomous-drone/tree/main/sub-systems/control-system/pymavlink)) flight routines.
5. Implement [computer-vision](https://github.com/MichaelThamm/drone-project/tree/main/sub-systems/vision).
6. Create spatial-awareness and autonomous flight.

![wiring-diagram](electrical-design/wiring-diagram.png)

# Purchase links
* _Prices are tax included_
* €34.90 - [2500KV 3-6S Brushless Motor](https://www.banggood.com/4X-Racerstar-2207-BR2207S-Fire-Edition-2500KV-3-6S-Brushless-Motor-For-RC-Drone-FPV-Racing-Frame-Kit-p-1284981.html?utm_source=googleshopping&utm_medium=cpc_organic&gmcCountry=AT&utm_content=minha&utm_campaign=aceng-pmax-at-en-pc&currency=EUR&cur_warehouse=CN&createTmp=1&utm_source=googleshopping&utm_medium=cpc_eu&utm_content=lynna&utm_campaign=aceng-pmax-at-en-top5ca1-220705&ad_id=&gclid=CjwKCAjwrranBhAEEiwAzbhNtclSIyOhJE-qOn81EOJPpisrpuhJdMc0ZsXfh0jFA0ho2sGsMIhjzhoCMK4QAvD_BwE)
* €55.89 - [speedybee-f405-v4-bls-55a-30x30-fc-esc-stack](https://www.speedybee.com/speedybee-f405-v4-bls-55a-30x30-fc-esc-stack/)
* €92.4 - [4Ah-70C-6S-battery](https://www.snhobbies.com/product_info.php?cPath=903_43_909&products_id=14901)
* €52.79 - [battery-charger](https://www.amazon.ca/gp/product/B0B5LLVSRK/ref=ox_sc_act_title_2?smid=A2M5Y5AVP4X7RH&psc=1)
* €7.99 - [buck-converter-5V-6A](https://universal-solder.ca/product/dc-dc-converter-5v-6a-output-9-36v-input-usb-port/)
* €67.00 - [raspberry-pi-4b](https://www.amazon.de/-/en/Raspberry-ARM-Cortex-A72-WLAN-ac-Bluetooth-Micro-HDMI-Single/dp/B07TC2BK1X/ref=sr_1_4?keywords=raspberry%2Bpi&qid=1691395648&sr=8-4&th=1)
* €138.85 - [oak-d-lite-camera](https://shop.luxonis.com/products/oak-d-lite-1)
* €17.71 - [oak-d-y-adapter](https://shop.luxonis.com/collections/accessories/products/oak-y-adapter)
* €50.00 - cables and connectors
