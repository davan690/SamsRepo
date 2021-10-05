# Poisson_distribution

library(httr)
library(WikipediR)
library(rvest)

Poisson_distributionW = page_content(language='en', 'wikipedia', page_name = 'Poisson_distribution')

str(Poisson_distributionW[[1]], 1) # inspect

posData <- Poisson_distributionW$parse$text$`*` %>% 
  read_html %>% 
  html_text %>% 
  message

# movie <- read_html("https://en.wikipedia.org/wiki/Riemann_zeta_function")
# cast <- html_nodes(movie, "tr:nth-child(1) .plainlist a")
# html_text(cast)
# html_name(cast)
# html_attrs(cast)
# html_attr(cast, "href")