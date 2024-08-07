# HDL_Basic_Circuits
 This is the repository of some digital system circuits coded in HDL, both in VHDL and Verilog, starting from the basic level and continuing to a little advanced level.

These circuits are presented as some Lab assignment questions, and I have implemented them in the [Digilent Cmod A7](https://digilent.com/reference/programmable-logic/cmod-a7/start) board.


## 1. Demultiplexer
Write HDL code to realize a 4 bit, 1 to 4 demultiplexer. Make the outputs “0000” when not selected.
1. Write the architecture using equations.
2. Write the architecture in dataflow model using (with ... select) construct.
3. Write the behavioral code using (case ... when ...) construct.

## 2. Priority Encoder
Write HDL code to implement a 3-input priority encoder. Encode output as “00” when none of the inputs are asserted.
1. Write the architecture in dataflow model using (when ... else) construct.
2. Write the behavioral code using (if ... then ...) construct.

## 3. 2-bit Magnitude Comparator
Write HDL code to realize a 2-bit Magnitude Comparator. Input to the circuits are two unsigned 2-bit numbers. There are three outputs: 'greater than', 'equal' and 'less than'.
1. Write the architecture in dataflow model using (with ... select) construct.
2. Write the behavioral code using (case ... when) construct.

## 4. 4-bit Magnitude Comparator
Write HDL code to implement a 'Greater Than' magnitude comparator of two unsigned 4-bit numbers. Implement this from scratch using bit level logic function.
1. Write the architecture in dataflow model using (when ... else) construct.
2. Write the architecture in dataflow model using equations.
3. Write the behavioral code using (if ... then ...) construct.

## 5. Decrementer Circuit
Write HDL code of a decrementer (-1) circuit for an unsigned 4-bit number in following two ways. Compare the area (resource utilization) and performance (delay) in each case.
1. Implement using structural code as a cascade of basic blocks in bit level.
2. Implement using the operator '-' in 'ieee.std_logic_unsigned' package.
