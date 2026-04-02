# Silicon Logic: NAND to Tetris

I am building a 16-bit computer system from first principles. This repository is a record of my exploration into computer architecture, moving from raw NAND gates to a functional, Turing-complete Von Neumann machine.

### 🧩 My Philosophy
I believe in understanding systems by dismantling abstractions. My goal is to master the logic that sits between the physical electron and high-level code. I prioritize building "from scratch"—understanding data streams and binary logic without the safety net of high-level frameworks.

### 🏗 Progress
- [x] **Boolean Logic:** Designing fundamental gates (Mux, DMux, and multi-bit variants).
- [x] **Boolean Arithmetic:** Building a 16-bit ALU from first principles.
- [x] **Sequential Logic:** Implementing Flip-Flops, Registers, and 16K RAM units.
- [x] **Machine Language:** Developing low-level drivers (`Fill.asm`, `Mult.asm`) for memory-mapped I/O.
- [x] **Computer Architecture:** Completed the **Hack CPU**, **Unified Memory Map**, and the **Computer.hdl** integration.
- [ ] **Software Layer:** Developing a 2-pass Assembler in Node.js (Low-level implementation).

### 🔬 Technical Exploration
* **Hardware Implementation:** Successfully mapped the 16-bit instruction set to control bits, managing the data flow between the A/D registers and the ALU.
* **Memory-Mapped I/O:** Engineered a unified memory space that bridges the CPU with a bitmapped Screen and Keyboard input.
* **Next Milestone:** Building a custom Assembler in **Node.js** to translate symbolic Hack Assembly into binary machine code, focusing on buffer streams and string parsing without external libraries.

**I welcome technical suggestions or discussions on low-level engineering and systems architecture.**