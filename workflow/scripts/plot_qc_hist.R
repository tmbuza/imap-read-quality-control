source("workflow/scripts/common.R")

library(tidyverse, suppressPackageStartupMessages())
library(ggtext)

stats1 <- read_table("results/qc/seqkit1/seqkit_stats.txt", show_col_types = F) %>% 
  mutate(file = str_replace_all(file, ".*/", "")) %>% 
  mutate(file = str_replace_all(file, ".fastq.gz", "")) %>% 
  select(file, rawreads = num_seqs)

stats2 <- read_table("results/qc/seqkit2/seqkit_stats.txt", show_col_types = F) %>% 
  mutate(file = str_replace_all(file, ".*/", "")) %>% 
  mutate(file = str_replace_all(file, ".fastq.gz", "")) %>% 
  select(file, trimmed = num_seqs)

stats3 <- read_table("results/qc/seqkit3/seqkit_stats.txt", show_col_types = F) %>% 
  mutate(file = str_replace_all(file, ".*/", "")) %>% 
  mutate(file = str_replace_all(file, ".fastq.gz", "")) %>% 
  select(file, decontam = num_seqs) 

stats <- inner_join(stats1, stats2, by = "file") %>% 
  inner_join(., stats3, by = "file") %>%
  pivot_longer(-file, names_to = "variable", values_to = "count") %>%
  mutate(variable = factor(variable, 
         levels = c("rawreads", "trimmed", "decontam"))) 

stats %>% 
  ggplot(aes(x = fct_inorder(file), y = count/1E3, fill = variable)) +  
  theme_cdi() +
  geom_col(position = "dodge") +
  labs(x = "Sample", y = "Number of Reads (X1000)", fill = "Color Code") +
  scale_y_continuous(expand = c(0.02, 0.0))

ggsave(file="images/samples_hist.png", width=10, height=10)
ggsave(file="images/samples_hist.svg", width=10, height=10)


stats %>% 
  ggplot(aes(x = fct_inorder(variable), y = count/1E3, fill = variable)) +  
  theme_classic() +
  geom_col(position = "dodge") +
  labs(x = "Processed Read", y = "Number of Reads (X1000)", fill = "Color Code") +
  scale_y_continuous(expand = c(0.02, 0.0))

ggsave(file="images/qc_hist.png", width=10, height=10)
ggsave(file="images/qc_hist.svg", width=10, height=10)


