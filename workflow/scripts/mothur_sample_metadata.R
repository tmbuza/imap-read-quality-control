library(tidyverse)

mothur_sample_metadata <- read_tsv("resources/metadata/mothur_mapping_file.tsv", show_col_types = FALSE) %>% 
  rename( sample_id =`#sample_id`) %>% 
  left_join(., read_tsv("resources/metadata/pe_metadata.tsv", show_col_types = FALSE), 
  by = c(sample_id="sample_name")) %>%
  select(-fq1, -fq2) %>%
  as.data.frame()

  write_tsv(mothur_sample_metadata, "resources/metadata/mothur_sample_metadata.tsv")

