# wo bin ich?

getwd()
#-------------------------------------------------------------------------------
# vergleiche !

read.csv2("data//input//oktoberfest.csv")

read.csv2("data//input//oktoberfest.csv", sep=",")
#-------------------------------------------------------------------------------

# 1. Analysiere den Data Frame

# 2. Überlege dir 10 verschiedene Fragestellungen und beantworte diese mit Hilfe deines Codes

# 3. Visualisiere den Bierkonsum und Bierpreise, sowie Hendlkonsum und Hendlpreise

#-------------------------------------------------------------------------------

# Bierkonsum und Bierpreise
dff <- read.csv2("data//input//oktoberfest.csv", sep=",")

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


# 1) In welchem Jahr der größte Bierkonsum?


# 2) Wie lange hat das Oktoberfest maximal gedauert?


# 3) Wie viele Hendl wurden durchschnittlich konsumiert?


# 4) was war der niedrigste Hendl-Preis?
# 5) Wann erreichte die Besucherzahl ihr Maximum (Jahr) ?
# 6) In welchem Jahr war das Bier am teuersten?
# 7) Durchschnittliche Besucheranzahl
# 8) Preisanstieg vom Bierpreis von 1985 bis 2024 
# 9) In welchem Jahr war das Bier am günstigsten?
# 10)Korrelation zwischen Hendl Konsum und Bierkonsum 

