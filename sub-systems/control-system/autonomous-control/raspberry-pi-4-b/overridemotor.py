from dronekit import connect, VehicleMode
import time

# Connect to the flight controller
vehicle = connect('/dev/ttyS0', baud=57600, wait_ready=True)  # Adjust the serial port and baud rate

try:
    # Arm the drone
    vehicle.mode = VehicleMode("GUIDED")
    vehicle.armed = True

    # Wait for the drone to arm
    while not vehicle.armed:
        print("Waiting for arming...")
        time.sleep(1)

    print("Drone is armed!")

    # Set the throttle (left front motor) to a value between 1000 (minimum) and 2000 (maximum)
    throttle_value = 1500  # Adjust this value as needed
    vehicle.channels.overrides['1'] = throttle_value  # Channel 1 corresponds to the left front motor

    # You can adjust the throttle value over time to control motor speed
    # For example, to increase throttle gradually:
    # for i in range(1500, 1700, 10):
    #     vehicle.channels.overrides['1'] = i
    #     time.sleep(0.1)

    # Wait for some time (e.g., 5 seconds)
    time.sleep(5)

    # Disarm the drone
    vehicle.armed = False

    # Wait for the drone to disarm
    while vehicle.armed:
        print("Waiting for disarming...")
        time.sleep
