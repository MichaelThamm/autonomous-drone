"""
Modify the connection parameters ("/dev/ttyS0" and baud rate) to match your setup.
Additional Commands:
You can use DroneKit-Python to send various commands to your drone, including controlling motors, setting waypoints, and retrieving telemetry data. Refer to the DroneKit-Python documentation for more details and examples: https://dronekit-python.readthedocs.io/
"""

from dronekit import connect, VehicleMode

# Connect to the flight controller
vehicle = connect('/dev/ttyS0', baud=57600, wait_ready=True)  # Adjust the serial port and baud rate

# Arm the drone
vehicle.mode = VehicleMode("GUIDED")
vehicle.armed = True

# Wait for the drone to arm
while not vehicle.armed:
    print("Waiting for arming...")
    time.sleep(1)

print("Drone is armed!")

# Disarm the drone (when done)
vehicle.armed = False

# Close the connection
vehicle.close()