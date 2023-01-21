#! /bin/bash

# PREALABLES :
# Tri processus selon la mémoire avec : $ top -o %MEM
# Tri processus selon le CPU avec : $ top -o %CPU
# Arrêt de tous processus coûteux avec : $ kill <PID>

# Selon $ cpupower frequency-info, la fréquence peut être choisie sur cet intervalle : nous voulons la valeur maximale : "4.60 HHz". 
# Nous avons le choix entre deux governors : nous prenons "performance" pour maximiser la fréquence à "4.60 HHz".
# sudo cpupower -c all frequency-set -g performance

make

# Pinning du processus le 4ème coeur de calcul (-c 4)
# Redirection de la sortie standard dans un fichier .csv qui est créé (>)

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "EXECUTION DU PROGRAMME AVEC 1000 PARTICULES"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V00_gcc_O0 1000 >> sorties/1000P_V00_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V00_clang_O0 1000 >> sorties/1000P_V00_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V00_icx_O0 1000 >> sorties/1000P_V00_icx_O0.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V01_gcc_O0 1000 >> sorties/1000P_V01_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V01_clang_O0 1000 >> sorties/1000P_V01_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V01_icx_O0 1000 >> sorties/1000P_V01_icx_O0.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V02_gcc_O0 1000 >> sorties/1000P_V02_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V02_clang_O0 1000 >> sorties/1000P_V02_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V02_icx_O0 1000 >> sorties/1000P_V02_icx_O0.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V03_gcc_O0 1000 >> sorties/1000P_V03_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V03_clang_O0 1000 >> sorties/1000P_V03_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V03_icx_O0 1000 >> sorties/1000P_V03_icx_O0.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V04_gcc_O0 1000 >> sorties/1000P_V04_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V04_clang_O0 1000 >> sorties/1000P_V04_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V04_icx_O0 1000 >> sorties/1000P_V04_icx_O0.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V05_gcc_O0 1000 >> sorties/1000P_V05_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V05_clang_O0 1000 >> sorties/1000P_V05_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V05_icx_O0 1000 >> sorties/1000P_V05_icx_O0.csv

echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V06_gcc_O0 1000 >> sorties/1000P_V06_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V06_clang_O0 1000 >> sorties/1000P_V06_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V06_icx_O0 1000 >> sorties/1000P_V06_icx_O0.csv

echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V07_gcc_O0 1000 >> sorties/1000P_V07_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V07_clang_O0 1000 >> sorties/1000P_V07_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V07_icx_O0 1000 >> sorties/1000P_V07_icx_O0.csv

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "EXECUTION DU PROGRAMME AVEC 1000 PARTICULES"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V00_gcc_O2 1000 >> sorties/1000P_V00_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V00_clang_O2 1000 >> sorties/1000P_V00_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V00_icx_O2 1000 >> sorties/1000P_V00_icx_O2.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V01_gcc_O2 1000 >> sorties/1000P_V01_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V01_clang_O2 1000 >> sorties/1000P_V01_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V01_icx_O2 1000 >> sorties/1000P_V01_icx_O2.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V02_gcc_O2 1000 >> sorties/1000P_V02_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V02_clang_O2 1000 >> sorties/1000P_V02_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V02_icx_O2 1000 >> sorties/1000P_V02_icx_O2.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V03_gcc_O2 1000 >> sorties/1000P_V03_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V03_clang_O2 1000 >> sorties/1000P_V03_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V03_icx_O2 1000 >> sorties/1000P_V03_icx_O2.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V04_gcc_O2 1000 >> sorties/1000P_V04_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V04_clang_O2 1000 >> sorties/1000P_V04_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V04_icx_O2 1000 >> sorties/1000P_V04_icx_O2.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V05_gcc_O2 1000 >> sorties/1000P_V05_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V05_clang_O2 1000 >> sorties/1000P_V05_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V05_icx_O2 1000 >> sorties/1000P_V05_icx_O2.csv

echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V06_gcc_O2 1000 >> sorties/1000P_V06_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V06_clang_O2 1000 >> sorties/1000P_V06_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V06_icx_O2 1000 >> sorties/1000P_V06_icx_O2.csv

echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V07_gcc_O2 1000 >> sorties/1000P_V07_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V07_clang_O2 1000 >> sorties/1000P_V07_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V07_icx_O2 1000 >> sorties/1000P_V07_icx_O2.csv

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "EXECUTION DU PROGRAMME AVEC 1000 PARTICULES"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V00_gcc_Ofast 1000 >> sorties/1000P_V00_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V00_clang_Ofast 1000 >> sorties/1000P_V00_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V00_icx_Ofast 1000 >> sorties/1000P_V00_icx_Ofast.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V01_gcc_Ofast 1000 >> sorties/1000P_V01_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V01_clang_Ofast 1000 >> sorties/1000P_V01_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V01_icx_Ofast 1000 >> sorties/1000P_V01_icx_Ofast.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V02_gcc_Ofast 1000 >> sorties/1000P_V02_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V02_clang_Ofast 1000 >> sorties/1000P_V02_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V02_icx_Ofast 1000 >> sorties/1000P_V02_icx_Ofast.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V03_gcc_Ofast 1000 >> sorties/1000P_V03_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V03_clang_Ofast 1000 >> sorties/1000P_V03_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V03_icx_Ofast 1000 >> sorties/1000P_V03_icx_Ofast.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V04_gcc_Ofast 1000 >> sorties/1000P_V04_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V04_clang_Ofast 1000 >> sorties/1000P_V04_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V04_icx_Ofast 1000 >> sorties/1000P_V04_icx_Ofast.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V05_gcc_Ofast 1000 >> sorties/1000P_V05_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V05_clang_Ofast 1000 >> sorties/1000P_V05_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V05_icx_Ofast 1000 >> sorties/1000P_V05_icx_Ofast.csv

echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V06_gcc_Ofast 1000 >> sorties/1000P_V06_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V06_clang_Ofast 1000 >> sorties/1000P_V06_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V06_icx_Ofast 1000 >> sorties/1000P_V06_icx_Ofast.csv

echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V07_gcc_Ofast 1000 >> sorties/1000P_V07_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V07_clang_Ofast 1000 >> sorties/1000P_V07_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V07_icx_Ofast 1000 >> sorties/1000P_V07_icx_Ofast.csv






echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "EXECUTION DU PROGRAMME AVEC 10000 PARTICULES"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V00_gcc_O0 10000 >> sorties/10000P_V00_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V00_clang_O0 10000 >> sorties/10000P_V00_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V00_icx_O0 10000 >> sorties/10000P_V00_icx_O0.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V01_gcc_O0 10000 >> sorties/10000P_V01_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V01_clang_O0 10000 >> sorties/10000P_V01_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V01_icx_O0 10000 >> sorties/10000P_V01_icx_O0.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V02_gcc_O0 10000 >> sorties/10000P_V02_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V02_clang_O0 10000 >> sorties/10000P_V02_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V02_icx_O0 10000 >> sorties/10000P_V02_icx_O0.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V03_gcc_O0 10000 >> sorties/10000P_V03_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V03_clang_O0 10000 >> sorties/10000P_V03_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V03_icx_O0 10000 >> sorties/10000P_V03_icx_O0.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V04_gcc_O0 10000 >> sorties/10000P_V04_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V04_clang_O0 10000 >> sorties/10000P_V04_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V04_icx_O0 10000 >> sorties/10000P_V04_icx_O0.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V05_gcc_O0 10000 >> sorties/10000P_V05_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V05_clang_O0 10000 >> sorties/10000P_V05_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V05_icx_O0 10000 >> sorties/10000P_V05_icx_O0.csv

echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V06_gcc_O0 10000 >> sorties/10000P_V06_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V06_clang_O0 10000 >> sorties/10000P_V06_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V06_icx_O0 10000 >> sorties/10000P_V06_icx_O0.csv

echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V07_gcc_O0 10000 >> sorties/10000P_V07_gcc_O0.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V07_clang_O0 1000 >> sorties/10000P_V07_clang_O0.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V07_icx_O0 1000 >> sorties/10000P_V07_icx_O0.csv

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "EXECUTION DU PROGRAMME AVEC 10000 PARTICULES"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V00_gcc_O2 10000 >> sorties/10000P_V00_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V00_clang_O2 10000 >> sorties/10000P_V00_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V00_icx_O2 10000 >> sorties/10000P_V00_icx_O2.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V01_gcc_O2 10000 >> sorties/10000P_V01_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V01_clang_O2 10000 >> sorties/10000P_V01_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V01_icx_O2 10000 >> sorties/10000P_V01_icx_O2.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V02_gcc_O2 10000 >> sorties/10000P_V02_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V02_clang_O2 10000 >> sorties/10000P_V02_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V02_icx_O2 10000 >> sorties/10000P_V02_icx_O2.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V03_gcc_O2 10000 >> sorties/10000P_V03_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V03_clang_O2 10000 >> sorties/10000P_V03_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V03_icx_O2 10000 >> sorties/10000P_V03_icx_O2.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V04_gcc_O2 10000 >> sorties/10000P_V04_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V04_clang_O2 10000 >> sorties/10000P_V04_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V04_icx_O2 10000 >> sorties/10000P_V04_icx_O2.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V05_gcc_O2 10000 >> sorties/10000P_V05_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V05_clang_O2 10000 >> sorties/10000P_V05_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V05_icx_O2 10000 >> sorties/10000P_V05_icx_O2.csv

echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V06_gcc_O2 10000 >> sorties/10000P_V06_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V06_clang_O2 10000 >> sorties/10000P_V06_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V06_icx_O2 10000 >> sorties/10000P_V06_icx_O2.csv

echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V07_gcc_O2 10000 >> sorties/10000P_V07_gcc_O2.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V07_clang_O2 10000 >> sorties/10000P_V07_clang_O2.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V07_icx_O2 10000 >> sorties/10000P_V07_icx_O2.csv

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "EXECUTION DU PROGRAMME AVEC 10000 PARTICULES"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V00_gcc_Ofast 10000 >> sorties/10000P_V00_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V00_clang_Ofast 10000 >> sorties/10000P_V00_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V00_icx_Ofast 10000 >> sorties/10000P_V00_icx_Ofast.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V01_gcc_Ofast 10000 >> sorties/10000P_V01_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V01_clang_Ofast 10000 >> sorties/10000P_V01_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V01_icx_Ofast 1000 >> sorties/10000P_V01_icx_Ofast.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V02_gcc_Ofast 10000 >> sorties/10000P_V02_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V02_clang_Ofast 10000 >> sorties/10000P_V02_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V02_icx_Ofast 10000 >> sorties/10000P_V02_icx_Ofast.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V03_gcc_Ofast 10000 >> sorties/10000P_V03_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V03_clang_Ofast 10000 >> sorties/10000P_V03_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V03_icx_Ofast 10000 >> sorties/10000P_V03_icx_Ofast.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V04_gcc_Ofast 10000 >> sorties/10000P_V04_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V04_clang_Ofast 10000 >> sorties/10000P_V04_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V04_icx_Ofast 1000 >> sorties/10000P_V04_icx_Ofast.csv
 
echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V05_gcc_Ofast 10000 >> sorties/10000P_V05_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V05_clang_Ofast 10000 >> sorties/10000P_V05_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V05_icx_Ofast 10000 >> sorties/10000P_V05_icx_Ofast.csv

echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V06_gcc_Ofast 10000 >> sorties/10000P_V06_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V06_clang_Ofast 10000 >> sorties/10000P_V06_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V06_icx_Ofast 10000 >> sorties/10000P_V06_icx_Ofast.csv

echo "  -------------NOUVELLE VERSION-------------------"
echo "-----------------------------------------------------"
echo "COMPILATEUR : GCC ==>"
taskset -c 4 ./exe_nbody_V07_gcc_Ofast 10000 >> sorties/10000P_V07_gcc_Ofast.csv
echo "COMPILATEUR : CLANG ==>"
taskset -c 4 ./exe_nbody_V07_clang_Ofast 10000 >> sorties/10000P_V07_clang_Ofast.csv
echo "COMPILATEUR : ICX ==>"
taskset -c 4 ./exe_nbody_V07_icx_Ofast 10000 >> sorties/10000P_V07_icx_Ofast.csv

make clean

rm
