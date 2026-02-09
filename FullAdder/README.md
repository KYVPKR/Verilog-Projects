# Full Adder in Verilog (Vivado)

This repository contains a Verilog implementation of a **Full Adder** designed using **two Half Adders**, along with a **testbench** for functional verification.  
The project was developed and simulated using **Xilinx Vivado 2018.2**.

---

## 📌 Project Overview

A **Full Adder** is a combinational logic circuit that adds three 1-bit inputs:
- Input A
- Input B
- Carry-in (Cin)

and produces:
- Sum
- Carry-out (Cout)

In this project:
- The Full Adder is built hierarchically using **two Half Adders**
- A testbench applies all possible input combinations (000–111)

---

## 📂 Files Description

| File Name | Description |
|---------|------------|
| `HalfAdder.v` | Gate-level implementation of a Half Adder |
| `FullAdder.v` | Full Adder built using two Half Adders |
| `FullAdderTB.v` | Testbench to verify Full Adder functionality |

---

## 🔧 Design Details

### Half Adder
- **Sum** = A ⊕ B  
- **Carry** = A · B  

### Full Adder
Implemented using:
- Half Adder 1: adds A and B
- Half Adder 2: adds intermediate sum and Cin
- OR gate to generate final Carry

---

## 🧪 Testbench Details

- Uses a `for` loop to apply all 8 input combinations
- Inputs change every 100 ns
- Simulation stops automatically using `$finish`
- Verified using **XSim (Vivado Simulator)**

---

## 📈 Simulation

- Behavioral simulation confirms correct Sum and Carry outputs
- Waveforms match theoretical Full Adder truth table

---

## 🛠 Tools Used

- **Language:** Verilog HDL  
- **Simulator:** XSim  
- **EDA Tool:** Xilinx Vivado 2018.2  

---

## ✅ Status

✔ Design implemented  
✔ Simulation verified  
✔ Ready for synthesis  

---

## 👤 Author

**Pavan Kumar Reddy Kamatham**  
RGUKT Srikakulam  

---

## 📜 License

This project is for educational purposes.
