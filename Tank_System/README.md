
# Single Tank System – MATLAB & Simulink

<sub>Control Engineering | Dynamic System Modelling | Nonlinear Simulation</sub>

## 1. Project Overview

This project demonstrates the modelling and simulation of a nonlinear single water tank system using MATLAB and Simulink.

The objective is to understand how the water level inside a tank changes over time depending on the incoming and outgoing water flow.

The model uses a differential equation to represent the physical system and a Simulink block diagram to simulate its dynamic behaviour.

## 2. Mathematical Model

The system is based on the conservation of mass:

\[
A\frac{dh}{dt}=F_{in}-F_{out}
\]

The outlet flow is proportional to the square root of the water level:

\[
F_{out}=c\sqrt{h}
\]

Combining both equations:

\[
\boxed{\frac{dh}{dt}=\frac{F_{in}-c\sqrt{h}}{A}}
\]

### Parameters

| Symbol | Description | Value |
|---|---|---:|
| A | Tank cross-sectional area | 1 m² |
| Fin | Incoming water flow | 1 |
| c | Outlet flow coefficient | 0.5 |
| h(0) | Initial water level | 0.25 m |
| h | Water level | Variable |

## 3. Simulink Model

The following blocks are used:

- **Step:** Generates the incoming water flow.
- **Sum:** Calculates the difference between incoming and outgoing flow.
- **Gain (1/A):** Divides the net flow by the tank area.
- **Integrator (1/s):** Calculates the water level from its rate of change.
- **Fcn (sqrt(u)):** Calculates the square root of the water level.
- **Gain (c):** Calculates the outgoing flow.
- **Scope:** Displays the water-level response.

The feedback connection from the outlet flow to the negative input of the Sum block represents the water leaving the tank.

## 4. Simulation Results

### Water Level Response

The simulation starts with an initial water level of 0.25 m.

As water enters the tank, the water level increases. At the same time, the outlet flow increases with the water level.

Eventually, incoming and outgoing flows become equal and the water level approaches a steady-state value.

![Single Tank Simulink Model and Scope Output](scope_output.png)

### Steady-State Calculation

At steady state:

\[
\frac{dh}{dt}=0
\]

Therefore:

\[
F_{in}=c\sqrt{h_{ss}}
\]

Rearranging:

\[
h_{ss}=\left(\frac{F_{in}}{c}\right)^2
\]

Using the selected parameters:

\[
h_{ss}=\left(\frac{1}{0.5}\right)^2
\]

\[
\boxed{h_{ss}=4\text{ m}}
\]

The simulated response approaches the theoretical steady-state value of 4 metres.

## 5. How to Run the Project

### Requirements

- MATLAB
- Simulink
- A valid MATLAB licence with Simulink access

### Instructions

1. Download or clone this repository.
2. Open MATLAB.
3. Navigate to the `Tank_System` folder.
4. Open `Single_Tank_Model.slx`.
5. Open `run_simulation.m`.
6. Click Run in the MATLAB Editor.
7. Open the Scope block to observe the water-level response.

The MATLAB script defines the system parameters and executes the Simulink model.

## 6. Project Files

| File | Description |
|---|---|
| `Single_Tank_Model.slx` | Simulink block diagram |
| `run_simulation.m` | MATLAB simulation script |
| `scope_output.png` | Simulation result screenshot |
| `README.md` | Project documentation |

## 7. Concepts Learned

- Conservation of mass
- Nonlinear differential equations
- Dynamic system modelling
- Integrators and gain blocks
- Feedback connections
- Numerical simulation
- Steady-state analysis
- MATLAB and Simulink fundamentals

## 8. Future Improvements

- Extend the model to two tanks connected in cascade.
- Study the effect of changing the inlet flow.
- Compare different tank areas and outlet coefficients.
- Implement PID-based water-level control.
- Analyse the stability and response of the system.

---

**Author:** Gaurav Keshava

**Programme:** M.Sc. Computer and Systems Engineering

**University:** TU Ilmenau, Germany

*Developed as part of learning and exploring Control Engineering, mathematical modelling and dynamic system simulation using MATLAB and Simulink.*
