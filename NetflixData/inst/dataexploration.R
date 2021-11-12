library("NetflixData")
library("tidyverse")
library("ggplot2")
library("ggthemes")


p = ggplot(data = netflix, aes(type)) +
  geom_bar(aes(fill= type)) +
  labs(x = "", y = "",
       title = "Netflix Current Available Content Type",
       subtitle = "Movie/TV Show Content Distribution",
       caption = "Dataset Source: Kaggle Netflix Data") +
  scale_fill_hue(c=90, l=80) +
  scale_fill_manual(values=c("#E50914", "#000000")) +
  theme_few()
p + theme(
  plot.title = element_text(size = 20, face = "bold"),
  plot.subtitle = element_text(face = "italic"),
  plot.caption = element_text(face = "italic")
)

p2 = ggplot(data = netflix, aes(x = release_year)) +
  geom_bar(aes(fill = type)) +
  labs(x = "", y = "",
       title = "Year of Release Count Distribution",
       subtitle = "Of Movie's And TV Show's That Are on Netflix",
       caption = "Dataset Source: Kaggle Netflix Data") +
  scale_fill_hue(c=45, l=80) +
  scale_fill_manual(values=c("#E50914", "#000000")) +
  theme_few()
p2 + theme(
  plot.title = element_text(size = 16, face = "bold"),
  plot.subtitle = element_text(size = 10, face = "italic"),
  plot.caption = element_text(size = 6, face = "italic")
)


