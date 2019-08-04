install.packages("ukbtools")
install.packages("dplyr")
install.packages("stringr")
library(ukbtools)
library(dplyr)
library(stringr)

# UKBB filetering scripts

newdata <- subset(UKBB40616, diagnoses_main_icd10_f41202_0_0 == "I500" |
                    diagnoses_main_icd10_f41202_0_0 == "I501" |
                    diagnoses_main_icd10_f41202_0_0 == "I509",
                  select=c(eid, diagnoses_main_icd10_f41202_0_0))


newdata <- subset(UKBB40616, diagnoses_main_icd10_f41202_0_1 == "I500" |
                    diagnoses_main_icd10_f41202_0_0 == "I501" |
                    diagnoses_main_icd10_f41202_0_0 == "I509",
                  select=c(eid, diagnoses_main_icd10_f41202_0_1))



names(UKBB40616 %>% select(contains("20002")))

icd10_cols<- colnames(UKBB40616[grepl("icd10", colnames(UKBB40616))])

sapply(icd10_cols, function(x) {
  subset(UKBB40616, diagnoses_main_icd10_f41202_0_0 == âI500" |
                   diagnoses_main_icd10_f41202_0_0 == âI501â |
                   diagnoses_main_icd10_f41202_0_0 == âI509",
         select=c(eid,x))
})

library(dplyr)
UKBB %>% filter_all(any_var(.=="I500" | .=="I501"))
