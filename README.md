# OpenMC SMART Reactor Core Model

This repository contains the input files and scripts needed to run OpenMC simulations of the System-integrated Modular Advanced Reactor (SMART) core. The SMART reactor is a small modular nuclear reactor developed by the Korea Atomic Energy Research Institute (KAERI). It is a pressurized water reactor (PWR) that uses low-enriched uranium as fuel. It has an electric output of around 330 MW, with a thermal output of up to 600 MW. The reactor is designed to be modular, meaning it can be constructed in a factory and transported to the site of operation. This allows for quicker and cheaper deployment compared to traditional nuclear power plants. One of the key features of the SMART reactor is its advanced safety systems, which are designed to automatically shut down the reactor in the event of an emergency. The SMART reactor also has a passive cooling system that does not require external power to operate, making it less vulnerable to power outages. Overall, the SMART reactor is intended to be a flexible and safe source of nuclear energy for a variety of applications.

## Setup
To run the simulations in this repository, you will need to have OpenMC installed on your machine. Please refer to the [OpenMC documentation](https://openmc.readthedocs.io/en/stable/) for instructions on how to install and set up OpenMC.

Once you have OpenMC installed, you can clone this repository to your local machine using the following command:

```sh
git clone https://github.com/saad589/smart.git
```

## Running Simulations
To run a simulation, navigate to the directory containing the input files and run the following command:

```sh
openmc
```

This will execute the default simulation defined in the `.xml` files. You can modify the input parameters in this file to customize the simulation.

## Output

The results of the simulation will be written to the `statepoint.{n}.h5` and `summary.h5` files, where `{n}` is the current batch number. You can use the `openmc.plot_geometry()` and o`penmc.plot_flat_source()` functions to visualize the geometry and energy distribution of the simulated SMART reactor core.

![SMART Core](/smart_xy_plot.png "SMART Core")
*SMART Core*

## Additional resources
For more information on the SMART reactor, please visit the [KAERI website](https://www.kaeri.re.kr/eng/rnd/rd_rd_01.jsp).

For more information on using OpenMC and interpreting the results of your simulations, please refer to the [OpenMC documentation](https://openmc.readthedocs.io/en/stable/).

If you have any questions or encounter any issues while using this repository, please open an issue on GitHub or contact the repository maintainer.

## License 
[GPL](https://github.com/saad589/smart/blob/master/LICENSE)
