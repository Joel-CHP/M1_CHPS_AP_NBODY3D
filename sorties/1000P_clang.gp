set term png size 1900,1000 enhanced font "Terminal,10"
set grid
set auto x
set style fill solid border -1
set boxwidth 0.9
set xtic rotate by -45 scale 0
set key left
set title "Comparaisons des performances selon les versions et les compilateurs (avec CLANG et 1000 corps)"

# Attribution du style histogrammes :
set style data histograms

# Délimiter les valeurs de l'axe y de 0 à la valeur maximale :
set yrange [0:*]

# Définition du format de sauvegarde de l'image :
set terminal png

# Indiquer le caractère de séparation des valeurs de la ligne :
set datafile separator ","

# Définition de l'étiquette de l'axe y :
set ylabel "Rate (GFLOP/s)"

# Nommage du fichier de sauvegarde :
set output "1000P_clang.png"

# Définition de l'étiquette de l'axe x :
# set xlabel "..."

# Afficher la colonne 1 comme étiquettes des groupes de barres (xtics(1)):
# Afficher le titre des classes de barres en haut à droite :
plot '1000P_clang.dat' using 2:xticlabels(1) ti "-O0", '' using 3:xticlabels(1) ti "-O2", '' using 4:xticlabels(1) ti "-Ofast"

# Sortie de la définition de l'étiquette de l'axe x :
unset xlabel

# Fin de la définition de la sortie
unset output

