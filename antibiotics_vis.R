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
names(dat) <- tolower(names(dat))       # make column names lower case

## Reshape data
dat_long <- dat %>%
  gather(antibiotic, mic, -gram.staining, -bacteria)

## Change labelling of gram staining facets
dat_long$gram.staining <- factor(dat$gram.staining,
                                 labels = c("Gram-negative bacteria",
                                            "Gram-positive bacteria"))

##################################
####  Side-by-side bar graph  ####
##################################

ggplot(dat_long, aes(x = bacteria, y = 1/mic, fill = antibiotic)) +
  geom_bar(stat = "identity", position = "dodge") +
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) +
  facet_grid(. ~ gram.staining, scales = "free_x", labeller = relabeller) +
  xlab("Bacteria") +
  ylab(expression(MIC^-1)) +
  ggtitle("Antibiotic effectiveness by bacteria") +
  ggsave("figs/antibiotics_bar_chart.png", width = 10, height = 6)

## This is no good, the scale is all a mess


####################
####  Dot plot  ####
####################

ggplot(dat_long, aes(x = mic, y = bacteria, color = antibiotic)) +
  geom_point(size = 5, alpha = 0.7) +
  scale_color_manual(values = wes_palette("Darjeeling")) + 
  scale_x_log10() +
  facet_grid(gram.staining ~ ., scales = "free_y", labeller = label_value) +
  ylab("Bacteria") +
  xlab(expression(log("Minimum Inhibitory Concentration"))) +
  ggtitle("Antibiotic effectiveness by bacteria") +
  ggsave("figs/antibiotics_dot_plot.png", width = 10, height = 6)

## Better...
 
