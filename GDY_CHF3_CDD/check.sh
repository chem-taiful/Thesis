#!/bin/bash
# Prints what to compare with README.md before uploading
for d in sub mol; do
  echo "== $d"
  grep "free  energy   TOTEN" $d/OUTCAR | tail -1
  sed -n 10p $d/CHGCAR 2>/dev/null; grep -m1 -A0 "^ *140 *140 *300" $d/CHGCAR
  tail -1 $d/OSZICAR
done
