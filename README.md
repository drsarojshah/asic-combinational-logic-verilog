# asic-combinational-logic-verilog
Structural Verilog implementation of XOR, Full Adder, 4-bit Subtractor and 4-bit Multiplier using Cadence Xcelium
# 🧠 ASIC Project: Combinational Logic Design Using Structural Verilog

📅 **Degree**: M.S. in Electrical and Computer Engineering
📅 **Course**: Digital ASIC Design  
🏫 **University**: University at Albany, SUNY
👨‍🏫 **Instructor**: S. Potluri
📍 **Platform**: Cadence Xcelium (xrun), SimVision, Verilog  

---

## 🎯 Project Overview

Designed and verified fundamental combinational logic blocks using **gate-level structural Verilog modeling**.

Modules implemented:

- 2-Input XOR Gate
- 1-Bit Full Adder
- 4-Bit Ripple-Carry Subtractor (2’s complement method)
- 4-Bit Unsigned Multiplier

All modules were simulated using Cadence Xcelium and verified using waveform analysis in SimVision.

---

## ⚙️ Technologies Used
- **Cadence Xcelium**
- **SimVision waveform viewer**
- **MobaXterm**

---

## 📥 Report
📄 [Download Report (PDF)](Report/Saroj_Project_2.pdf)

---

## 🧩 Implemented Modules

### 🔹 XOR Gate
Y = A'B + AB'

### 🔹 Full Adder
Sum  = (A ⊕ B) ⊕ Cin  
Cout = AB + (A ⊕ B)Cin  

### 🔹 4-Bit Subtractor
Implemented using:
A − B = A + (B' + 1)

### 🔹 4-Bit Multiplier
- Partial products via AND gates
- Ripple-carry full adders
- 8-bit unsigned output

---

## 💡 Skills Demonstrated

✔ Gate-level structural modeling  
✔ Hierarchical module design  
✔ Testbench development  
✔ Ripple-carry arithmetic  
✔ 2’s complement subtraction  
✔ Waveform-based verification  

---

## 📂 Project Structure

├── Code/
│	├── src/
│	├── tb/
├── images/
│	├── waveforms/
├── Report/
│	└──Report/Saroj_Project_2.pdf
└── README.md

---

## 🖼️ Results
[images](waveforms)

---

## 📥 Downloads

- 📘 [Report (PDF)](Report/Saroj_Project_2.pdf)
- 🔗 [View on GitHub](https://github.com/drsarojshah/asic-combinational-logic-verilog)

---

## 📫 Contact

Saroj Shah  
📧 engsarojshah@gmail.com  
🔗 LinkedIn: https://linkedin.com/in/saroj-s-763265226  
🌐 Portfolio: https://drsarojshah.github.io