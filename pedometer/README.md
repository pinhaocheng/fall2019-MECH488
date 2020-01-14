# MECH 488 Kinematics and Machine Design Lab

## LAB ASSIGNMENT NO 6
Using your cell phone as a measurement device

### Introduction

Smartphones are becoming more sophisticated every day. On some levels our phones are more advanced than our laptops and desktop computers. Many spartphones have imbedded sensors including accelerometers, gyroscopes, magnetometers, GPS, light sensors, and thermometers, not to mention the camera, microphone, and lights.

A smartphone can be a powerful tool for an engineer. Mobile apps are available that use built-in sensors to take measurements using the camera, turn your phone into an inclinometer, measure lighting in a room, track you position, measure accelerations, and the list goes on.

### Task

Your task in the assignment is to create a pedometer using a smartphone’s accelerometer. Download an app that allows you to export acceleration data.

### Solution

The csv files were imported into calculateTotalAccel.m to compute the total acceleration, which was equal to the square root of the sum of the square accelerations in the x, y, and z directions. The purpose of calculating the total acceleration is that during gait, there is acceleration not only in the walking direction, but also in the gravitational direction and minute acceleration in the lateral direction. Calculating the total acceleration will give a more complete view of what is occurring during the walking and running trails.

After computing the total acceleration, pedometer.m was then used to generate the total number of strides from the data. MATLAB’s built in function findpeaks was incorporated in the code, as its purpose was to find and label the peaks in a plotted figure. The number of peaks was then determined by taking half of the number of peak points returned by the function findpeaks, as one stride is defined as two steps, one for each foot.
