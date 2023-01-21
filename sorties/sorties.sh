#! /bin/bash

#!! Ajout successif des noms des optimisations (et passage à la ligne) dans le même csv 
#echo -e "O1" >> optimisation_de_compilation.csv
#echo -e "O2" >> optimisation_de_compilation.csv
#echo -e "Ofast" >> optimisation_de_compilation.csv

# Ajout successif des noms des compilateurs (et passage à la ligne) dans le même csv 
echo -e "GCC" >> compilateurs.csv
echo -e "CLANG" >> compilateurs.csv
echo -e "ICX" >> compilateurs.csv

# Ajout successif des noms des versions (et passage à la ligne) dans le même csv 
echo -e "V00 INITIAL" >> versions.csv
echo -e "V01 SOA" >> versions.csv
echo -e "V02 ALIGNEMENT" >> versions.csv
echo -e "V03 NI POW NI DIV" >> versions.csv
echo -e "V04 SQRTF" >> versions.csv
echo -e "V05 DEROULAGE" >> versions.csv
echo -e "V06 VECTORISATION" >> versions.csv
echo -e "V07 INTRINSICS" >> versions.csv

# Création des colonnes spécifiques à chaque option d'optimisation
awk -F";" '{print $1}' 1000P_V00_gcc_O0.csv 1000P_V01_gcc_O0.csv 1000P_V02_gcc_O0.csv 1000P_V03_gcc_O0.csv 1000P_V04_gcc_O0.csv 1000P_V05_gcc_O0.csv 1000P_V06_gcc_O0.csv 1000P_V07_gcc_O0.csv > 1000P_gcc_O0.csv
awk -F";" '{print $1}' 1000P_V00_gcc_O2.csv 1000P_V01_gcc_O2.csv 1000P_V02_gcc_O2.csv 1000P_V03_gcc_O2.csv 1000P_V04_gcc_O2.csv 1000P_V05_gcc_O2.csv 1000P_V06_gcc_O2.csv 1000P_V07_gcc_O2.csv > 1000P_gcc_O2.csv
awk -F";" '{print $1}' 1000P_V00_gcc_Ofast.csv 1000P_V01_gcc_Ofast.csv 1000P_V02_gcc_Ofast.csv 1000P_V03_gcc_Ofast.csv 1000P_V04_gcc_Ofast.csv 1000P_V05_gcc_Ofast.csv 1000P_V06_gcc_Ofast.csv 1000P_V07_gcc_Ofast.csv > 1000P_gcc_Ofast.csv
# Fusion des csv pour un csv organisé pour être entré dans gnuplot
paste -d, versions.csv 1000P_gcc_O0.csv 1000P_gcc_O2.csv 1000P_gcc_Ofast.csv > 1000P_gcc.dat

# Création des colonnes spécifiques à chaque option d'optimisation
awk -F";" '{print $1}' 1000P_V00_clang_O0.csv 1000P_V01_clang_O0.csv 1000P_V02_clang_O0.csv 1000P_V03_clang_O0.csv 1000P_V04_clang_O0.csv 1000P_V05_clang_O0.csv 1000P_V06_clang_O0.csv 1000P_V07_clang_O0.csv > 1000P_clang_O0.csv
awk -F";" '{print $1}' 1000P_V00_clang_O2.csv 1000P_V01_clang_O2.csv 1000P_V02_clang_O2.csv 1000P_V03_clang_O2.csv 1000P_V04_clang_O2.csv 1000P_V05_clang_O2.csv 1000P_V06_clang_O2.csv 1000P_V07_clang_O2.csv > 1000P_clang_O2.csv
awk -F";" '{print $1}' 1000P_V00_clang_Ofast.csv 1000P_V01_clang_Ofast.csv 1000P_V02_clang_Ofast.csv 1000P_V03_clang_Ofast.csv 1000P_V04_clang_Ofast.csv 1000P_V05_clang_Ofast.csv 1000P_V06_clang_Ofast.csv 1000P_V07_clang_Ofast.csv > 1000P_clang_Ofast.csv
# Fusion des csv pour un csv organisé pour être entré dans gnuplot
paste -d, versions.csv 1000P_clang_O0.csv 1000P_clang_O2.csv 1000P_clang_Ofast.csv > 1000P_clang.dat

# Création des colonnes spécifiques à chaque option d'optimisation
awk -F";" '{print $1}' 1000P_V00_icx_O0.csv 1000P_V01_icx_O0.csv 1000P_V02_icx_O0.csv 1000P_V03_icx_O0.csv 1000P_V04_icx_O0.csv 1000P_V05_icx_O0.csv 1000P_V06_icx_O0.csv 1000P_V07_icx_O0.csv > 1000P_icx_O0.csv
awk -F";" '{print $1}' 1000P_V00_icx_O2.csv 1000P_V01_icx_O2.csv 1000P_V02_icx_O2.csv 1000P_V03_icx_O2.csv 1000P_V04_icx_O2.csv 1000P_V05_icx_O2.csv 1000P_V06_icx_O2.csv 1000P_V07_icx_O2.csv > 1000P_icx_O2.csv
awk -F";" '{print $1}' 1000P_V00_icx_Ofast.csv 1000P_V01_icx_Ofast.csv 1000P_V02_icx_Ofast.csv 1000P_V03_icx_Ofast.csv 1000P_V04_icx_Ofast.csv 1000P_V05_icx_Ofast.csv 1000P_V06_icx_Ofast.csv 1000P_V07_icx_Ofast.csv > 1000P_icx_Ofast.csv
# Fusion des csv pour un csv organisé pour être entré dans gnuplot
paste -d, versions.csv 1000P_icx_O0.csv 1000P_icx_O2.csv 1000P_icx_Ofast.csv > 1000P_icx.dat

# Création des colonnes spécifiques à chaque option d'optimisation
awk -F";" '{print $1}' 10000P_V00_gcc_O0.csv 10000P_V01_gcc_O0.csv 10000P_V02_gcc_O0.csv 10000P_V03_gcc_O0.csv 10000P_V04_gcc_O0.csv 10000P_V05_gcc_O0.csv 10000P_V06_gcc_O0.csv 10000P_V07_gcc_O0.csv > 10000P_gcc_O0.csv
awk -F";" '{print $1}' 10000P_V00_gcc_O2.csv 10000P_V01_gcc_O2.csv 10000P_V02_gcc_O2.csv 10000P_V03_gcc_O2.csv 10000P_V04_gcc_O2.csv 10000P_V05_gcc_O2.csv 10000P_V06_gcc_O2.csv 10000P_V07_gcc_O2.csv > 10000P_gcc_O2.csv
awk -F";" '{print $1}' 10000P_V00_gcc_Ofast.csv 10000P_V01_gcc_Ofast.csv 10000P_V02_gcc_Ofast.csv 10000P_V03_gcc_Ofast.csv 10000P_V04_gcc_Ofast.csv 10000P_V05_gcc_Ofast.csv 10000P_V06_gcc_Ofast.csv 10000P_V07_gcc_Ofast.csv > 10000P_gcc_Ofast.csv
# Fusion des csv pour un csv organisé pour être entré dans gnuplot
paste -d, versions.csv 10000P_gcc_O0.csv 10000P_gcc_O2.csv 10000P_gcc_Ofast.csv > 10000P_gcc.dat

# Création des colonnes spécifiques à chaque option d'optimisation
awk -F";" '{print $1}' 10000P_V00_clang_O0.csv 10000P_V01_clang_O0.csv 10000P_V02_clang_O0.csv 10000P_V03_clang_O0.csv 10000P_V04_clang_O0.csv 10000P_V05_clang_O0.csv 10000P_V06_clang_O0.csv 10000P_V07_clang_O0.csv > 10000P_clang_O0.csv
awk -F";" '{print $1}' 10000P_V00_clang_O2.csv 10000P_V01_clang_O2.csv 10000P_V02_clang_O2.csv 10000P_V03_clang_O2.csv 10000P_V04_clang_O2.csv 10000P_V05_clang_O2.csv 10000P_V06_clang_O2.csv 10000P_V07_clang_O2.csv > 10000P_clang_O2.csv
awk -F";" '{print $1}' 10000P_V00_clang_Ofast.csv 10000P_V01_clang_Ofast.csv 10000P_V02_clang_Ofast.csv 10000P_V03_clang_Ofast.csv 10000P_V04_clang_Ofast.csv 10000P_V05_clang_Ofast.csv 10000P_V07_clang_Ofast.csv 10000P_V06_clang_Ofast.csv > 10000P_clang_Ofast.csv
# Fusion des csv pour un csv organisé pour être entré dans gnuplot
paste -d, versions.csv 10000P_clang_O0.csv 10000P_clang_O2.csv 10000P_clang_Ofast.csv > 10000P_clang.dat

# Création des colonnes spécifiques à chaque option d'optimisation
awk -F";" '{print $1}' 10000P_V00_icx_O0.csv 10000P_V01_icx_O0.csv 10000P_V02_icx_O0.csv 10000P_V03_icx_O0.csv 10000P_V04_icx_O0.csv 10000P_V05_icx_O0.csv 10000P_V06_icx_O0.csv 10000P_V07_icx_O0.csv > 10000P_icx_O0.csv
awk -F";" '{print $1}' 10000P_V00_icx_O2.csv 10000P_V01_icx_O2.csv 10000P_V02_icx_O2.csv 10000P_V03_icx_O2.csv 10000P_V04_icx_O2.csv 10000P_V05_icx_O2.csv 10000P_V06_icx_O2.csv 10000P_V07_icx_O2.csv > 10000P_icx_O2.csv
awk -F";" '{print $1}' 10000P_V00_icx_Ofast.csv 10000P_V01_icx_Ofast.csv 10000P_V02_icx_Ofast.csv 10000P_V03_icx_Ofast.csv 10000P_V04_icx_Ofast.csv 10000P_V05_icx_Ofast.csv 10000P_V06_icx_Ofast.csv 10000P_V07_icx_Ofast.csv > 10000P_icx_Ofast.csv
# Fusion des csv pour un csv organisé pour être entré dans gnuplot
paste -d, versions.csv 10000P_icx_O0.csv 10000P_icx_O2.csv 10000P_icx_Ofast.csv > 10000P_icx.dat

gnuplot 1000P_gcc.gp
gnuplot 1000P_clang.gp
gnuplot 1000P_icx.gp
gnuplot 10000P_gcc.gp
gnuplot 10000P_clang.gp
gnuplot 10000P_icx.gp


