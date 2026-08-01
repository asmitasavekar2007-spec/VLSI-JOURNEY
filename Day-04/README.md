# Day 4 – Full Adder using Verilog HDL

## Objective

To understand the working of a Full Adder, implement it in Verilog HDL, simulate it using Icarus Verilog, and verify the outputs using GTKWave.

---

## What is a Full Adder?

A Full Adder is a combinational circuit that adds three 1-bit binary inputs.

### Inputs

- A
- B
- Cin (Carry In)

### Outputs

- Sum
- Cout (Carry Out)

Unlike a Half Adder, a Full Adder can accept the carry generated from the previous stage, making it suitable for multi-bit binary addition.

---

## Difference Between Half Adder and Full Adder

| Half Adder | Full Adder |
|------------|------------|
| 2 Inputs | 3 Inputs |
| No Carry In | Has Carry In |
| Cannot perform multi-bit addition alone | Can perform multi-bit addition |

---

## Boolean Equations

### Sum

```
Sum = A ⊕ B ⊕ Cin
```

### Carry

```
Cout = AB + ACin + BCin
```

---

## Full Adder using Two Half Adders

A Full Adder can be constructed using:

- Two Half Adders
- One OR Gate

Working:

1. First Half Adder adds A and B.
2. Second Half Adder adds the first sum and Cin.
3. The OR gate combines the two carry outputs to produce Cout.

---

## Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
|0|0|0|0|0|
|0|0|1|1|0|
|0|1|0|1|0|
|0|1|1|0|1|
|1|0|0|1|0|
|1|0|1|0|1|
|1|1|0|0|1|
|1|1|1|1|1|

---

## Files Included

- full_adder.v
- full_adder_tb.v
- full_adder.vcd
- README.md

---

## Tools Used

- Visual Studio Code
- Icarus Verilog
- GTKWave
- Git
- GitHub

---

## Learning Outcomes

- Understood the limitation of a Half Adder.
- Learned the purpose of Carry In (Cin) and Carry Out (Cout).
- Derived the Boolean equations for Sum and Carry.
- Learned how a Full Adder is built using two Half Adders.
- Implemented a Full Adder using Verilog HDL.
- Created a Verilog testbench.
- Simulated the design using Icarus Verilog.
- Verified the waveform using GTKWave.

---

## Common Mistakes I Made

- Instantiated the testbench module instead of the design module.
- Forgot the semicolon (;) after module instantiation.
- Confused module names while creating the testbench.

### How I Corrected Them

- Always instantiate the design module, not the testbench.
- Check for a semicolon after every module instantiation.
- Verify that the module name matches the design file.

---

## Key Interview Points

- A Full Adder has three inputs and two outputs.
- Sum is generated using XOR.
- Carry is generated when two or more inputs are HIGH.
- Full Adders are used to build Ripple Carry Adders, ALUs, and processors.
- A Half Adder cannot be used alone for multi-bit addition because it has no Carry In.

---

## Status

✅ Day 4 Completed Successfully