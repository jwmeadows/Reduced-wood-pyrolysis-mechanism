**A reduced wood pyrolysis mechanism to estimate solid and gas parameters**

This Jupyter notebook provides the source code for the development of a reduced wood pyrolysis mechanism that can account for solid phase mass loss and gas phase heat release. The code leverages simultaneous thermal analyzer (STA) and gas chromatograhy (GC) experiments conducted at the Extreme lab at Virginia Tech to construct a three-step pyrolysis mechanism. Using the experiments, model fitting algorithms, and least-square minimizations, this reduced mechanism can output pyrolysis (solid phase) mass loss rates, pyrolysis (solid phase) energies of decomposition, and gas phase composition, heat release rates. The mechanism was validated using experiments conducted across three different heating rates (5, 10, and 20 K/min). Additional information about experiments and model development is provided in the following publication:

Banagiri S., Parameswaran M., Khadakkar I., Meadows J., Lattimer B. Y., A reduced wood pyrolysis mechanism for evaluating solid and gas phase parameters, Fuel 381 (2025) 133416, https://doi.org/10.1016/j.fuel.2024.133416.

**Usage Instructions:**

This code is meant to be provide a framework for developing pyrolysis mechanisms for various composite materials. The various quantitative parameters derived using the code are meant for mixed hardwood species only. However, researchers can use the algorithms provided here in conjunction with micro-scale experiments to obtain pyrolysis parameters for specific materials.
