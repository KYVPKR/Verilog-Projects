# 📌 N-Bit Ripple Carry Adder (Parameterized)

## 📖 Project Description

This project implements a **parameterized N-bit Ripple Carry Adder (RCA)** using Verilog HDL.

The design is scalable and built using:

- A 1-bit Full Adder
- `generate` block with `genvar`
- Parameter `N` to define bit width

By changing parameter `N`, the same code can implement:

- 4-bit adder
- 8-bit adder
- 16-bit adder
- 32-bit adder
- And higher widths

---

## 🧠 Working Principle

A Ripple Carry Adder connects multiple 1-bit Full Adders in series.

For each bit:

Sum = A ⊕ B ⊕ Cin
Cout = AB + BCin + ACin


- The carry output of one stage becomes the carry input of the next stage.
- The carry "ripples" from LSB to MSB.

---

## 🏗️ Design Structure

### 1️⃣ Full Adder Module
- Gate-level implementation
- Computes Sum and Carry

### 2️⃣ N-bit Ripple Carry Adder
- Uses parameter `N`
- Uses `generate` loop
- Instantiates `N` full adders
- Internal carry wire: `[N:0]`
<img width="1551" height="859" alt="Screenshot 2026-02-12 072411" src="https://github.com/user-attachments/assets/66508f19-3990-4162-b979-741333ccf15d" />
<img width="1551" height="860" alt="Screenshot 2026-02-12 072232" src="https://github.com/user-attachments/assets/e40da5a2-eff5-4a68-a397-443a247d9a19" />

---

## 📂 Files Included

- `FullAdder.v` → 1-bit Full Adder  
- `RippleCarryAdder_Nbit.v` → Parameterized N-bit Adder  
- `RippleCarryAdder_Nbit_TB.v` → Testbench  

---

## ⚙️ How to Run (Vivado)

1. Add design files to **Design Sources**
2. Add testbench file to **Simulation Sources**
3. Set testbench as **Top** (for simulation)
4. Run **Behavioral Simulation**

---

## 🧪 Test Cases

The testbench verifies:

- ASCII input values (E, C, S)
- Random test cases
- Overflow conditions
- Carry propagation across all bits
  
<img width="1553" height="456" alt="Screenshot 2026-02-12 075808" src="https://github.com/user-attachments/assets/5452ce11-85bb-4149-9fe8-a48b63b67d04" />

---

## 📊 Example Output

### Example 1
A = 69
B = 67
Cin = 1

Sum = 137
Cout = 0


### Example 2 (Overflow Case)
154 + 146 = 300

Sum = 44
Cout = 1


---

## 🚀 Features

- Scalable design using parameters
- Clean structural modeling
- `generate` block usage
- Overflow detection
- Fully synthesizable (Vivado tested)

---

## 📌 Parameter Usage

Default width: 8

🛠 Tools Used
--- 
Verilog HDL
Xilinx Vivado - 2018.2

