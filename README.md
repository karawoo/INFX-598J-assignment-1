# Assignment 1: Visualization Design

## Antibiotics data 

After the World War II, antibiotics were considered as "wonder drugs", since
they were an easy remedy for what had been intractable ailments. To learn which
drug worked most effectively for which bacterial infection, performance of the
three most popular antibiotics on 16 bacteria were gathered.

The values in the table represent the minimum inhibitory concentration (MIC), a
measure of the effectiveness of the antibiotic, which represents the
concentration of antibiotic required to prevent growth in vitro. The reaction of
the bacteria to Gram staining is described by the covariate “gram staining”.
Bacteria that are stained dark blue or violet are Gram-positive. Otherwise, they
are Gram-negative.

| Bacteria                        | Penicilin | Streptomycin | Neomycin | Gram Staining |
|---------------------------------|-----------|--------------|----------|---------------|
| Aerobacter aerogenes            |       870 |            1 |      1.6 | negative      |
| Brucella abortus                |         1 |            2 |     0.02 | negative      |
| Brucella anthracis              |     0.001 |         0.01 |    0.007 | positive      |
| Diplococcus pneumoniae          |     0.005 |           11 |       10 | positive      |
| Escherichia coli                |       100 |          0.4 |      0.1 | negative      |
| Klebsiella pneumoniae           |       850 |          1.2 |        1 | negative      |
| Mycobacterium tuberculosis      |       800 |            5 |        2 | negative      |
| Proteus vulgaris                |         3 |          0.1 |      0.1 | negative      |
| Pseudomonas aeruginosa          |       850 |            2 |      0.4 | negative      |
| Salmonella (Eberthella) typhosa |         1 |          0.4 |    0.008 | negative      |
| Salmonella schottmuelleri       |        10 |          0.8 |     0.09 | negative      |
| Staphylococcus albus            |     0.007 |          0.1 |    0.001 | positive      |
| Staphylococcus aureus           |      0.03 |         0.03 |    0.001 | positive      |
| Streptococcus fecalis           |         1 |            1 |      0.1 | positive      |
| Streptococcus hemolyticus       |     0.001 |           14 |       10 | positive      |
| Streptococcus viridans          |     0.005 |           10 |       40 | positive      |


## Assignment

Your task is to design a static (i.e., single image) visualization that you
believe effectively communicates this data and provide a short write-up (no more
than 4 paragraphs) describing your design. While you must use the data set
given, note that you are free to filter, transform and augment the data as you
see fit to highlight the elements that you think are most important in the data
set.

As different visualizations can emphasize different aspects of a data set, you
should document what aspects of the data you are attempting to most effectively
communicate. In short, what story (or stories) are you trying to tell? Just as
important, also note which aspects of the data might be obscured or down-played
due to your visualization design.

In your write-up, you should provide a rigorous rationale for your design
decisions. Document the visual encodings you used and why they are appropriate
for the data. These decisions include the choice of visualization type, size,
color, scale, and other visual elements, as well as the use of sorting or other
data transformations. How do these decisions facilitate effective communication?
