# ise-basys2-project

A default project and project creator for Digilent's Basys2 Xilinx Spartan-3E development boards.

To create a new project folder for the first time, do the following:

Set your working directory to `ise-basys2-project`
```
python create-new-project.py "project name"
```

Your project is created in a new directory `project_name` in the `ise-basys2-project` directory. The script checks if a file or directory exists with the desired name and cleanly exits with no filesystem modifications in the case of a conflict. You must run the project creation script from within the `ise-basys2-project` directory. The project's name must be a valid VHDL-1993 architecture identifier when spaces are replaced with underscores.

Alternatively, the project creation script can be made executable:

```
chmod +x create-new-project.py
```
