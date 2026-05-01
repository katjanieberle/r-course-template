#-------------------------------------------------------------------------------
# wo bin ich?
#-------------------------------------------------------------------------------

getwd()
#-------------------------------------------------------------------------------
# vergleiche !

dim(read.csv2("data//input//oktoberfest.csv"))

dff <- read.csv2("data//input//oktoberfest.csv", sep=",")
dff
#-------------------------------------------------------------------------------

# 1. Analysiere den Data Frame

# 2. Überlege dir 10 verschiedene Fragestellungen und beantworte diese mit Hilfe deines Codes

# 1) In welchem Jahr der größte Bierkonsum?
max_bier_konsum <- max(dff$bier_konsum)
max_bier_konsum
dff[dff$bier_konsum == max_bier_konsum,]

paste("Im Jahr", dff[dff$bier_konsum == max_bier_konsum,"jahr"], 
      "war der Bierkonsum maximal und lag bei ", max_bier_konsum, "Liter", sep =" ")

# 2) Wie lange hat das Oktoberfest maximal gedauert?
max(dff$dauer)

paste("Das längste Oktoberfest hat ", max(dff$dauer), " Tage gedauert", sep = " ")

# 3) Wie viele Hendl wurden durchschnittlich konsumiert?
mean(dff$hendl_konsum)

# 4) was war der niedrigste Hendl-Preis?
min(as.numeric(dff$hendl_preis))

# 5) Wann erreichte die Besucherzahl ihr Maximum (Jahr) ?

# 2023 
max_besucheranzahl <- max(as.numeric(dff$besucher_gesamt))
max_besucheranzahl
dff[as.numeric(dff$besucher_gesamt) == max_besucheranzahl,]

# 6) In welchem Jahr war das Bier am teuersten?
max(as.numeric(dff$bier_preis))

# 7) Durchschnittliche Besucheranzahl gesamt
mean(as.numeric(dff$besucher_gesamt))

# 8) Preisanstieg vom Bierpreis von 1985 bis 2024 

# absolute Veränderung

as.numeric(dff$bier_preis)[38] - as.numeric(dff$bier_preis)[1]

as.numeric(dff$bier_preis)[dim(dff)[1]] - as.numeric(dff$bier_preis)[1]

# relative Veränderung

as.numeric(dff$bier_preis)[38]/as.numeric(dff$bier_preis)[1]


# 9) In welchem Jahr war das Bier am günstigsten?

min_bier_preis <- min(as.numeric(dff$bier_preis))

dff[as.numeric(dff$bier_preis) == min_bier_preis,"jahr"]

# 10) Korrelation (Zusammenhang) zwischen Hendl Konsum und Bierkonsum: 
# Negativer/gegenläufiger Zusammenhang

plot(x=dff$jahr, y=dff$bier_konsum, type="l")

plot(x=dff$jahr, y=dff$bier_preis, type="l")

plot(x=dff$jahr, y=dff$hendl_konsum, type="l")

# Korrelationskoeffizient nach Bravais-Pearson
# ?cor
cor(dff$hendl_konsum, dff$bier_konsum)

# 3. Visualisiere den Bierkonsum und Bierpreise, sowie Hendlkonsum und Hendlpreise

#-------------------------------------------------------------------------------

par(mar = c(5, 4, 4, 5) + 0.1)

plot(dff$jahr, dff$bier_konsum,
     type = "l", col = "blue", lwd = 2,
     xlab = "Jahr", ylab = "Bierkonsum",
     axes = FALSE)

axis(1)
axis(2, col = "blue", col.axis = "blue")
box()

par(new = TRUE)

plot(dff$jahr, as.numeric(dff$bier_preis),
     type = "l", col = "red", lwd = 2,
     axes = FALSE, xlab = "", ylab = "",
     ylim = range(as.numeric(dff$bier_preis), na.rm = TRUE))

axis(4, col = "red", col.axis = "red")
mtext("Bierpreis", side = 4, line = 3, col = "red")

legend("topleft",
       legend = c("Bierkonsum", "Bierpreis"),
       col = c("blue", "red"),
       lwd = 2,
       bty = "n")
#-------------------------------------------------------------------------------

# Generiere 1000 binomialverteilten Zufallsvariablen mit p = 0.15 und stelle sie grafisch dar

#-------------------------------------------------------------------------------

# Generiere 1000 poissonverteilten Zufallsvariablen mit lambda = 1.2 und stelle sie grafisch dar

#-------------------------------------------------------------------------------
