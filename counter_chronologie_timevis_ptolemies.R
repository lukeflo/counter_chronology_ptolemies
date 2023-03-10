
library(timevis)

counter.chronology <- read.csv("ptolemaic_rulers_2.csv")

timevis(
  counter.chronology, 
  groups = data.frame(
    id = 1:2, 
    content = c("Regenten", "Regentinnen"),
    width = 900
  )
)
