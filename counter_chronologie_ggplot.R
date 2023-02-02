counter.chrono <- data.frame(
  namen = c("Ptolemaios V.", "Ptolemaios VI.",
            "Kleopatra I.","Arsinoe", "Kleopatra II.","Kleopatra III."),
  geschlecht = rep(c("Männliche Regenten", "Weibliche Regentinnen"), 
                   times = c(2, 4)),
  antritt = -c(197, 180, 194, 200, 175, 141),
  ende = -c(180, 164, 176, 150, 164, 130)
)

library(geomtextpath)
library(ggplot2)

cc <- ggplot(counter.chronology, aes(geschlecht, antritt)) +
  geom_textsegment(aes(xend = geschlecht, yend = ende, label = namen,
                       colour = namen), gap = FALSE,
#                   position = position_stack(),
                   linewidth = 30, textcolour = 'black') +
#  scale_x_continuous(labels = abs) +
  scale_color_brewer(palette = 'Pastel1', guide = 'none') +
  theme_minimal(base_size = 15) 

cc

