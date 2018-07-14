# Satellite Attitude Propagator

> **NOTICE**
>* Welcome to join the development.
>* **This project is for study/research only, NOT for commercial/illegal activity**.

## 1. Illustration

* **mainflow.m**: an example of How-to.
* **RK4.m**: 4th order Runge-Kutta method.
* **Prop_Attitude.m**: perform attitude propagation with [quaternion, angle velocity].

> the propagation is coded according to the book ***Spacecraft Dynamics and Control***.

### 1.1 Mainflow

## 2. Existing problems(HELP WANTED)

## 3. Change Log

### 2018年7月14日**v0.0.1**

1. examined the attitude propagator. Nothing wrong, at least not in the comparison with simulink.

### 2018年7月13日**v0.0**

1. added attitude propagator to the project. but it is not yet right. still debuging.
2. added [```Euler angle``` -> ```quaternion function```](http://www.euclideanspace.com/maths/geometry/rotations/conversions/eulerToQuaternion/index.htm). All the build-in functions about transferring [Euler angle] to any other things went wrong, at least on my *R2017a* version one. Don't know why, so I have to code it by myself. That is a little heavy for me ```_(:з」∠)_```.

### 2018年7月11日

initiate the project.
