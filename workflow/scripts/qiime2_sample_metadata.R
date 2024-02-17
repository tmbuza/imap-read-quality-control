library(tidyverse)

qiime2_sample_metadata <- left_join(
  read_tsv("resources/qiime2_manifest_file.tsv", show_col_types = FALSE), 
  read_tsv("resources/pe_metadata.tsv", show_col_types = FALSE), 
  by = c("sample-id"="sample_name")) %>%
  select(-fq1, -fq2) %>%
  as.data.frame()

  write_tsv(qiime2_sample_metadata, "resources/qiime2_sample_metadata.tsv")

