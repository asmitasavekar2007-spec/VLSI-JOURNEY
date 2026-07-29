# Day 1 - Verilog AND Gate

## Objective

Design and simulate a 2-input AND gate using Verilog HDL.

## Files

- `and_gate.v` - AND gate design
- `and_gate_tb.v` - Testbench
- `and_gate.vcd` - Simulation waveform

## Truth Table

| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |

## Compilation

```bash
iverilog -o and_gate and_gate.v and_gate_tb.v
```

## Run Simulation

```bash
vvp and_gate
```

## View Waveform

```bash
gtkwave and_gate.vcd
```

## Learning Outcome

- Learned the structure of a Verilog module.
- Wrote a testbench.
- Simulated the design using Icarus Verilog.
- Viewed waveforms in GTKWave.