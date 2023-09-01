# Resources
[Oak-D Lite Youtube Tutorial](https://www.youtube.com/watch?v=7BkHcJu57Cg)
[cad-models](https://github.com/luxonis/depthai-hardware/tree/master/DM9095_OAK-D-LITE_DepthAI_USB3C)

## Battery Powered Oak-D Lite
* To use a [battery-powered Oak-D Lite](https://discuss.luxonis.com/d/1767-powering-oak-d-lite), Luxonis recommends the [Y-adapter](https://docs.luxonis.com/projects/hardware/en/latest/pages/DM6010/#y-adapter)
* The power port wants 5V power up to 2.1A
* USB-C to the power port and the [data-to-Pi-see-section-6](https://github.com/luxonis/depthai-hardware/blob/master/DM9095_OAK-D-LITE_DepthAI_USB3C/Datasheet/OAK-D-Lite_Datasheet.pdf)
* If you don't have USB-C, use battery rated for at least 1A / 5W (preferably 2A / 10W)
* Always connect the 'power' first before connected the host to the 'data'

### Connect a spliced USB-C cable
* [usbc-flying-leads](https://www.reichelt.at/at/de/usb-c-stecker-auf-freie-enden-sw-20-cm-usb-c-awg22-20-p292505.html)
* Leave all ends disconnected except for the VBUS (power) and GND pins

## Wireless Video Transmission
* The goal is to send the video data to a laptop from the Oak-D Lite on the drone
* Send video to a laptop via [usbc-tx-hdmi-rx-pair](https://www.amazon.de/-/en/USB-Transmitter-HDMI-Projectors-Conferences/dp/B0BWRSFB29/ref=sr_1_3?crid=RUWQRTD062FH&keywords=USB-C%2BWireless%2BTransmitter&qid=1693581068&sprefix=usb-c%2Bwireless%2Btransmitter%2Caps%2C181&sr=8-3&th=1)
* IMPORTANT: Before I buy the TX/RX I need to make sure that I can power it. The problem is that the Oak-D Lite only has 1 USBC port and I will split the power and data using the splitter. The data will likely not supply any power to the TX and will not work.
* OPTION: I can highjack the USBC data cable coming from the Oak-D Lite and wire in some power to make it work.