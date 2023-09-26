from dronekit import connect, VehicleMode, LocationGlobalRelative
import argparse

# Establish connection to drone
def connectDrone():
    parser = argparse.ArgumentParser(description='commands')
    parser.add_argument('--connect')
    args = parser.parse_args()
    connection_string = args.connect
    # Connect to the flight controller
    vehicle = connect(connection_string, baud=57600, wait_ready=True)
    return vehicle

# Arm the drone
def armDrone(vehicle):
    vehicle.mode = VehicleMode("GUIDED")
    vehicle.armed = True
    # Wait for the drone to arm
    while not vehicle.armed:
        print("Waiting for arming...")
        time.sleep(1)
    print("Drone is armed!")

# Disarm the drone
def disarmDrone(vehicle):
    vehicle.armed = False

# Close the connection
def disconnectDrone(vehicle):
    vehicle.close()

vehicle = connectDrone()
armDrone(vehicle)
print("End of script")