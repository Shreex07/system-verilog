# Tri-state Buffer

A tri-state buffer allows a signal to either drive an output or disconnect from it by placing the output in a high-impedance (`Z`) state.

When the enable signal is active, the input is passed to the output.  
When the enable is inactive, the output is set to high impedance, allowing multiple devices to share a common bus.

Tri-state buffers are commonly used in bus-oriented and shared-line designs.
