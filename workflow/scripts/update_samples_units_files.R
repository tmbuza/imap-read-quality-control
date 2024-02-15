library(tidyverse)

if (!dir.exists("config/mothur")) {dir.create("config/mothur")}
  
read_tsv("resources/metadata/mothur_sample_metadata.tsv", show_col_types = FALSE) %>% 
  select(sample_name = sample_id, bioproject) %>% 
  write_tsv("config/mothur/samples.tsv")

read_tsv("resources/metadata/mothur_sample_metadata.tsv", show_col_types = FALSE) %>% 
  select(sample_name = sample_id, unit_name, fq1 = file1, fq2 = file2, sra, adapters, everything()) %>% 
  write_tsv("config/mothur/units.tsv")
  

library(tidyverse)

if (!dir.exists("config/qiime2")) {dir.create("config/qiime2")}

read_tsv("resources/metadata/qiime2_sample_metadata.tsv", show_col_types = FALSE) %>% 
  select(sample_name = 'sample-id', bioproject) %>% 
  write_tsv("config/qiime2/samples.tsv")

read_tsv("resources/metadata/qiime2_sample_metadata.tsv", show_col_types = FALSE) %>% 
  select(sample_name = `sample-id`, unit_name, fq1 = `forward-absolute-filepath`, fq2 = `reverse-absolute-filepath`, sra, adapters, everything()) %>% 
  mutate(fq1=str_replace_all(fq1, ".*/", ""),
         fq2=str_replace_all(fq2, ".*/", "")) %>% 
  write_tsv("config/qiime2/units.tsv")
