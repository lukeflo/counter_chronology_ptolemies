# Alternative Chronology for Ptolemaic Dynasty

## Introduction

This is the `R`-code used plotting a timeline for a renewed chronology of the Ptolemaic Dynasty 
including the female rulers/queens. The idea of renewing the traditional chronology of ancient 
Ptolemaic Egypt arose while working on the research data management for the priority programm (SPP) 
[Entangled Africa](https://www.dainst.blog/entangled-africa/en/home/) by the German Archaeological 
Institute. One goal of the SPP is to renew an create different chronologies concerning the 
archaeological periods and epochs of the ancient African continent.

During our research we became aware that women are underrepresented, espacially in political 
arranged chronologies. So we decided to rework a so called "counter-chronology" which includes all 
important female rulers of Ptolemaic Egypt. We hope to expand this method on other political 
chronologies as well as chronologies with another focus (material culture for example). For now, the 
Ptolemaic Epoche is our test case.

## Code

### Which R-package?

So far, the [`timevis`](https://github.com/daattali/timevis) package produces the best results. We 
have already tried `vistime` ang `ggplot`, but with both some problems occured. `vistime` cannot 
plot with negative years using BC dates. But this is indispensable for a chronology concerning 
ancient Egypt. `ggplot`, on the other side, has problems---as far as i was able to try out---to 
automatically sort the bars of the ruling periods on top of each other if overlapping periods make 
it necessary.

Nevertheless, we included our `vistime` as well as our `ggplot` codes here. Maybe someone who takes 
a look on this repo has a solution for one of these problems. The Quesiton is also posted on [stack 
overflow](https://stackoverflow.com/questions/75028646/plotting-historical-periods-in-a-timeline-using-r-and-vistime-package-bc-not-po/75028944#75028944) 
and temporary solved with the `timevis`-solution.

### Current solution

For now, we are using the following relatively easy R-code which takes the data from the csv-table which can be found above:

~~~R
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
~~~

The result looks fine:

![Chronology part 1](https://github.com/lukeflo/counter_chronology_ptolemies/blob/main/counter_plot_part_1.png?raw=true)

![Chronology part 2](https://github.com/lukeflo/counter_chronology_ptolemies/blob/main/counter_plot_part_2.png?raw=true)
