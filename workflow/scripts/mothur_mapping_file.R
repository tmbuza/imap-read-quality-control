library(tidyverse)
mothur_mapping_file <- read_table("results/qc/seqkit1/seqkit_stats.txt", show_col_types = F) %>%
  mutate(sample_id = str_replace_all(file, ".*/", ""), .before=file) %>%
  mutate(sample_id = str_replace_all(sample_id, "_\\d?.fastq.gz", "")) %>%
  filter(str_detect(file, "_1" )) %>%
  rename(file1 = file) %>% 
  mutate(file2 =file1, .after = file1) %>%
  mutate(file2 = str_replace_all(file1, "_1.fastq.gz", "_2.fastq.gz")) %>%
  distinct() %>%
  group_by(sample_id) %>%
  # filter(num_seqs <65000) %>%
  arrange(num_seqs) %>%
  ungroup() %>%
  mutate(file1 = str_replace_all(file1, ".*/SRR", "SRR")) %>%
  mutate(file2 = str_replace_all(file2, ".*/SRR", "SRR")) %>%
  select(`#sample_id` = sample_id, file1, file2)

mothur_mapping_file %>%
  write_tsv("resources/metadata/mothur_mapping_file.tsv")
