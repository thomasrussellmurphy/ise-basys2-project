# ise-basys2-project

A default project and project creator for Digilent's Basys2 Xilinx Spartan-3E
development boards.

To create a new project folder for the first time, do the following:

Set your working directory to `ise-basys2-project`
```
python create-new-project.py "project name"
```

Your project is created in a new directory `project_name` in the
`ise-basys2-project` directory. The script checks if a file or directory exists
with the desired name and cleanly exits with no filesystem modifications in the
case of a conflict. You must run the project creation script from within the
`ise-basys2-project` directory. The project's name must be a valid VHDL-1993
architecture identifier when spaces are replaced with underscores.

Alternatively, the project creation script can be made executable:

```
chmod +x create-new-project.py
```

If you are planning on using Git to do version control of your ISE project,
[this `.gitignore`][ise-gitignore] may help you substantially. A version of this
file is the `.gitignore` for this repository.

[ise-gitignore]: https://github.com/thomasrussellmurphy/trm-snippets/blob/master/gitignores/xilinx_ise_project-.gitignore

# Important ISE Settings

## FPGA Start-Up Clock

The default clock source defined in the bitstream file for the FPGA on startup
is `CCLK`. This is the correct clock source if the design will programmed onto
the Basys2 Platform Flash. However, this is not the clock source that you want
during development.

For direct loading from Adept2 onto the Spartan 3E FPGA, the startup clock needs
to be changed to `JTAG Clock`. To do this, select the top-level design file
listed under the FPGA device name in the Hierarchy pane of the Design sidebar in
Xilinx ISE. Then right-click the design process `Generate Programming File` and
select the `Process Properties...` option. In the windows that opens, select the
`Startup Options` category on the left. The first item in the list should be the
property `FPGA Start-Up Clock`. In the drop-down menu for this property, select
the value `JTAG Clock` to override the default `CCLK`. To save this change,
click either the `OK` or `Apply` buttons at the bottom of the options window.

## Target Device

The default device for the Basys2 development board is the Spartan 3E `XC3S100E`
in the CP132 package with a speed grade -5. The Basys2 board also comes in a
version with a larger, 250k logic gate FPGA that requires a different device
setting in the ISE project.

To change the device density, open the Design sidebar in Xilinx ISE. In the
Hierarchy pane, right click the FPGA device name and select the `Design
Properties...` option. In the list of project settings, the `Device` field can
be set from the drop-down menu. The valid options for the Basys2 are `XC3S100E`
and `XC3S250E`. To save this change, click the `OK` button at the bottom of the
settings window.
