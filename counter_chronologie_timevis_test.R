library(timevis)

counter.chronology <- data.frame(
  content = c("Ptolemaios V.","Ptolemaios VI.","Kleopatra I.","Arsinoe","Kleopatra II.","Kleopatra III."),
  start = c("-000197-01-01","-000180-01-01","-000194-01-01","-000190-01-01","-000175-01-01","-000141-01-01"),
  end = c("-000180-01-01","-000164-01-01","-000160-01-01","-000145-01-01","-000164-01-01","-000130-01-01"),
  group = c(1,1,2,2,2,2),
  style = c("background-color: #f1d9a4; border-color: black;", 
            "background-color: #ceaf7a; border-color: black;",
            "background-color: #ca9865; border-color: black;")
)

timevis(
  counter.chronology, 
  groups = data.frame(
    id = 1:2, 
    content = c("Regenten", "Regentinnen"),
    width = 900
    )
)
        