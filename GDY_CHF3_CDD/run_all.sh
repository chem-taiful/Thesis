#!/bin/bash
# Put your usual VASP launch command on the next line (e.g. mpirun -np 48 vasp_std)
VASP="mpirun vasp_std"
for d in sub mol; do (cd "$d" && $VASP > vasp.out 2>&1); done
