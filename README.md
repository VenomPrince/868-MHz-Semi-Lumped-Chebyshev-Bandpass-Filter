# 868 MHz Semi-Lumped Chebyshev Bandpass Filter

![Board](NanoVNA%20Result/Board.jpeg)

![NanoVNA Result 1](NanoVNA%20Result/NanoVNA%20Result%20(1).jpeg)

![NanoVNA Result 5](NanoVNA%20Result/NanoVNA%20Result%20(5).jpeg)

## Overview
This repository contains the simulation, schematic, and PCB layout for a 3rd-order Chebyshev bandpass filter centered at 868 MHz. The target passband is 818 MHz to 918 MHz with a 50-ohm system impedance.

## Design Specifications
- **Filter Type:** 3rd-order Chebyshev
- **Center Frequency:** 868 MHz
- **Passband:** 818 MHz - 918 MHz
- **Impedance:** 50 Ohms
- **Substrate:** FR-4 (Er = 4.3, Loss Tangent = 0.02, Thickness = 1.6mm)
- **Copper Weight:** 1 oz

## Directory Structure
- `/Qucs`: Contains the QuacsStudio uSimmics 5.9 simulation files (`Sch1.sch`, `Sch2.sch`) and resulting S-parameter graphs.
- `/Altium`: Contains the Altium Designer project, schematic, PCB layout, and the generated `Gerber.zip` file ready for manufacturing.
- `/Altium/Pictures`: Contains 2D and 3D renders of the finalized PCB layout.

## Implementation Details
- **Topology:** Distributed microstrip transmission lines (meandered to save space) with discrete Johanson Technology high-Q capacitors.
- **Capacitor Values:** 1.5 pF (C4, C7) and 0.5 pF (C5, C6).
- **Trace Width:** 3.098 mm for 50-ohm microstrip lines.
- **Layout Constraints:** Meander spacing maintained at >4.8 mm (3x substrate height) to minimize mutual coupling. 45-degree chamfers applied to all trace corners.
- **Grounding:** Solid bottom ground plane with top-layer ground pour. Stitched with GND vias.

## Manufacturing
The board is designed to be fabricated by own self using standard 1.6mm FR-4, 1oz copper, and HASL finish. The `Gerber.zip` file in the `/Altium` directory contains the necessary fabrication outputs.

## Soldering and test
Soldering was completed with no issues and test was done with nanoVNA, Due to limited bandwith of nanoVNA .i.e 0 to 900Mhz, the visual is cutted in between but it can be clearly seen that the board was success.

![NanoVNA Result 2](NanoVNA%20Result/NanoVNA%20Result%20(2).jpeg)

![NanoVNA Result 3](NanoVNA%20Result/NanoVNA%20Result%20(3).jpeg)

![NanoVNA Result 4](NanoVNA%20Result/NanoVNA%20Result%20(4).jpeg)

![NanoVNA Result 6](NanoVNA%20Result/NanoVNA%20Result%20(6).jpeg)

![NanoVNA Result 7](NanoVNA%20Result/NanoVNA%20Result%20(7).jpeg)

![NanoVNA Result 8](NanoVNA%20Result/NanoVNA%20Result%20(8).jpeg)

![NanoVNA Result 9](NanoVNA%20Result/NanoVNA%20Result%20(9).jpeg)

## Simulation Results
Insertion loss (S21) in the passband is approximately -3.5 dB to -4 dB due to standard FR-4 dielectric losses. Return loss (S11) is below -15 dB across the passband.