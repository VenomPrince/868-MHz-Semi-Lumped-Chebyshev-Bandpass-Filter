# 868 MHz Semi-Lumped Chebyshev Bandpass Filter

![Board](NanoVNA%20Result/Board.jpeg)

## Results

The filter performed very close to simulation. Measured insertion loss (S21) was **-3.33 dB** vs **-2.85 dB** simulated, and measured return loss (S11) was **-14.33 dB** vs **-21.9 dB** simulated.

| Parameter | Simulated | Measured (NanoVNA) |
|---|---|---|
| Insertion Loss (S21) | -2.85 dB | -3.33 dB |
| Return Loss (S11) | -21.9 dB | -14.33 dB |

### Insertion Loss (S21) — Simulated vs Measured

| Simulated | Measured |
|---|---|
| ![Simulated S21](NanoVNA%20Result/Simulated%20Insertion%20loss%20(S21).png) | ![Measured S21](NanoVNA%20Result/Insertion%20loss.jpg) |

### Return Loss (S11) — Simulated vs Measured

| Simulated | Measured |
|---|---|
| ![Simulated S11](NanoVNA%20Result/Simulation%20Return%20Loss%20(S11).png) | ![Measured S11](NanoVNA%20Result/Return%20Loss.jpg) |

> **Note:** Testing was done with a NanoVNA. Due to its limited bandwidth (0 Hz – 900 MHz), the measured sweep is cut off at the upper end, but the board clearly works as designed.

## Overview

This repository contains the simulation, schematic, and PCB layout for a 3rd-order Chebyshev bandpass filter centered at 868 MHz. The target passband is 818 MHz to 918 MHz with a 50-ohm system impedance.

## Design Specifications

- **Filter Type:** 3rd-order Chebyshev
- **Center Frequency:** 868 MHz
- **Passband:** 818 MHz – 918 MHz
- **Impedance:** 50 Ohms
- **Substrate:** FR-4 (Er = 4.3, Loss Tangent = 0.02, Thickness = 1.6 mm)
- **Copper Weight:** 1 oz

## Directory Structure

- `/Qucs`: Contains the QucsStudio simulation files (`Sch1.sch`, `Sch2.sch`) and resulting S-parameter graphs.
- `/Altium`: Contains the Altium Designer project, schematic, PCB layout, and the generated `Gerber.zip` file ready for manufacturing.
- `/Altium/Pictures`: Contains 2D and 3D renders of the finalized PCB layout.

## Implementation Details

- **Topology:** Distributed microstrip transmission lines (meandered to save space) with discrete Johanson Technology high-Q capacitors.
- **Capacitor Values:** 1.5 pF (C4, C7) and 0.5 pF (C5, C6).
- **Trace Width:** 3.098 mm for 50-ohm microstrip lines.
- **Layout Constraints:** Meander spacing maintained at >4.8 mm (3× substrate height) to minimize mutual coupling. 45-degree chamfers applied to all trace corners.
- **Grounding:** Solid bottom ground plane with top-layer ground pour, stitched with GND vias.


## Manufacturing

The board is designed to be fabricated using standard 1.6 mm FR-4, 1 oz copper, and HASL finish. The `Gerber.zip` file in the `/Altium` directory contains the necessary fabrication outputs.

## Soldering and Test

Soldering was completed with no issues, and testing was done with a NanoVNA. Due to the limited bandwidth of the NanoVNA (0 Hz to 900 MHz), the visual is cut off in between, but it can clearly be seen that the board was a success.

Measured insertion loss:

![Insertion loss](NanoVNA%20Result/Insertion%20loss.jpg)

Measured return loss:

![Return Loss](NanoVNA%20Result/Return%20Loss.jpg)