# Tap Water Distribution System Design
Small-Scale Drinking Water Distribution Project for a Remote Community
By Tuan Khoi Nguyen, Battulga Batkhurel, Rundong Liu and Haiwei Wang (2019)

## Introduction
This project serves as the main project throughout the semester for Engineering Design Systems 1, Semseter 1 2019. Its purpose is to design a sample system of tap distribution that distributes water to a small community. Here in this repository, I will only note down on parts that I am in charge of, the rest will be briefly mentioned if needed. Further details can be found in [the report](https://github.com/tuankhoin/tap-water-distribution/blob/master/Final%20Report-group%2015.pdf).

**Warning**: If you are planning to use the ideas here for your academic purposes, please be aware that you might be picked up for plagiarism by the Academic Integrity if credits are not properly referenced.

## What I do in this project

### Tap Distribution System Design
To ultilize the cost and efficiency of the system, priorities for the system structure are set, in the order of most priortized. After testing methods and research, the final priority list is set, strating from the most priortized:
* Sunlight avoidance: to prevent the corrosion from sunlight UV.
* Runs with building structure: to prevent physical collisions that may occur.
* Length minimization: to make the cost as efficient as possible.
The network figures can be found on page 25 of [the report](https://github.com/tuankhoin/tap-water-distribution/blob/master/Final%20Report-group%2015.pdf), followed by further details.

### Choices of materials and pipe diameters
Choices are made after a series of trial and run, as well as paper research. See page 26 & 27 of [the report](https://github.com/tuankhoin/tap-water-distribution/blob/master/Final%20Report-group%2015.pdf) for details.

### EBE Analysis and calculation
For this part, a script is composed to do the calculations. Result tables can be found from page 28 onwards of [the report](https://github.com/tuankhoin/tap-water-distribution/blob/master/Final%20Report-group%2015.pdf) and the script for this part is [Section2Pressures.m](https://github.com/tuankhoin/tap-water-distribution/blob/master/Section2_Updated/Section2Pressures.m)

## Improvements

### Addition of reducers
This is to reduce the cost by reducing the diameter of the system where possible, but still satisfy the minimum requirements. To avoid the time-consuming brute-force calculations, a number of matlab scripts has been arranged:
* Function script to calculate the pressure drop on a set position of the reducers. See [Section2_with_reducers.m](https://github.com/tuankhoin/tap-water-distribution/blob/master/Section2_Updated/Section2_with_reducers.m).
* Calculation script using the above function to calculate the overall system pressure, for an unlimited number of reducers. See [p_tap.m](https://github.com/tuankhoin/tap-water-distribution/blob/master/Section2_Updated/p_tap.m).

### Further research: taps are simultaneously opened
* Via research, step-by-step formulas are evaluated for caluclating values of the simultaneously opening taps.
* Analysis is then made on project case to separate the tee into fitting sections. These sections will be then applied with the equations found above.

For further information, see [the report](https://github.com/tuankhoin/tap-water-distribution/blob/master/Final%20Report-group%2015.pdf), pp.33-35.
