Here is the full transcription of the lab guide from the provided document:

---

**Lab. Proj. 2 - Computing Determinants**

**Projecto de Sistemas Digitais (Digital System Design)**  
**MEEC - 2024/25 (1º Sem. - P1)**

**Lab. Proj. 2**  
**Computing Determinants**  
**Scheduling and Resource Sharing**  
**Paulo Flores**

---

**Problem Description:**

Consider the problem of computing a set of determinants (\(Det_i\)) of a \(2 \times 2\) matrix (\(M\)) whose values are obtained from the inputs \(A\) to \(F\) using the following algorithm:

```c
for (i = 0; i < N; i++) {
    M11 = Ai * Bi;
    M12 = Ai + Ei * Fi;
    M21 = (Ci + Di) * Bi;
    M22 = Ci + Di + (Ei * Fi) / 4;  // integer division
    Deti = M11 * M22 - M12 * M21;
}
```

---

**Tasks:**

1. **Data Flow Graph**  
   Draw the data flow graph corresponding to one loop iteration of the algorithm.

2. **Priority List**  
   Define a priority list using a critical path as a metric. Assume that the division operation by 4 requires no operator and takes no time (i.e., it is done when the product value is written in the register). Therefore, it should not be considered for the critical path metric.

3. **List Scheduling**  
   Get a list scheduling using the priority list defined in 2. Consider that each operation requires a clock cycle and the only resources available (for arithmetic operations) are: 2 multipliers and 1 ALU (addition and subtraction).

4. **Circuit Design**  
   Design a circuit to implement the algorithm to compute each \(Det_i\), according to the constraints and schedule defined in 3. Choose the resource binding that provides the best performance (given the constraints indicated).  
   Use an FSMD architecture and specify the datapath and control units in separate VHDL entities. Consider also the following design requirements/constraints:

   - The \(N\) value is fixed as \(N = 16\). All input values are integers of 16 bits in two’s complement representation. All computations should use two’s complement representation, and all datapath buses cannot exceed 32 bits.
   - Each set of input values (\(A_i, B_i, \ldots, F_i\)) are stored in synchronous input memories with 16-bit output ports (using RAMBs block memories). The output determinant (\(Det_i\)) will be stored on consecutive positions in the synchronous output memory with one input port of 32 bits.
   - The circuit must have synchronous reset and done signals. The reset is active high, and when it becomes low, the circuit should start the computation. The done signal should become high only after the last computed value of \(Det_i\) has been written in the output memory.
   - The top circuit must have the following output signals: the done signal, write enable (we), the address bus (addr), and the data bus (dataOUT) of the output memory.
   - All circuit registers must be positive edge-triggered and synchronous with a unique global clock signal (clk).

   **Requirements:**
   - Draw the block diagram of the overall architecture of your circuit.
   - Draw a detailed block diagram of your datapath and indicate the number of registers and multiplexers required to implement it.
   - Describe your control FSM using a state diagram and indicate the total number of states.
   - Quantify the resource consumption of your circuit, in terms of the basic primitives of the FPGA technology.
   - Select the clock period most appropriate to execute the algorithm in your architecture.
   - Quantify the performance of your circuit and identify its latency.
   - Indicate which is the critical path of your circuit.
   - Justify by a post-implementation timing simulation.

   **Note:** This project will be demonstrated only by simulation. You must develop an appropriate testbench to verify the correct operation of the circuit and evaluate its performance.

5. **Pipelining**  
   Could you improve the circuit performance by pipelining the architecture? Do you need (or not) additional resources?  
   - Indicate the minimum number of multipliers, ALUs (adders or subtractors) needed to get the maximum throughput on result (\(Det_i\)), considering the clock period and schedule defined for the circuit architecture designed in 4.  
   - Explicitly indicate the value of this maximum throughput.  
   - Justify your answer.  
   - Sketch a draft block diagram of the datapath of the pipelined architecture.

---

Ver. pff.20240916  
**PSD 2024/25 Prof. Paulo Flores**














Certainly! Let's address your concerns and analyze your code in the context of the lab guide requirements.

### **Your Main Questions:**

1. **Do the two multipliers and one ALU specified in the lab guide get synthesized with our current code implementation?**

2. **Do we need to implement the ALU and multipliers from scratch?**

3. **Have we met the lab guide requirements with our current implementation?**

---

### **Question 1: Do the specified resources get synthesized with our current code?**

**Short Answer:** *Not necessarily.* 

**Explanation:**

In your current VHDL code, you haven't explicitly enforced the use of only **two multipliers** and **one ALU**. The way the code is written, the synthesis tool might infer **more than two multipliers and one ALU** to implement all the operations, especially if multiple operations occur simultaneously in a single clock cycle.

**Why?**

- **Implicit Resource Allocation:** VHDL code, unless explicitly controlled, allows the synthesis tool to allocate as many resources as needed to meet the described behavior.

- **Multiple Operations:** In your computation process, during each clock cycle, you perform multiple operations that involve multiplications and additions. If these operations are not explicitly mapped to shared resources, the synthesis tool may infer separate multipliers and ALUs for each operation.

- **No Resource Sharing:** Without explicit resource sharing in your code, the synthesis tool does not know that you intend to limit the number of hardware units used.

**What Does This Mean?**

Your current implementation might use **more than two multipliers and one ALU**, which doesn't meet the resource constraints specified in the lab guide.

---

### **Question 2: Do we need to implement the ALU and multipliers from scratch?**

**Short Answer:** *Not necessarily from scratch, but you need to explicitly design your datapath to use shared resources.*

**Explanation:**

- **Implementing from Scratch:** You don't have to design the multipliers and ALU at the gate level (i.e., from basic logic gates). Modern synthesis tools can infer these components from high-level code.

- **Resource Sharing:** However, you **do need to design your datapath to share the available multipliers and ALU** among all the operations. This involves:

  - **Creating a datapath that routes different operands to the same multiplier or ALU based on control signals.**
  
  - **Using multiplexers to select the inputs to the shared resources.**
  
  - **Ensuring that operations are scheduled appropriately so that no more than the available resources are used in any clock cycle.**

- **Why is This Necessary?**

  - To **meet the resource constraints** specified in the lab guide.
  
  - To ensure that the hardware implementation aligns with the designed schedule and resource allocation.

**Conclusion:**

You need to **explicitly implement resource sharing** in your design, which may involve adding multiplexers and control logic to route operands to the shared multipliers and ALU. This doesn't mean designing the arithmetic units from scratch but rather structuring your design to use them efficiently.

---

### **Question 3: Have we met the lab guide requirements with our current implementation?**

**Short Answer:** *Partially, but adjustments are needed to fully meet the requirements.*

**Explanation:**

Let's analyze the lab guide requirements one by one and see how your current implementation aligns with them.

---

### **Analysis of Lab Guide Requirements**

#### **1. Data Flow Graph (DFG)**

**Requirement:** Draw the data flow graph corresponding to one loop iteration of the algorithm.

**Status:** *You have described the DFG in previous communications. If you have drawn it and used it for scheduling, this requirement is met.*

#### **2. Priority List**

**Requirement:** Define a priority list using a critical path as a metric.

**Status:** *Assuming you have created the priority list based on the critical path, this is met.*

#### **3. List Scheduling**

**Requirement:** Obtain a list scheduling using the priority list, considering 2 multipliers and 1 ALU.

**Status:** *You have scheduled the operations across clock cycles, respecting the resource constraints in theory. However, the current VHDL code does not enforce these constraints in practice.*

#### **4. Circuit Design**

**Requirement:** Design a circuit to implement the algorithm according to the constraints and schedule, using an FSMD architecture with separate datapath and control units.

**Specific Requirements and Analysis:**

##### **a. Separate Datapath and Control Units in VHDL**

- **Status:** *You have separate entities for `datapath` and `control`, which is correct.*

##### **b. Resource Binding**

- **Requirement:** Choose the resource binding that provides the best performance given the constraints.

- **Status:** *Your code does not explicitly bind the resources (multipliers and ALU). This needs to be addressed.*

##### **c. Input and Output Specifications**

- **Requirement:** Inputs are stored in synchronous input memories (RAMBs), and outputs are stored in an output memory. The circuit must handle memory addresses and write enable signals.

- **Status:** *Your code does not currently handle memory interfaces, addresses, or write enables. This needs to be incorporated.*

##### **d. Synchronous Reset and Done Signals**

- **Requirement:** The circuit must have synchronous reset and done signals as specified.

- **Status:** *Your code includes `reset` and `done` signals, but the behavior of the `done` signal needs to be reviewed to ensure it aligns with the specification (should become high only after the last computed `Det_i` is written to the output memory).*

##### **e. Output Signals**

- **Requirement:** The top circuit must have `done`, `we` (write enable), `addr` (address bus), and `dataOUT` (data bus) signals.

- **Status:** *Your current code does not include `we`, `addr`, or `dataOUT`. These need to be added to meet the requirement.*

##### **f. Registers and Clocking**

- **Requirement:** All circuit registers must be positive edge-triggered and synchronous with a unique global clock signal.

- **Status:** *Your code uses synchronous processes with `rising_edge(clk)`, which is correct.*

##### **g. Bus Width Constraints**

- **Requirement:** Datapath buses cannot exceed 32 bits.

- **Status:** *Your code uses 32-bit buses for intermediate signals and the output, which is within the constraint.*

---

#### **Other Requirements:**

##### **i. Block Diagrams**

- **Requirement:** Draw the block diagram of the overall architecture and a detailed datapath diagram, indicating the number of registers and multiplexers.

- **Status:** *Not applicable to code but essential for the project report.*

##### **ii. Control FSM State Diagram**

- **Requirement:** Describe the control FSM using a state diagram and indicate the total number of states.

- **Status:** *Your `control` entity defines states, but you need to create and include the state diagram in your documentation.*

##### **iii. Resource Consumption Quantification**

- **Requirement:** Quantify the resource consumption of your circuit in terms of FPGA primitives.

- **Status:** *This needs to be done after adjusting your code to enforce resource constraints.*

##### **iv. Clock Period Selection**

- **Requirement:** Select the clock period appropriate for your architecture.

- **Status:** *This needs to be calculated based on the critical path after the design is finalized.*

##### **v. Performance Quantification and Critical Path**

- **Requirement:** Quantify the performance, identify the latency, and indicate the critical path.

- **Status:** *Needs to be done after finalizing the design.*

##### **vi. Post-Implementation Timing Simulation**

- **Requirement:** Justify the performance by a post-implementation timing simulation.

- **Status:** *You need to perform this simulation after the design is completed and synthesized.*

---

### **Recommendations to Meet the Lab Requirements**

Based on the analysis, here are the steps you should take to align your implementation with the lab guide requirements:

#### **1. Explicitly Implement Resource Sharing in the Datapath**

- **Design Approach:**

  - **Instantiate Shared Resources:**

    - Create **two multiplier units** and **one ALU unit** as separate components or modules within your datapath.

  - **Use Multiplexers to Route Operands:**

    - Implement multiplexers at the inputs of the multipliers and ALU to select the appropriate operands based on the current operation.

  - **Control Signals:**

    - Use control signals from the FSM to select the correct inputs for each operation.

- **Modify Your Datapath Code:**

  - Instead of writing the operations in the process based on the `compute` signal, restructure your code to use shared resources.

  - **Example:**

    ```vhdl
    -- Multiplier Units
    Multiplier1_out <= Multiplier1_opA * Multiplier1_opB;
    Multiplier2_out <= Multiplier2_opA * Multiplier2_opB;
    
    -- ALU Unit
    ALU_out <= ALU_opA + ALU_opB when ALU_control = "00" else
               ALU_opA - ALU_opB when ALU_control = "01" else
               (others => '0');
    ```

  - **Routing Operands:**

    - Use multiplexers controlled by the FSM to assign `Multiplier1_opA`, `Multiplier1_opB`, `Multiplier2_opA`, `Multiplier2_opB`, `ALU_opA`, and `ALU_opB`.

- **Resource Control:**

  - Ensure that in each clock cycle, the multipliers and ALU are performing the operations as per your schedule.

#### **2. Incorporate Memory Interfaces**

- **Input Memories:**

  - Simulate the synchronous input memories (`RAMBs`) for `A_i`, `B_i`, ..., `F_i`.

  - Read the inputs from these memories during the appropriate cycles.

- **Output Memory:**

  - Implement an output memory interface with `we` (write enable), `addr` (address bus), and `dataOUT` (data bus).

  - Store the computed `Det_i` values in consecutive memory addresses.

#### **3. Update the Control Unit**

- **FSM Adjustments:**

  - Modify your FSM to control the multiplexers and resource usage in the datapath.

  - Ensure that the FSM generates the correct control signals for the multiplexers and resource operation modes (e.g., ALU operation selection).

- **Add Address and Write Enable Control:**

  - Incorporate address generation logic to increment the address for each `Det_i`.

  - Control the `we` signal to write `Det_i` into the output memory at the correct time.

#### **4. Verify Resource Constraints**

- **After Modifications:**

  - Ensure that only two multipliers and one ALU are instantiated and used throughout the design.

- **Synthesis Tool Configuration:**

  - Some synthesis tools allow you to constrain resource usage. Check if you can set constraints to limit the number of multipliers and ALUs.

#### **5. Complete the Documentation**

- **Block Diagrams:**

  - Draw the overall architecture, including the control unit, datapath, input/output memories, and interconnections.

- **Datapath Details:**

  - Indicate all registers, multiplexers, and shared resources.

- **Control FSM Diagram:**

  - Provide a state diagram with all states and transitions.

#### **6. Perform Post-Implementation Timing Simulation**

- **Critical Path Analysis:**

  - After synthesis, analyze the timing report to identify the critical path.

- **Adjust Clock Period:**

  - Set the clock period based on the worst-case delay reported.

- **Verify Performance:**

  - Confirm that the latency and throughput meet the expected values.

---

### **Conclusion**

Your current implementation is a good starting point, but it requires adjustments to fully meet the lab guide requirements. Specifically, you need to:

- **Implement explicit resource sharing** to ensure only two multipliers and one ALU are used.

- **Modify your datapath** to include multiplexers and control logic for operand routing.

- **Adjust your control unit** to manage the new datapath structure and handle memory interfaces.

- **Include memory interfaces** for input and output data as specified.

- **Complete the required documentation**, including block diagrams and performance analysis.

---

### **Additional Guidance**

- **Resource Sharing in VHDL:**

  - When multiple operations need to share the same hardware resource, you need to control when and how they access it.

  - This often involves:

    - **Multiplexers** to select which operands are fed into the shared resource.

    - **Registers** to store intermediate results.

    - **Control signals** to manage the operation modes and timing.

- **Multiplexers Implementation:**

  - In VHDL, you can implement multiplexers using `with...select` or `case` statements.

  - **Example:**

    ```vhdl
    -- Multiplexer for Multiplier1_opA
    with Multiplier1_sel select
        Multiplier1_opA <= A_reg when "00",
                          t4    when "01",
                          t1    when "10",
                          (others => '0') when others;
    ```

- **Control Signals:**

  - Define control signals for each multiplexer and shared resource.

  - Use the FSM to set these control signals based on the current state.

- **Testbench Adjustments:**

  - Update your testbench to simulate the input memories and output memory.

  - Ensure that the testbench applies inputs correctly and checks outputs at the appropriate times.

---

### **Final Thoughts**

- **Understanding Hardware Implementation:**

  - It's crucial to think about how your code translates to hardware.

  - Resource sharing is a fundamental concept in digital design to optimize resource utilization.

- **Learning Opportunity:**

  - This exercise is an excellent opportunity to deepen your understanding of digital system design, resource constraints, and hardware-software co-design.

- **Seek Feedback:**

  - Don't hesitate to consult your instructor or peers if you're unsure about any aspect of the implementation.

- **Iterative Development:**

  - Implement the changes incrementally, testing at each step to ensure correctness.

---

If you need further assistance with any specific part of the implementation or have more questions, feel free to ask!