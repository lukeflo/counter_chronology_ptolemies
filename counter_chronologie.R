# install.packages(devtools)
# devtools::install_github("edgararuiz/gregorian")
# library(gregorian)
library(ggplot2)
library(vistime)

counter.chrono-vis <- data.frame(
  namen = c("Ptolemaios V.","Ptolemaios VI.","Kleopatra I.","Arsinoe","Kleopatra II.","Kleopatra III."),
  geschlecht = c("Männliche Regenten","Männliche Regenten","Weibliche Regentinnen","Weibliche Regentinnen","Weibliche Regentinnen","Weibliche Regentinnen"),
  antritt = c("-000197-01-01","-000180-01-01","-000194-01-01","-000190-01-01","-000175-01-01","-000141-01-01"),
  ende = c("-000180-01-01","-000164-01-01","-000160-01-01","-000145-01-01","-000164-01-01","-000130-01-01"),
  stringsAsFactors = FALSE
)

chrono <- gg_vistime(counter.chronology, col.event = "namen", col.group = "geschlecht", col.start = "antritt", col.end = "ende", optimize_y = TRUE)

chrono
#chrono + scale_x_reverse()
