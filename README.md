# circuit-simulation
C++ circuit simulation using Spice

The Spice simulator supports the following:

** A netlist, as input to the simulator. It describes the contents of the circuit being simulated, and the outputs that the simulator is expected to provide. The content of the netlist is limited to what is described below

* Devices

Resistor: R0 n1 n2 value

Capacitor: C0 n1 n2 value

Inductor: L0 n1 n2 value

Voltage source

Constant source (DC): V0 n1 n2 dc=value

PWL source (time varying): V0 n1 n2 PWL(t1 v1 t2 v2 t3 v3...)

Current source

Constant source (DC): I0 n1 n2 dc=value

PWL source (time varying): I0 n1 n2 PWL(t1 i1 t2 i2 t3 i3...)

* Analysis

Transient only: .tran <tstep> <tstop>

** Outputs

A log file describing the various phases executed by the simulator

A waveform file made of all the values of all the unknowns (currents and voltages) evaluated by the simulator for every computed timestep. 

The output format is a CSV file as shown below

For a N1 node, the voltage values v(N1) at successive times chosen by the simulator are saved with the following format. The x axis is Time, the y axis is Voltage.

.HEADER

..NAMES
Time,v(N1)

..UNITS
s,Voltage(V)

.DATA

All unknowns are dumped in the same CSV file
