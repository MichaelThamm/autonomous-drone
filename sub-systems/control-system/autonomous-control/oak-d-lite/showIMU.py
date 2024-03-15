import pandas as pd
import matplotlib.pyplot as plt

# Read the CSV file into a DataFrame
df = pd.read_csv('imu_data.csv')

# Create subplots
fig, axes = plt.subplots(2, 1, figsize=(10, 10))

# Plot accelerometer data
axes[0].plot(df['Accelerometer TS'], df['Accelerometer X'], label='Accelerometer X')
axes[0].plot(df['Accelerometer TS'], df['Accelerometer Y'], label='Accelerometer Y')
axes[0].plot(df['Accelerometer TS'], df['Accelerometer Z'], label='Accelerometer Z')
axes[0].set_xlabel('Timestamp')
axes[0].set_ylabel('Value')
axes[0].set_title('Accelerometer Data')
axes[0].legend()
axes[0].grid(True)

# Plot gyroscope data
axes[1].plot(df['Gyroscope TS'], df['Gyroscope X'], label='Gyroscope X')
axes[1].plot(df['Gyroscope TS'], df['Gyroscope Y'], label='Gyroscope Y')
axes[1].plot(df['Gyroscope TS'], df['Gyroscope Z'], label='Gyroscope Z')
axes[1].set_xlabel('Timestamp')
axes[1].set_ylabel('Value')
axes[1].set_title('Gyroscope Data')
axes[1].legend()
axes[1].grid(True)

# Adjust layout
plt.tight_layout()

# Show plots
plt.show()