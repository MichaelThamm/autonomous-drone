# Configure APM Planner
# https://github.com/ArduPilot/apm_planner

git-dir := '~/work/repos/drone/apm_planner'

default:
  just --list

flashing-checklist:
  # 1. Set FC to DFU mode (Holding boot button before power)
  # 2. Take a backup of the FC config
  # 3. Ensure Betaflight is flashed to FC (I was not able to read ESC data with INAV or Ardupilot)
  # 4. Check that there is a connection between the FC and ESC
  # 5. Power up the ESC with an external battery
  # 6. Connect to https://esc-configurator.com/ in a Chrome browser!
  # 7. Connect to the FC and read data

betaflight-configurator:
  https://app.betaflight.com/#  # Open this with chrome
  # For issues with flashing:
  #   https://github.com/betaflight/betaflight-configurator/issues/4333

inav-configurator:
  # https://github.com/iNavFlight/inav-configurator#linux
  sudo apt install ./INAV-Configurator_linux_x64_8.0.0.deb
  # Allow USB writing
  sudo vim /etc/udev/rules.d/45-stdfu-permissions.rules  # SUBSYSTEMS=="usb", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="df11", MODE:="0666"
  inav-configurator
  # https://www.youtube.com/watch?v=xdf3yhlgJyc

blheli-suite32:
  # https://github.com/bitdump/BLHeli/releases
  # https://oscarliang.com/connect-flash-blheli-32-esc/