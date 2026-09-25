###Project Title: 868 MHz Semi-Lumped Chebyshev Bandpass Filter Design and Simulation

Project Description
This repository contains the theoretical design, mathematical modeling, and S-parameter simulation of an 868 MHz RF bandpass filter. The project bridges the gap between theoretical RF mathematics and physical PCB implementation. It is designed as a foundational step for an automated empirical validation pipeline, where simulated data will be compared against real-world measurements captured via a NanoVNA and Python-based SCPI automation.

Objective
The primary objective is to design a high-performance 868 MHz ISM band filter suitable for IoT applications. This project demonstrates proficiency in RF filter synthesis, microstrip transmission line theory, and industry-standard EDA tools (QucsStudio and Altium Designer), serving as a portfolio piece for advanced academic research and development in microelectronics and wireless engineering.

System and Substrate Specifications
Filter Type: 3rd-order Chebyshev Bandpass Filter
Center Frequency: 868 MHz
Passband: 818 MHz to 918 MHz (100 MHz bandwidth)
System Impedance: 50 Ohms
Substrate Material: Standard FR-4
Relative Permittivity (Er): 4.3
Substrate Height (H): 1.6 mm
Copper Thickness (T): 0.035 mm (1 oz)

Design and Simulation Methodology
1. Theoretical Synthesis: The initial filter topology was generated using the uSimmics Filter Synthesis tool in QucsStudio, calculating the normalized g-values for a 0.1 dB ripple Chebyshev response.
2. Physical Translation: The ideal LC ladder network was converted into physical microstrip dimensions. Due to manufacturing constraints regarding minimum etchable gap sizes on a 1.6 mm substrate, the design was adapted into a semi-lumped topology, utilizing a combination of microstrip transmission lines and discrete surface-mount capacitors.
3. S-Parameter Simulation: A linear S-parameter (SP) simulation was configured to sweep from 800 MHz to 950 MHz with 201 data points. 50-Ohm terminal ports were assigned to the input and output nodes to simulate real-world SMA connector interfaces.

Simulation Results
The simulated frequency response demonstrates textbook Chebyshev characteristics with excellent performance metrics:
Insertion Loss (S21): Approximately 0 dB at the center frequency, indicating near-perfect signal transmission through the passband.
Return Loss (S11): Dips to -29 dB, -31 dB, and -37 dB within the passband. This significantly exceeds the standard -10 dB industry threshold, confirming highly effective impedance matching and minimal signal reflection.

Physical Dimensions for PCB Layout
The simulation yielded specific physical dimensions for the copper traces to be implemented in Altium Designer:
Trace Width (W): 3.098 mm (calculated for 50-Ohm impedance on 1.6 mm FR-4)
Trace Lengths (L): 81.64 mm and 88.41 mm for the respective microstrip segments.

Next Steps
1. PCB Layout: Translate the simulated microstrip widths and lengths into an Altium Designer PCB layout, incorporating SMA female edge-launch connectors (1.6 mm board thickness).
2. Fabrication: Manufacture the PCB using standard FR-4 processes.
3. Automated Validation: Develop a Python script utilizing the scikit-rf library to interface with a NanoVNA via USB/serial commands. The script will automate the frequency sweep, extract Touchstone (.s2p) data, and generate comparative overlay graphs of the simulated vs. empirical S-parameters to quantify manufacturing tolerances.

Repository Contents
QucsStudio Schematic Files: Contains the ideal LC synthesis and the final semi-lumped microstrip simulation schematics.
Simulation Data: Exported S-parameter datasets and frequency response graphs.
Documentation: This README file detailing the mathematical foundations, substrate parameters, and simulation outcomes.
