#-------------------------------------------------------------------------------
# Approximationen von Verteilungen
#-------------------------------------------------------------------------------

# Aufgabe 1: X ist Poisson verteilt mit lambda = 10. 

# Frage 1: Wie hoch ist die Wahrscheinlichkeit für X = 7?
lam <- 10
# 1) Berechnen Sie die Wahrscheinlichkeit mit Hilfe der Poisson Verteilung.
dpois(x = 7, lambda = lam)

# 2) Approximieren Sie die Wahrscheinlichkeit mit Hilfe der Normalverteilung. 
# Nutzen Sie die Stetigkeitskorrektur

# Folie 102, Approximationsvoraussetzungen sind erfüllt, lambda >= 10
# diskret P(X = 7) --> Stetigkeitskorrektur P(6.5 <= X <= 7.5)  
# P(6.5 <= X <= 7.5)  = P(X <= 7.5) - P(X <= 6.5)

pnorm(7.5, mean = lam, sd = sqrt(lam)) - pnorm(6.5, mean = lam, sd = sqrt(lam))

# Frage 2: Wie hoch ist die Wahrscheinlichkeit für X <= 7?

# 1) Berechnen Sie die Wahrscheinlichkeit mit Hilfe der Poisson Verteilung.
ppois(q = 7, lambda = lam)

# 2) Berechnen Sie die Wahrscheinlichkeit mit Hilfe der Normalverteilung. 
# Nutzen Sie die Stetigkeitskorrektur

# Folie 102, Approximationsvoraussetzungen sind erfüllt, lambda >= 10
# Stetigkeitskorrektur - P(X <= 7.5)
pnorm(q = 7.5, mean = lam, sd = sqrt(lam))

#-------------------------------------------------------------------------------

# X ist Binomal verteilt mit n = 20 und pi = 0.4. 

# Frage 1: Wie hoch ist die Wahrscheinlichkeit für X = 13?

n <- 20
p <- 0.4

# 1) Berechnen Sie die Wahrscheinlichkeit mit Hilfe der Binomialverteilung.
dbinom(13, size=n, prob=p)

# 2) Approximieren Sie die Wahrscheinlichkeit mit Hilfe der Normalverteilung. 
# Nutzen Sie die Stetigkeitskorrektur
# Stetigkeitskorrektung: P(12.5 <= X <= 13.5) 

# Die Approximationsvoraussetzungen sind nicht erfüllt, darum darf man die 
# Normalverteilung dafür nicht nutzen

n*p*(1-p) # n*p*(1-p) muss >= 10 sein, Folie 102

# Wenn man aber trotzdem die Normalverteilung nutzen würde, so sieht die Rechnung aus:
pnorm(13.5, mean = n*p, sd = sqrt(n*p*(1-p))) - pnorm(12.5, mean = n*p, sd = sqrt(n*p*(1-p)))
# In diesem Fall, wenn eine Punktwahrscheinlichkeit X = 13 approximiert wird, 
# ist das Ergebnis durch die Normalverteilung nicht viel schlechter als
# die echte Berechnung mit der Binomialverteilung

# Frage 2: Wie hoch ist die Wahrscheinlichkeit für X zwischen 10 und 17?

# 1) Berechnen Sie die Wahrscheinlichkeit mit Hilfe der Binomialverteilung.
# P(10 < X < 17) = P(X <= 16) - P(X <= 10)
pbinom(16, size=n, prob=p) - pbinom(10, size=n, prob=p)

# 2) Approximieren Sie die Wahrscheinlichkeit mit Hilfe der Normalverteilung. 
# Nutzen Sie die Stetigkeitskorrektur

# Stetigkeitskorrektur: P(9.5 <= X <= 16.5), Folie 102

# Die Approximationsvoraussetzungen sind nicht erfüllt, darum darf man die 
# Normalverteilung dafür nicht nutzen
n*p*(1-p) # n*p*(1-p) muss >= 10 sein.

# Wenn man aber trotzdem die Normalverteilung nutzen würde, so sieht die Rechnung aus:
pnorm(16.5, mean = n*p, sd = sqrt(n*p*(1-p))) - pnorm(9.5, mean = n*p, sd = sqrt(n*p*(1-p)))
# -- > sehr großer Unterschied zu dem echten Berechnungswert mit der Binomialverteilung, 
# weil die Approximationsvoraussetzunge nicht erfüllt sind, da ein großes Intervall
# P(9.5 <= X <= 16.5) in die Berechnung eingeht.