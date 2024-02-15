library(tidyverse)
qiime2_manifest_file <- read_table("results/qc/seqkit1/seqkit_stats.txt", show_col_types = F) %>%
  mutate(sample_id = str_replace_all(file, ".*/", ""), .before=file) %>%
  mutate(sample_id = str_replace_all(sample_id, "_\\d?.fastq.gz", "")) %>%
  filter(str_detect(file, "_1" )) %>%
  mutate(file2 =file, .after = file) %>%
  mutate(file2 = str_replace_all(file, "_1.fastq.gz", "_2.fastq.gz")) %>%
  distinct() %>%
  group_by(sample_id) %>%
  # filter(num_seqs <65000) %>%
  arrange(num_seqs) %>%
  ungroup() %>%
  mutate(file = str_replace_all(file, ".*/SRR", "$PWD/resources/reads/SRR")) %>%
  mutate(file2 = str_replace_all(file2, ".*/SRR", "$PWD/resources/reads/SRR")) %>%
  select("sample-id" = sample_id, "forward-absolute-filepath" = file, "reverse-absolute-filepath" = file2)

qiime2_manifest_file %>%
  write_tsv("resources/metadata/qiime2_manifest_file.tsv")


# qiime2_metadata_file <- left_join(
#   qiime2_manifest_file, read_tsv("resources/metadata/pe_metadata.tsv", show_col_types = FALSE), 
#   by = c("sample-id"="sample_name")) %>%
#   select(-fq1, -fq2) %>%
#   as.data.frame()

#   write_tsv(qiime2_metadata_file, "resources/metadata/qiime2_metadata_file.tsv")

