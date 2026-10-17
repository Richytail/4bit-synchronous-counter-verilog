# Basic 4-Bit Synchronous Up-Counter (Verilog)

A 4-bit synchronous up-counter with synchronous reset, written in Verilog
and verified with a self-written testbench.

## Behaviour
- Counts 0 → 15 on each rising clock edge, then wraps to 0
- Synchronous active-high reset

## Files
- `src/design.sv` – counter module
- `tb/testbench.sv` – testbench (20-unit clock period, reset applied at start)

## Simulation
Simulated in EDA Playground using Icarus Verilog.
Waveform output:

![Waveform](docs/waveform.png)

## What I learned
- Reset timing: releasing reset at #25 (mid-cycle) rather than on a clock
  edge avoids a race condition in simulation.
- `output` is a reserved keyword in Verilog.
- I have a lot more work and understanding to do.
