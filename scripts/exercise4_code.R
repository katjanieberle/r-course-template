#-------------------------------------------------------------------------------
# Gleichverteilung
#-------------------------------------------------------------------------------
#p - Verteilungsfunktion
#d - Dichtefunktion
#r - Zufallszahlen generieren
#q - Quantile

# unif
# norm
# Sei X stetig gleichverteilt auf [2,6]. 
#
# 1) Wie hoch ist die Wahrscheinlichkeit P(3 ≤ X ≤ 5)?

# P(X <= 5) - P(X <= 3) = 
punif(q = 5, min = 2, max = 6) - punif(q = 3, min=2, max=6)

# 2) Wie hoch ist die Wahrscheinlichkeit P(2 < X < 7)?
punif(q = 7, min = 2, max = 6) - punif(q = 2, min=2, max=6)

# 3) Wie hoch ist die Wahrscheinlichkeit P(4 < X < 5.4)?
punif(q = 5.4, min = 2, max = 6) - punif(q = 4, min=2, max=6)

# 4) Wie groß ist der Erwartungswert E(X) und die Varianz V(X)?
# (a+b)/2
expct_value <- (2+6)/2
expct_value

# (b-a)^2/12
var_value <- (6 - 2)^2/12
var_value

#-------------------------------------------------------------------------------
# Normalverteilung 
#-------------------------------------------------------------------------------
# Der Körpergröße einer erwachsenen Bevölkerungsgruppe kann näherungsweise 
# eine Normalverteilung mit Mittelwert 175 cm und Standardabweichung 7 cm
# zugeschrieben werden. 

# 1) Wie hoch ist der Anteil an Personen mit der Körpergröße zwischen 168 cm und 180 cm?
# P(X <= 180) - P(X <= 168)
pnorm(q=180, mean = 175, sd = 7) - pnorm(q=168, mean = 175, sd = 7) 

# 2) Wie hoch ist der Anteil an Personen mit der Körpergröße > 180 cm?
# P(X > 180) = 1 - P(X <= 180)
1 - pnorm(q = 180, mean = 175, sd = 7) 

# 3) Wie hoch ist der Anteil an Personen mit der Körpergröße < 160 cm?
# P(X < 160)
pnorm(q = 160, mean = 175, sd = 7) 
#-------------------------------------------------------------------------------
# Normalverteilung 
#-------------------------------------------------------------------------------
# Gegeben ist die normal verteilte Zufallsvariable X ~ N(10, 4)
# 1. Simulieren Sie 1000 N(10,4) verteilten Zufallsvariablen
?rnorm
set.seed(454564)
zv_10_4 <- rnorm(n = 1000, mean = 10, sd = 2)

# 2. Bilden Sie aus den 1000 Variablen (Schritt 1) die standardnormal verteilten 
# Zufallsvariablen Z
zv_0_1 <- (zv_10_4 - 10)/2

# 3. Zeigen Sie grafisch mit Hilfe eines Histogramms die Verteilungen 
# von X (Schritt 1) und Z (Schritt 2). Was stellen Sie fest?

par(mfrow=c(1,2))
hist(zv_10_4)
hist(zv_0_1)


#-------------------------------------------------------------------------------
# Gesetz der Großen Zahlen
#-------------------------------------------------------------------------------
# 0. seed Setzen

# 1. X: Simulieren Sie 100 binomial verteilte Zufallsvariablen mit size=20, prob = 0.3

set.seed(23487256)
xx <- rbinom(n = 10, size =20, prob=0.3)

# 2. Y: Simulieren Sie 1000 binomial verteilte Zufallsvariablen mit size=20, prob = 0.3
yy <- rbinom(n = 1000, size =20, prob=0.3)

# 3. Z: Simulieren Sie 100000 binomial verteilte Zufallsvariablen mit size=20, prob = 0.3
zz <- rbinom(n = 10000000, size =20, prob=0.3)

par(mfrow=c(1,3))
hist(xx)
hist(yy)
hist(zz)


# 1. X: Simulieren Sie 10 Poisson verteilte Zufallsvariablen mit lambda = 5
set.seed(23487256)
lam <- 5

xx <- rpois(n = 10, lambda = lam)

# 2. Y: Simulieren Sie 1000 Poisson verteilte Zufallsvariablen mit lambda = 5
yy <- rpois(n = 1000, lambda = lam)

# 3. Z: Simulieren Sie 100000 Poisson verteilte Zufallsvariablen mit lambda = 5
zz <- rpois(n = 10000000, lambda = lam)

par(mfrow=c(1,3))
hist(xx)
hist(yy)
hist(zz)

