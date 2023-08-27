# Resources
[Oak-D Lite Youtube Tutorial](https://www.youtube.com/watch?v=7BkHcJu57Cg)
[cad-models](https://github.com/luxonis/depthai-hardware/tree/master/DM9095_OAK-D-LITE_DepthAI_USB3C)

## Battery Powered Oak-D Lite
* To use a [battery-powered Oak-D Lite](https://discuss.luxonis.com/d/1767-powering-oak-d-lite), Luxonis recommends the [Y-adapter](https://docs.luxonis.com/projects/hardware/en/latest/pages/DM6010/#y-adapter)
* "The power port wants 5V power up to 2.1A"
* "This means you can use anything (compliant) with a USB-C port to connect to the power port and the data port will be isolated so that you can use whatever you like for a host."
* "If you don't have USB-C you can use a power bank or 'charger' that is rated for at least 1A / 5W (preferably 2A / 10W) with a USB-A port to provide the power."
* "Always connect the 'power' first before connected the host to the 'data'."

### Connect a spliced USB-C cable
* Buy a USB-C to USB-C cable and cut the one end.
* Leave all ends disconnected except for the VBUS (power) and GND pins
* The default VBUS voltage is 5 V but the standard ([ref](https://www.allaboutcircuits.com/technical-articles/introduction-to-usb-type-c-which-pins-power-delivery-data-transfer/#:~:text=The%20VBUS%20and%20GND%20pins,voltage%20up%20to%2020%20V.)) allows the devices to negotiate and choose a VBUS voltage other than the default value.
* The Power Delivery allows VBUS to have a voltage up to 20 V.
