# GDY + CHF3 charge density difference — fragment runs

Δρ = ρ(GDY+CHF3) − ρ(GDY) − ρ(CHF3), with both fragments frozen at the
relaxed complex positions (GDY_CHF3_relaxation/CONTCAR, same cell).
The complex density is CHGCAR_GDY_CHF3_DOS (already received).

| Folder | Contents | Atoms | Electrons |
|---|---|---|---|
| `sub/` | GDY sheet alone | 18 C | 72 |
| `mol/` | CHF3 alone | 1 C, 1 H, 3 F | 26 |

Static SCF only (NSW = 0). FFT grid fixed at 140 × 140 × 300 to match the
complex CHGCAR. Same ENCUT 500, PREC Accurate, 5×5×1, IVDW 11 as the complex.

## Run
1. Put your VASP command in `run_all.sh`, then `bash run_all.sh`
2. `bash check.sh` — each CHGCAR must show the grid `140 140 300`
3. Send back `sub/CHGCAR` and `mol/CHGCAR` (Drive link is fine)
