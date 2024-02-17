library(tidyverse)

mothur_sample_metadata <- read_tsv("resources/mothur_mapping_file.tsv", show_col_types = FALSE) %>% 
  rename( sample_id =`#sample_id`) %>% 
  left_join(., read_tsv("resources/pe_metadata.tsv", show_col_types = FALSE), 
  by = c(sample_id="sample_name")) %>%
  select(-fq1, -fq2) %>%
  as.data.frame()

  write_tsv(mothur_sample_metadata, "resources/mothur_sample_metadata.tsv")

