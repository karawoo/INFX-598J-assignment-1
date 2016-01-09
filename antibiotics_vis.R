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

################
####  Plot  ####
################

baseplot <- ggplot(dat_long, aes(x = mic, y = Bacteria)) +
  annotation_logticks(base = 10, sides = "b", color = "gray") +
  scale_x_log10(labels = scales::comma) +
  facet_grid(gram.staining ~ ., scales = "free_y", labeller = label_value) +
  ylab("Bacteria") +
  xlab("Minimum Inhibitory Concentration") +
  ggtitle("Antibiotic Effectiveness") +
  theme_bw() +
  theme(axis.text = element_text(size = 10),
        strip.text.y = element_text(size = 10),
        axis.title = element_text(size = 13),
        plot.title = element_text(size = 20))

## Version with hue for antibiotic type

baseplot +
  geom_point(aes(color = Antibiotic), size = 6, alpha = 0.65) +
  scale_color_manual(values = wes_palette("Darjeeling")) + 
  ggsave("figs/antibiotics_plot_hue.png", width = 10, height = 6)
 
## Version with shape for antibiotic type

baseplot +
  geom_point(aes(shape = Antibiotic), size = 6) +
  scale_shape_manual(values = c(1, 0, 3)) +
  ggsave("figs/antibiotics_plot_shape.png", width = 10, height = 6)
  
