load(file="data//input//screen_study.Rdata")
head(screen_study)

median(screen_study$screen_time)
mean(screen_study$age)

summary(screen_study)
dim(screen_study)

n <- length(screen_study$screen_time)
n
xbar <- mean(screen_study$screen_time)
xbar
ybar <- mean(screen_study$test_rslt)
ybar
xvar <- var(screen_study$screen_time)
xvar
xycov <- cov(screen_study$screen_time, screen_study$test_rslt)
xycov

xycor <- cor(screen_study$screen_time, screen_study$test_rslt)
xycor  


# starker negativer Zusammenhang 
# zwischen Screen Time (Zeit am Handy) und Testergebnissen
beta1 <- xycov/xvar
beta0 <- ybar - beta1 * xbar

print(c(beta0, beta1))

# test_rslt (y) = beta_0 + beta_1*screen_time (x)
# test_rslt (y) = 101.74 - 4.96*screen_time (x)

# Pro 1 Std screen_time verschlechtert sich das Testresultat um 4.96 Punkte
# wenn screen_time = 0 wäre, dann beträge das Testresultat 101.74 Punkte
# Es macht nur bedingt Sinn, weil die maximale Punktezahl = 100 ist.

lm(screen_study$test_rslt ~ screen_study$screen_time)

# Intercept --> Regressionskonstante - der wert dazu ist beta_0
mod <- lm(test_rslt ~ screen_time, data = screen_study)

summary(mod)

# Residuals = Fehlerterme = Abweichung zwischen Reg.Gerade und Datenpunkten
# man könnte eine Symmetriebewertung durchführen. 
# "Gute" Residuen sind symmetrisch mit Median und Mean ca. 0

# Coefficients:
# -- Estimate +/- Std. Error:
# -- beta_0: 101.74 +/- 5.03
# -- beta_1: -4.96 +/- 0.98

# t value: Kritische Schranke in einem t-test 
# auf Signifikanz (Korrektheit) der Regressionskoeffizienten

# Pr(> |t|): Signifikanzwahrscheinlichkeit --> je kleiner, desto besser
# Probability - Pr
# |t| - der Betrag von t value
# Je kleiner Pr(> |t|), desto signifikanter (verlässlicher/korrekter) 
# die Regressionskoeffizienten (Spalte Estimate) sind

# Multiple R-squared: 0.4767 - das Bestimmtheitsmaß R^2 
# ca. 47 % der Streuung in y (test_rslt) kann man durch x (screen_time) erklären
# Adjusted R-squared - Adjustiertes Bestimmtheitsmaß - genauer als "normale" R^2
# Bewertet die Relation zwischen der Anzahl an Regressoren und der Stichprobengröße
# - je größer die Stichprobe, desto genauer das Ergebnis
# - pro unabhängige Variable empfiehlt sich mind. 30 Beobachtungen

# F- statistic: 
# Es wird ein Modell mit nur Beta_0 mit dem vollständigen Modell verglichen

# H0 Modell: y = beta_0 
# H1 Modell: y = beta_0 + beta_1*x

# p-value: 2.419e-05 bedeutet, dass H1 Modell besser ist, also H0 Modell
# generell je kleiner p-value, desto besser

# zweites Regressionsmodell
# - screen_time
# - age

mod2 <- lm(test_rslt ~ screen_time + age, data = screen_study)

summary(mod2)



