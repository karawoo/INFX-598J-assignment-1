#####################################
####  Antibiotics visualization  ####
#####################################

## Load packages
library("tidyr")
library("dplyr")
library("ggplot2")
library("wesanderson")

## Load data
dat <- read.csv("antibiotics_data.csv", stringsAsFactors = TRUE)

## Reshape data
dat_long <- gather(data = dat, key = Antibiotic, value = mic, -Gram.Staining, -Bacteria)

## Change labelling of gram staining facets
dat_long$gram.staining <- factor(dat_long$Gram.Staining,
                                 labels = c("Gram-negative bacteria",
                                            "Gram-positive bacteria"))


####################
####  Dot plot  ####
####################

ggplot(dat_long, aes(x = mic, y = Bacteria, color = Antibiotic)) +
  geom_point(size = 5, alpha = 0.7) +
  scale_color_manual(values = wes_palette("Darjeeling")) + 
  scale_x_log10() +
  facet_grid(gram.staining ~ ., scales = "free_y", labeller = label_value) +
  ylab("Bacteria") +
  xlab(expression(log("Minimum Inhibitory Concentration"))) +
  ggtitle("Antibiotic effectiveness by bacteria") +
  theme_bw() +
  ggsave("figs/antibiotics_dot_plot.png", width = 10, height = 6)

## Better...
 
