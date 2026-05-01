
# Aufgabe 1:
# In einer Fabrik sind 12 % aller produzierten Schrauben fehlerhaft. 
# Eine Stichprobe von 20 Schrauben wird entnommen.

# 1a) Wie groß ist die Wahrscheinlichkeit, dass genau 3 Schrauben fehlerhaft sind?
dbinom(3, size = 20, prob = 0.12)

# 1b) Wie groß ist die Wahrscheinlichkeit, dass höchstens 4 Schrauben fehlerhaft sind?
pbinom(4, size = 20, prob = 0.12)

# 1c) Wie viele fehlerhafte Schrauben werden mit einer Wahrscheinlichkeit 
#     von mindestens 90 % nicht überschritten?
qbinom(0.9, size = 20, prob = 0.12)

# Aufgabe 2:
# Ein Online-Shop hat eine Conversion Rate von 8 %. 
# An einem Tag besuchen 25 potenzielle Kunden die Produktseite eines neuen Artikels.

# 2a) Wie groß ist die Wahrscheinlichkeit, dass genau 2 Kunden kaufen?
dbinom(2, size = 25, prob = 0.08)

# 2b) Wie groß ist die Wahrscheinlichkeit, dass mindestens 3 Kunden kaufen?
1 - pbinom(2, size = 25, prob = 0.08)

# 2c) Der Shop-Manager möchte für 75 % der Tage genügend Ware vorhalten. 
qbinom(0.75, size = 25, prob = 0.08)

# Wie viele Verkäufe muss er mindestens einplanen?

# Aufgabe 3:
# Erfahrungswerte zeigen: 35 % aller Bewerbungsgespräche führen zu einem Jobangebot. 
# Ein Unternehmen führt in einer Woche 15 Gespräche.

# 3a) Wie groß ist die Wahrscheinlichkeit, dass genau 5 Angebote gemacht werden?
dbinom(5, size = 15, prob = 0.35)

# 3b) Mit welcher Wahrscheinlichkeit werden zwischen 4 und 7 Angebote gemacht (einschließlich)?
pbinom(7, size = 15, prob = 0.35) - pbinom(3, size = 15, prob = 0.35)

# 3c) Das HR-Team plant Ressourcen: In 95 % der Wochen sollen genügend Onboarding-Plätze verfügbar sein. 
qbinom(0.95, size = 15, prob = 0.35)

# Wie viele muss es mindestens geben?

# Aufgabe 4:
# Eine Bank schätzt, dass 5 % aller Kleinkredite ausfallen. 
# Im laufenden Quartal wurden 30 Kleinkredite vergeben.

# 4a) Wie groß ist die Wahrscheinlichkeit, dass kein einziger Kredit ausfällt?
dbinom(0, size = 30, prob = 0.05)

# 4b) Wie groß ist die Wahrscheinlichkeit, dass mehr als 3 Kredite ausfallen?
1- pbinom(3, size = 30, prob = 0.05)

# 4c) Das Risikocontrolling möchte eine Rückstellung so kalkulieren, 
# dass sie in 99 % der Fälle ausreicht. Für wie viele Ausfälle muss geplant werden?
qbinom(0.99, size = 30, prob = 0.05)

# Aufgabe 5:
# Ein Lieferant hält Liefertermine in 78 % der Fälle ein. 
# Ein Unternehmen erwartet diese Woche 18 Lieferungen von diesem Lieferanten.

# 5a) Wie groß ist die Wahrscheinlichkeit, dass genau 14 Lieferungen pünktlich sind?
dbinom(14, size = 18, prob = 0.78)

# 5b) Wie groß ist die Wahrscheinlichkeit, dass mindestens 15 Lieferungen pünktlich sind?
1- pbinom(14, size = 18, prob = 0.78)

# 5c) Der Produktionsleiter möchte wissen: In 50 % der Wochen (Median) – 
# wie viele pünktliche Lieferungen sind das mindestens?
qbinom(0.5, size = 18, prob = 0.78)

# Aufgabe 6:
# Im Kundencenter einer Bank gehen im Durchschnitt 4,5 Anrufe pro Stunde ein. 
# 6a) Wie groß ist die Wahrscheinlichkeit, dass in einer Stunde genau 5 Anrufe eingehen?
dpois(5, lambda=4.5)

# 6b) Wie groß ist die Wahrscheinlichkeit, dass höchstens 6 Anrufe eingehen?
ppois(6, lambda=4.5)

# 6c) Wie viele Leitungen müssen mindestens verfügbar sein, 
# damit in 95 % der Stunden alle Anrufe gleichzeitig bedient werden können?
qpois(0.95, lambda=4.5)

# Aufgabe 7:
# In einem Lager treffen durchschnittlich 3 Lieferungen pro Tag ein. 
# Die Warenannahme ist täglich besetzt.

# 7a) Wie groß ist die Wahrscheinlichkeit, dass an einem Tag keine Lieferung eintrifft?
dpois(0, lambda=3)

# 7b) Wie groß ist die Wahrscheinlichkeit, dass an einem Tag mehr als 5 Lieferungen eintreffen?
1 - ppois(5, lambda=3)

# 7c) Das Lager möchte seine Personalplanung so gestalten, 
# dass an 80 % aller Tage ausreichend Mitarbeiter vorhanden sind. 
# Auf wie viele gleichzeitige Lieferungen muss geplant werden?
qpois(0.8, lambda=3)

# Aufgabe 8:
# In einem Rechenzentrum treten pro Tag im Durchschnitt 2,3 kritische Fehlermeldungen auf, 
# die manuelle Eingriffe erfordern.

# 8a) Wie groß ist die Wahrscheinlichkeit, dass an einem Tag genau 2 Fehlermeldungen auftreten?
dpois(2, lambda=2.3)

# 8b) Wie groß ist die Wahrscheinlichkeit, dass an einem Tag zwischen 1 und 4 Fehlermeldungen auftreten (einschließlich)?
ppois(4, lambda=2.3) - ppois(0, lambda=2.3)

# 8c) Der IT-Bereitschaftsdienst soll so besetzt sein, dass er an 99 % der Tage alle Fehler abarbeiten kann. 
# Wie viele Fälle muss er maximal bewältigen können?
qpois(0.99, lambda=2.3)

# Aufgabe 9:
# An einer Supermarktkasse kommen in der Mittagszeit durchschnittlich 
# 6 Kunden pro 5 Minuten an.  

# 9a) Wie groß ist die Wahrscheinlichkeit, dass in einem 5-Minuten-Intervall genau 6 Kunden ankommen?
dpois(6, lambda=6)

# 9b) Wie groß ist die Wahrscheinlichkeit, dass weniger als 4 Kunden ankommen?
ppois(3, lambda=6)

# 9c) Der Filialleiter will wissen: Wie viele Kassenplätze muss er öffnen, 
# damit in 90 % der 5-Minuten-Intervalle kein Kunde warten muss? 
qpois(0.9, lambda=6)


# Aufgabe 10:
# Bei einer KFZ-Versicherung gehen im Durchschnitt 7,2 Schadenmeldungen pro Arbeitstag ein. 
# Die Bearbeitung erfolgt durch ein Schadensteam.

# 10a) Wie groß ist die Wahrscheinlichkeit, dass an einem Tag genau 10 Schadenmeldungen eingehen?
dpois(10, lambda=7.2)

# 10b) Wie groß ist die Wahrscheinlichkeit, dass an einem Tag mindestens 8 Meldungen eingehen?
1 - ppois(7, lambda=7.2)

# 10c) Das Management möchte das Team so dimensionieren, 
# dass an 98 % aller Tage alle Meldungen am selben Tag bearbeitet werden können. 
# Wie viele Bearbeitungskapazitäten (Fälle/Tag) werden benötigt? 
qpois(0.98, lambda=7.2)


# ## Simulation Binomialverteilung B(n,p) mit der Gleichverteilung

# Ein Bernoulli‑Versuch mit P(X=1) = p lässt sich aus einer Gleichverteilung G(0,1) konstruieren.

#1. Ziehe g aus G(0,1) (z.B. runif(1) in R).

#2. Erzeuge X = 1, falls g <= p und X = 0, falls g > p.

#3. Eine Binomialverteilung ist die Summe von  n  unabhängigen Bernoulli(p)‑Variablen.

#4. Initialisiere s <- 0

#5. Wiederhole n Mal:
##  - Ziehe g aus G(0,1)
##  - Erzeuge X = 1, falls g <= p und X = 0, falls g > p.
##  - s <- s + g

#6. s ist die Realisation der B(n,p)

## -----------------------------------------------------------------------------
## --> Siehe html Unterlage 6-R_random_variables_distributions.html
## -----------------------------------------------------------------------------