#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Script for creating new project from the Basys2Project project
import os
import shutil
import sys

basys2 = "Basys2Project"

def main(argv):
    here = os.path.abspath(os.curdir)

    if (not os.path.basename(here) == 'ise-basys2-project') or (len(argv) is not 1):
        sys.stderr.write('Usage: create-new-project.py "project name"\n')
        sys.stderr.flush()
        exit(1)

    name = argv[0]
    desired_name = name.replace(" ", "_")
    # Note: no other validation performed. desired_name must be a valid
    # VHDL-1993 architecture identifier for correct behavior

    target = os.path.abspath(here + "/" + desired_name)
    try:
        os.mkdir(target)
        os.mkdir(target + '/VHD')
    except OSError as err:
        sys.stderr.write(target + " already exists. Exiting.\n")
        exit(1)

    # print target
    print("Working in " + target)
    
    # Files that need only name modification:
#     shutil.copyfile(
#         here + '/' + basys2 + '.sdc',
#         target + '/' + desired_name + '.sdc')
     
    # Files that need no modification:
    shutil.copyfile(
        here + '/' + 'Basys2Bist.ucf',
        target + '/' + 'Basys2Bist.ucf')

    # Files that need modification: .xise, .vhd
    
    # Load file strings
    xise = open(os.path.abspath(here + "/" + basys2 + ".xise"), 'r').read()
    vhd = open(os.path.abspath(here + "/" + basys2 + ".vhd"), 'r').read()

    # Modify strings
    xise = xise.replace(basys2, name)
    vhd = vhd.replace(basys2, name)

    # Open new files and write out contents
    xiseF = open(os.path.abspath(target + "/" + desired_name + ".xise"), 'w')
    vhdF = open(os.path.abspath(target + "/" + desired_name + ".vhd"), 'w')

    xiseF.write(xise)
    vhdF.write(vhd)

    for file in [xiseF, vhdF]:
        file.close()
    
    print("Done.")

if __name__ == "__main__":
    main(sys.argv[1:])
