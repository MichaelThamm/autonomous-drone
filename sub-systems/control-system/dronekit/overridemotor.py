from dronekit import connect, VehicleMode
import time

def takeoff(tgt_altitude):
    vehicle.simple_takeoff(tgt_altitude)
    while True:
        altitude = vehicle.location.global_relative_frame.alt
        if altitude >= tgt_altitude - 1:
            print("Altitude reached")
            break
        time.sleep(1)

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
    for i in range(1500, 1700, 10):
        vehicle.channels.overrides['1'] = i
        time.sleep(0.1)

    # Takeoff
    takeoff(10)
    vehicle.airspeed = 7
    wp1 = LocationGlobalRelative(0, 0, 0)
    vehicle.simple_goto(wp1)
    print("I am now doing something")
    vehicle_mode = VehicleMode("RTL")

    # Wait for some time (e.g., 5 seconds)
    time.sleep(5)

    # Disarm the drone
    vehicle.armed = False

    # Wait for the drone to disarm
    while vehicle.armed:
        print("Waiting for disarming...")
        time.sleep

    print("Script Completed")
