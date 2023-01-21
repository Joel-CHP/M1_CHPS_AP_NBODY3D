CFLAGS=-march=native -g3 

OFLAGS=-fopenmp -fno-unroll-loops -fno-tree-vectorize
OFLAGS_unroll=-fopenmp -funroll-loops -fno-tree-vectorize
OFLAGS_vecto=-fopenmp -funroll-loops -ftree-vectorize
OFLAGS_gcc=-fopt-info-all=nbody_V01.gcc.optrpt

all: exe_nbody_V00_gcc_O0 exe_nbody_V00_clang_O0 exe_nbody_V00_icx_O0 exe_nbody_V01_gcc_O0 exe_nbody_V01_clang_O0 exe_nbody_V01_icx_O0 exe_nbody_V02_gcc_O0 exe_nbody_V02_clang_O0 exe_nbody_V02_icx_O0 exe_nbody_V03_gcc_O0 exe_nbody_V03_clang_O0 exe_nbody_V03_icx_O0 exe_nbody_V04_gcc_O0 exe_nbody_V04_clang_O0 exe_nbody_V04_icx_O0 exe_nbody_V05_gcc_O0 exe_nbody_V05_clang_O0 exe_nbody_V05_icx_O0 exe_nbody_V06_gcc_O0 exe_nbody_V06_clang_O0 exe_nbody_V06_icx_O0 exe_nbody_V07_gcc_O0 exe_nbody_V07_clang_O0 exe_nbody_V07_icx_O0 exe_nbody_V00_gcc_O2 exe_nbody_V00_clang_O2 exe_nbody_V00_icx_O2 exe_nbody_V01_gcc_O2 exe_nbody_V01_clang_O2 exe_nbody_V01_icx_O2 exe_nbody_V02_gcc_O2 exe_nbody_V02_clang_O2 exe_nbody_V02_icx_O2 exe_nbody_V03_gcc_O2 exe_nbody_V03_clang_O2 exe_nbody_V03_icx_O2 exe_nbody_V04_gcc_O2 exe_nbody_V04_clang_O2 exe_nbody_V04_icx_O2 exe_nbody_V05_gcc_O2 exe_nbody_V05_clang_O2 exe_nbody_V05_icx_O2 exe_nbody_V06_gcc_O2 exe_nbody_V06_clang_O2 exe_nbody_V06_icx_O2 exe_nbody_V07_gcc_O2 exe_nbody_V07_clang_O2 exe_nbody_V07_icx_O2 exe_nbody_V00_gcc_Ofast exe_nbody_V00_clang_Ofast exe_nbody_V00_icx_Ofast exe_nbody_V01_gcc_Ofast exe_nbody_V01_clang_Ofast exe_nbody_V01_icx_Ofast exe_nbody_V02_gcc_Ofast exe_nbody_V02_clang_Ofast exe_nbody_V02_icx_Ofast exe_nbody_V03_gcc_Ofast exe_nbody_V03_clang_Ofast exe_nbody_V03_icx_Ofast exe_nbody_V04_gcc_Ofast exe_nbody_V04_clang_Ofast exe_nbody_V04_icx_Ofast exe_nbody_V05_gcc_Ofast exe_nbody_V05_clang_Ofast exe_nbody_V05_icx_Ofast exe_nbody_V06_gcc_Ofast exe_nbody_V06_clang_Ofast exe_nbody_V06_icx_Ofast exe_nbody_V07_gcc_Ofast exe_nbody_V07_clang_Ofast exe_nbody_V07_icx_Ofast

exe_nbody_V00_gcc_O0: sources/nbody_V00.c
	gcc -O0 $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V00_clang_O0: sources/nbody_V00.c
	clang -O0 $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V00_icx_O0: sources/nbody_V00.c
	icx -O0 $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V01_gcc_O0: sources/nbody_V01.c
	gcc -O0 $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V01_clang_O0: sources/nbody_V01.c
	clang -O0 $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V01_icx_O0: sources/nbody_V01.c
	icx -O0 $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V02_gcc_O0: sources/nbody_V02.c
	gcc -O0 $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V02_clang_O0: sources/nbody_V02.c
	clang -O0 $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V02_icx_O0: sources/nbody_V02.c
	icx -O0 $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V03_gcc_O0: sources/nbody_V03.c
	gcc -O0 $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V03_clang_O0: sources/nbody_V03.c
	clang -O0 $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V03_icx_O0: sources/nbody_V03.c
	icx -O0 $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V04_gcc_O0: sources/nbody_V04.c
	gcc -O0 $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V04_clang_O0: sources/nbody_V04.c
	clang -O0 $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V04_icx_O0: sources/nbody_V04.c
	icx -O0 $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V05_gcc_O0: sources/nbody_V05.c
	gcc -O0 $(CFLAGS) $(OFLAGS_unroll) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V05_clang_O0: sources/nbody_V05.c
	clang -O0 $(CFLAGS) $(OFLAGS_unroll) $< -o $@ -lm
exe_nbody_V05_icx_O0: sources/nbody_V05.c
	icx -O0 $(CFLAGS) $(OFLAGS_unroll) $< -o $@ -lm

exe_nbody_V06_gcc_O0: sources/nbody_V06.c
	gcc -O0 $(CFLAGS) $(OFLAGS_vecto) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V06_clang_O0: sources/nbody_V06.c
	clang -O0 $(CFLAGS) $(OFLAGS_vecto) $< -o $@ -lm
exe_nbody_V06_icx_O0: sources/nbody_V06.c
	icx -O0 $(CFLAGS) $(OFLAGS_vecto) $< -o $@ -lm

exe_nbody_V07_gcc_O0: sources/nbody_V07.c
	gcc -O0 $(CFLAGS) $(OFLAGS_vecto) $(OFLAGS_gcc) -mavx2 $< -o $@ -lm
exe_nbody_V07_clang_O0: sources/nbody_V07.c
	clang -O0 $(CFLAGS) $(OFLAGS_vecto) -mavx2 $< -o $@ -lm
exe_nbody_V07_icx_O0: sources/nbody_V07.c
	icx -O0 $(CFLAGS) $(OFLAGS_vecto) -mavx2 $< -o $@ -lm

exe_nbody_V00_gcc_O2: sources/nbody_V00.c
	gcc -O2 $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V00_clang_O2: sources/nbody_V00.c
	clang -O2 $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V00_icx_O2: sources/nbody_V00.c
	icx -O2 $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V01_gcc_O2: sources/nbody_V01.c
	gcc -O2 $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V01_clang_O2: sources/nbody_V01.c
	clang -O2 $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V01_icx_O2: sources/nbody_V01.c
	icx -O2 $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V02_gcc_O2: sources/nbody_V02.c
	gcc -O2 $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V02_clang_O2: sources/nbody_V02.c
	clang -O2 $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V02_icx_O2: sources/nbody_V02.c
	icx -O2 $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V03_gcc_O2: sources/nbody_V03.c
	gcc -O2 $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V03_clang_O2: sources/nbody_V03.c
	clang -O2 $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V03_icx_O2: sources/nbody_V03.c
	icx -O2 $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V04_gcc_O2: sources/nbody_V04.c
	gcc -O2 $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V04_clang_O2: sources/nbody_V04.c
	clang -O2 $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V04_icx_O2: sources/nbody_V04.c
	icx -O2 $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V05_gcc_O2: sources/nbody_V05.c
	gcc -O2 $(CFLAGS) $(OFLAGS_unroll) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V05_clang_O2: sources/nbody_V05.c
	clang -O2 $(CFLAGS) $(OFLAGS_unroll) $< -o $@ -lm
exe_nbody_V05_icx_O2: sources/nbody_V05.c
	icx -O2 $(CFLAGS) $(OFLAGS_unroll) $< -o $@ -lm

exe_nbody_V06_gcc_O2: sources/nbody_V06.c
	gcc -O2 $(CFLAGS) $(OFLAGS_vecto) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V06_clang_O2: sources/nbody_V06.c
	clang -O2 $(CFLAGS) $(OFLAGS_vecto) $< -o $@ -lm
exe_nbody_V06_icx_O2: sources/nbody_V06.c
	icx -O2 $(CFLAGS) $(OFLAGS_vecto) $< -o $@ -lm

exe_nbody_V07_gcc_O2: sources/nbody_V07.c
	gcc -O2 $(CFLAGS) $(OFLAGS_vecto) $(OFLAGS_gcc) -mavx2 $< -o $@ -lm
exe_nbody_V07_clang_O2: sources/nbody_V07.c
	clang -O2 $(CFLAGS) $(OFLAGS_vecto) -mavx2 $< -o $@ -lm
exe_nbody_V07_icx_O2: sources/nbody_V07.c
	icx -O2 $(CFLAGS) $(OFLAGS_vecto) -mavx2 $< -o $@ -lm

exe_nbody_V00_gcc_Ofast: sources/nbody_V00.c
	gcc -Ofast $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V00_clang_Ofast: sources/nbody_V00.c
	clang -Ofast $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V00_icx_Ofast: sources/nbody_V00.c
	icx -Ofast $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V01_gcc_Ofast: sources/nbody_V01.c
	gcc -Ofast $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V01_clang_Ofast: sources/nbody_V01.c
	clang -Ofast $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V01_icx_Ofast: sources/nbody_V01.c
	icx -Ofast $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V02_gcc_Ofast: sources/nbody_V02.c
	gcc -Ofast $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V02_clang_Ofast: sources/nbody_V02.c
	clang -Ofast $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V02_icx_Ofast: sources/nbody_V02.c
	icx -Ofast $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V03_gcc_Ofast: sources/nbody_V03.c
	gcc -Ofast $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V03_clang_Ofast: sources/nbody_V03.c
	clang -Ofast $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V03_icx_Ofast: sources/nbody_V03.c
	icx -Ofast $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V04_gcc_Ofast: sources/nbody_V04.c
	gcc -Ofast $(CFLAGS) $(OFLAGS) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V04_clang_Ofast: sources/nbody_V04.c
	clang -Ofast $(CFLAGS) $(OFLAGS) -fno-unroll-loops $< -o $@ -lm
exe_nbody_V04_icx_Ofast: sources/nbody_V04.c
	icx -Ofast $(CFLAGS) $(OFLAGS) $< -o $@ -lm

exe_nbody_V05_gcc_Ofast: sources/nbody_V05.c
	gcc -Ofast $(CFLAGS) $(OFLAGS_unroll) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V05_clang_Ofast: sources/nbody_V05.c
	clang -Ofast $(CFLAGS) $(OFLAGS_unroll) $< -o $@ -lm
exe_nbody_V05_icx_Ofast: sources/nbody_V05.c
	icx -Ofast $(CFLAGS) $(OFLAGS_unroll) $< -o $@ -lm

exe_nbody_V06_gcc_Ofast: sources/nbody_V06.c
	gcc -Ofast $(CFLAGS) $(OFLAGS_vecto) $(OFLAGS_gcc) $< -o $@ -lm
exe_nbody_V06_clang_Ofast: sources/nbody_V06.c
	clang -Ofast $(CFLAGS) $(OFLAGS_vecto) $< -o $@ -lm
exe_nbody_V06_icx_Ofast: sources/nbody_V06.c
	icx -Ofast $(CFLAGS) $(OFLAGS_vecto) $< -o $@ -lm

exe_nbody_V07_gcc_Ofast: sources/nbody_V07.c
	gcc -Ofast $(CFLAGS) $(OFLAGS_vecto) $(OFLAGS_gcc) -mavx2 $< -o $@ -lm
exe_nbody_V07_clang_Ofast: sources/nbody_V07.c
	clang -Ofast $(CFLAGS) $(OFLAGS_vecto) -mavx2 $< -o $@ -lm
exe_nbody_V07_icx_Ofast: sources/nbody_V07.c
	icx -Ofast $(CFLAGS) $(OFLAGS_vecto) -mavx2 $< -o $@ -lm

clean:
	rm -Rf *~ exe_* *.optrpt

cleancsv:
	rm -Rf sorties/*.csv

# "-march=native" ==> causes the compiler to auto-detect the architecture of the build computer. If the auto-detect is unsuccessful the option has no effect.

# "-g3" ==> Request debugging information and also use level to specify how much information. Level 3 includes extra information compared to level 2, such as all the macro definitions present in the program. 

# -fopenmp ==> Enable handling of OpenMP directives "#pragma omp" in C/C++ and "!$omp" in Fortran.  When -fopenmp is specified, the compiler generates parallel code according to the OpenMP Application Program Interface v4.5 <https://www.openmp.org>.  This option implies -pthread, and thus is only supported on targets that have support for -pthread. -fopenmp implies -fopenmp-simd.

# "-fopt-info-options=filename" ==> Controls optimization dumps from various optimization passes. If the -options form is used, options is a list of - separated option keywords to select the dump details and optimizations. Option "all" ==> Print detailed optimization information. This includes optimized, missed, and note.

# -fno-tree-vectorize ==> Disable vectorization.

