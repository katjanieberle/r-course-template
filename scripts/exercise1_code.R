# Daten laden
load("data/input/screen_study.Rdata")
screen_study

# 1. Überblick verschaffen

# Welche Spalten hat der Datensatz?
colnames(screen_study)

# Wie viele Zeilen und Spalten hat der Datensatz?
nrow(screen_study)
ncol(screen_study)

# Welche Datentypen hat jede Spalte?
str(screen_study)
class(screen_study$age)
#class(screen_study)


# Erstellen Sie einen neuen DataFrame "screen", indem Sie die letzten 3 Spalten verwenden.

screen <- data.frame(
  screen_time = screen_study$screen_time,
  age = screen_study$age,
  test_rslt = screen_study$test_rslt
)

screen <- screen_study[,c("screen_time","age","test_rslt")]

screen <- screen_study[,c(2,3,4)]

screen <- screen_study[,2:4]

screen <- drop(screen_study[,2:4])

screen <- subset(screen_study, select= c("screen_time","age","test_rslt"))

# Geben Sie den Spalten "deutsche" Namen?

# screen_time = Zeit
# age = Alter
# test_rslt = Ergebnis

colnames(screen) <- c("Zeit", "Alter","Ergebnis")
screen

# 2. Führen Sie eine deskriptive Datenanalyse durch

# Erstellen Sie eine summary vom Datensatz und beantworten folgende Fragen:

# -- Wie lange ist die Mittlere Spielzeit (Zeit) ?

mean(screen$Zeit) # durchschnittliche Wert
median(screen$Zeit) # 50%Quantil oder Zentralwert

# -- Was ist die Standardabweichung der Spielzeit?
sd(screen$Zeit)

# -- Wie alt waren im Durchschnitt die Befragten?
mean(screen$Alter)

# -- Welches Testergebnis erzielten höchstens 25% der Befragten?
summary(screen$Ergebnis)

quantile(screen$Ergebnis, probs=0.25)
# -- Welches Testergebnis erzielte die Hälfte der Befragten?
quantile(screen$Ergebnis, probs=0.5)
# -- Welches Testergebnis erzielten höchstens 75% der Befragten?
quantile(screen$Ergebnis, probs=0.75)

# -- Welches maximale und minimale Testergebnis wurde beobachtet?
min(screen$Ergebnis)
max(screen$Ergebnis)

# 3. Visualisieren Sie die Daten

# -- Erstellen Sie ein Boxplot für die Spielzeit der Befragten? Gibt es "Ausreißer"?
boxplot(screen$Zeit)
# -- Erstellen Sie ein Boxplot für das Alter der Befragten? Gibt es "Ausreißer"?
boxplot(screen$Alter)
# -- Erstellen Sie ein Boxplot für das Testergebnis der Befragten? Gibt es "Ausreißer"?
boxplot(screen$Ergebnis)

# -- Erstellen Sie ein Histogram von der Zeit und interpretieren Sie das?
hist(screen$Zeit, breaks = 3)
# -- Erstellen Sie ein Histogram vom Ergebnis und interpretieren Sie das?
hist(screen$Ergebnis)
# -- Erstellen Sie ein Histogram vom Alter und interpretieren Sie das?
hist(screen$Alter)

# -- Erstellen Sie ein Scatterplot - definieren Sie eigenstädnig die X und Y Achen.
plot(x=screen$Alter, y=screen$Ergebnis)
