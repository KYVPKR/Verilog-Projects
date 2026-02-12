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
<img width="1552" height="392" alt="Screenshot 2026-02-09 221056" src="https://github.com/user-attachments/assets/18156340-1d2b-4491-8b27-cd65c3acbb2d" />
- Behavioral simulation confirms correct Sum and Carry outputs
- Waveforms match theoretical Full Adder truth table

## ⚡ Elaborated Design
<img width="1553" height="544" alt="Screenshot 2026-02-09 221239" src="https://github.com/user-attachments/assets/fa4c465d-c4fe-498b-9a9c-204170508b54" />
- This Circuit shows the functionality of the Full Adder made using two Half Adders

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


**Pavan Kumar Reddy Kamatham**  S221181 <br> 
Dept. of ECE | RGUKT Srikakulam  

This project is for educational purposes.
