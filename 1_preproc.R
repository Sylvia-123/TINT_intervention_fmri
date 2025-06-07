


# Intervention effects on brain function (activation) 
# This file includes descriptive statistics and scoring for RCADS and EAC
# N = 70 (n = 35 for TINT, n = 35 for CONTROL)


######### DESCRIPTIVE STATISTICS AND DEMOGRAPHICS ###############

# Load packages and data
library(readr)
library(psych)
library(dplyr)

data <- read_csv("TuningIntoTeensBrain-Demographics_DATA_2024-04-02_1228.csv")

# define the IDs for the intervention group
intervention_ids <- c("T001", "T006", "T010", "T014","T017", "T025", "T042", "T046", "T071", "T099", "T101", "T155", "T164", "T173", "T179","T180", "T193", "T183", "T252", "T288", "T293", "T310", "T320", "T322", "T376", "T392", "T420", "T449", "T476", "T486", "T488", "T516", "T521", "T537", "T565")
data$group[data$tintb_id %in% intervention_ids] <- "intervention"
data$group[!data$tintb_id %in% intervention_ids] <- "control"

# Remove Mother's age data for incorrect entry (the following mothers entered their child's age)
data <- data %>%
  mutate(age_mother = ifelse(tintb_id %in% c("T179", "T180", "T193", "T357", "T367"), NA, age_mother))


#### Baseline characteristics ----------------------------------
adol_age<- data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean_age = mean(age_enrol_analysis, na.rm = TRUE),
    SD_age = sd(age_enrol_analysis, na.rm = TRUE)
  )
adol_age

mother_age<- data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean_age = mean(age_mother, na.rm = TRUE),
    SD_age = sd(age_mother, na.rm = TRUE)
  )
mother_age


data %>%
  dplyr::group_by(group, edu_parent) %>%
  dplyr::summarise(Frequency = n()) %>%
  dplyr::mutate(Percentage = (Frequency / sum(Frequency)) * 100)

data %>%
  dplyr::group_by(group, family_income) %>%
  dplyr::summarise(Frequency = n()) %>%
  dplyr::mutate(Percentage = (Frequency / sum(Frequency)) * 100)

data %>%
  dplyr::group_by(group, family_makeup) %>%
  dplyr::summarise(Frequency = n()) %>%
  dplyr::mutate(Percentage = (Frequency / sum(Frequency)) * 100)

data %>%
  dplyr::group_by(group, race_parent) %>%
  dplyr::summarise(Frequency = n()) %>%
  dplyr::mutate(Percentage = (Frequency / sum(Frequency)) * 100)

data %>%
  dplyr::group_by(group, race_child) %>%
  dplyr::summarise(Frequency = n()) %>%
  dplyr::mutate(Percentage = (Frequency / sum(Frequency)) * 100)


#### RCADS at baseline ----------------------------------
RCADS_data <- read_csv("TuningIntoTeensBrain-RCADSAtBaseline_DATA_2024-04-02_1637.csv")
RCADS_data$group[RCADS_data$tintb_id %in% intervention_ids] <- "intervention"
RCADS_data$group[!RCADS_data$tintb_id %in% intervention_ids] <- "control"


# rename variables and create subscales
names(RCADS_data)[names(RCADS_data) == "rcads_c_rscore"] <- "rcads_c_total"
names(RCADS_data)[names(RCADS_data) == "rcads_p_rscore"] <- "rcads_p_total"

RCADS_data <- RCADS_data %>% mutate(rcads_c_dep = rcadsc2+rcadsc6+rcadsc11+rcadsc15+rcadsc19+rcadsc21+rcadsc25+rcadsc29+rcadsc40+rcadsc47)
RCADS_data <- RCADS_data %>% mutate(rcads_c_anx = rcads_c_total - rcads_c_dep)

RCADS_data <- RCADS_data %>% mutate(rcads_p_dep = rcads2+rcads6+rcads11+rcads15+rcads19+rcads21+rcads25+rcads29+rcads40+rcads47)
RCADS_data <- RCADS_data %>% mutate(rcads_p_anx = rcads_p_total - rcads_p_dep)


# descriptive statistics
rcads_c_total<- RCADS_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(rcads_c_total, na.rm = TRUE),
    SD = sd(rcads_c_total, na.rm = TRUE)
  )
rcads_c_total

rcads_c_dep<- RCADS_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(rcads_c_dep, na.rm = TRUE),
    SD = sd(rcads_c_dep, na.rm = TRUE)
  )
rcads_c_dep

rcads_c_anx<- RCADS_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(rcads_c_anx, na.rm = TRUE),
    SD = sd(rcads_c_anx, na.rm = TRUE)
  )
rcads_c_anx

rcads_p_total<- RCADS_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(rcads_p_total, na.rm = TRUE),
    SD = sd(rcads_p_total, na.rm = TRUE)
  )
rcads_p_total

rcads_p_dep<- RCADS_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(rcads_p_dep, na.rm = TRUE),
    SD = sd(rcads_p_dep, na.rm = TRUE)
  )
rcads_p_dep

rcads_p_anx<- RCADS_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(rcads_p_anx, na.rm = TRUE),
    SD = sd(rcads_p_anx, na.rm = TRUE)
  )
rcads_p_anx


# calculate alpha
library(psych)
psych::alpha(RCADS_data[, grep("rcadsc", names(RCADS_data))],na.rm = TRUE) #0.91 (child internalising)
psych::alpha(RCADS_data[c("rcads1", "rcads3", "rcads4", "rcads5", "rcads7", "rcads8", "rcads9", "rcads10", "rcads12", "rcads13", "rcads14", "rcads16", "rcads17", "rcads18", "rcads20", "rcads22", "rcads23", "rcads24", "rcads26", "rcads27", "rcads28", "rcads30", "rcads31", "rcads32", "rcads33", "rcads34", "rcads35", "rcads36", "rcads37", "rcads38", "rcads39", "rcads41", "rcads42", "rcads43", "rcads44", "rcads45", "rcads46","rcads2", "rcads6", "rcads11", "rcads15", "rcads19", "rcads21", "rcads25", "rcads29", "rcads40", "rcads47")],na.rm = TRUE) #0.92 (mother internalising)

psych::alpha(RCADS_data[c("rcadsc2", "rcadsc6", "rcadsc11", "rcadsc15", "rcadsc19", "rcadsc21", "rcadsc25", "rcadsc29", "rcadsc40", "rcadsc47")], na.rm = TRUE) # 0.86 (child dep)

psych::alpha(RCADS_data[c("rcadsc1", "rcadsc3", "rcadsc4", "rcadsc5", "rcadsc7", "rcadsc8", "rcadsc9", "rcadsc10", "rcadsc12", "rcadsc13", "rcadsc14", "rcadsc16", "rcadsc17", "rcadsc18", "rcadsc20", "rcadsc22", "rcadsc23", "rcadsc24", "rcadsc26", "rcadsc27", "rcadsc28", "rcadsc30", "rcadsc31", "rcadsc32", "rcadsc33", "rcadsc34", "rcadsc35", "rcadsc36", "rcadsc37", "rcadsc38", "rcadsc39", "rcadsc41", "rcadsc42", "rcadsc43", "rcadsc44", "rcadsc45", "rcadsc46")], na.rm = TRUE) # 0.89(child anxiety)


psych::alpha(RCADS_data[c("rcads2", "rcads6", "rcads11", "rcads15", "rcads19", "rcads21", "rcads25", "rcads29", "rcads40", "rcads47")],na.rm = TRUE) # 0.78 (mother dep)

psych::alpha(RCADS_data[c("rcads1", "rcads3", "rcads4", "rcads5", "rcads7", "rcads8", "rcads9", "rcads10", "rcads12", "rcads13", "rcads14", "rcads16", "rcads17", "rcads18", "rcads20", "rcads22", "rcads23", "rcads24", "rcads26", "rcads27", "rcads28", "rcads30", "rcads31", "rcads32", "rcads33", "rcads34", "rcads35", "rcads36", "rcads37", "rcads38", "rcads39", "rcads41", "rcads42", "rcads43", "rcads44", "rcads45", "rcads46")],na.rm = TRUE) #0.91 (mother anxiety)



#### RCADS at T3 ----------------------------------
RCADS_data <- read_csv("TuningIntoTeensBrain-RCADSAtT3_DATA_2024-04-02_1800.csv")
RCADS_data$group[RCADS_data$tintb_id %in% intervention_ids] <- "intervention"
RCADS_data$group[!RCADS_data$tintb_id %in% intervention_ids] <- "control"


# rename variables and create subscales
names(RCADS_data)[names(RCADS_data) == "rcads_c_rscore"] <- "rcads_c_total"
names(RCADS_data)[names(RCADS_data) == "rcads_p_rscore"] <- "rcads_p_total"


RCADS_data <- RCADS_data %>% mutate(rcads_c_dep = rcadsc2+rcadsc6+rcadsc11+rcadsc15+rcadsc19+rcadsc21+rcadsc25+rcadsc29+rcadsc40+rcadsc47)
RCADS_data <- RCADS_data %>% mutate(rcads_c_anx = rcads_c_total - rcads_c_dep)

RCADS_data <- RCADS_data %>% mutate(rcads_p_dep = rcads2+rcads6+rcads11+rcads15+rcads19+rcads21+rcads25+rcads29+rcads40+rcads47)
RCADS_data <- RCADS_data %>% mutate(rcads_p_anx = rcads_p_total - rcads_p_dep)


# descriptive statistics
rcads_c_total<- RCADS_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(rcads_c_total, na.rm = TRUE),
    SD = sd(rcads_c_total, na.rm = TRUE)
  )
rcads_c_total

rcads_c_dep<- RCADS_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(rcads_c_dep, na.rm = TRUE),
    SD = sd(rcads_c_dep, na.rm = TRUE)
  )
rcads_c_dep

rcads_c_anx<- RCADS_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(rcads_c_anx, na.rm = TRUE),
    SD = sd(rcads_c_anx, na.rm = TRUE)
  )
rcads_c_anx

rcads_p_total<- RCADS_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(rcads_p_total, na.rm = TRUE),
    SD = sd(rcads_p_total, na.rm = TRUE)
  )
rcads_p_total

rcads_p_dep<- RCADS_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(rcads_p_dep, na.rm = TRUE),
    SD = sd(rcads_p_dep, na.rm = TRUE)
  )
rcads_p_dep

rcads_p_anx<- RCADS_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(rcads_p_anx, na.rm = TRUE),
    SD = sd(rcads_p_anx, na.rm = TRUE)
  )
rcads_p_anx


# calculate alpha
library(psych)
psych::alpha(RCADS_data[, grep("rcadsc", names(RCADS_data))],na.rm = TRUE) #0.94 (child)
psych::alpha(RCADS_data[c("rcads1", "rcads3", "rcads4", "rcads5", "rcads7", "rcads8", "rcads9", "rcads10", "rcads12", "rcads13", "rcads14", "rcads16", "rcads17", "rcads18", "rcads20", "rcads22", "rcads23", "rcads24", "rcads26", "rcads27", "rcads28", "rcads30", "rcads31", "rcads32", "rcads33", "rcads34", "rcads35", "rcads36", "rcads37", "rcads38", "rcads39", "rcads41", "rcads42", "rcads43", "rcads44", "rcads45", "rcads46","rcads2", "rcads6", "rcads11", "rcads15", "rcads19", "rcads21", "rcads25", "rcads29", "rcads40", "rcads47")],na.rm = TRUE) #0.95 (mother)


psych::alpha(RCADS_data[c("rcadsc2", "rcadsc6", "rcadsc11", "rcadsc15", "rcadsc19", "rcadsc21", "rcadsc25", "rcadsc29", "rcadsc40", "rcadsc47")], na.rm = TRUE) # 0.86 (child dep)

psych::alpha(RCADS_data[c("rcadsc1", "rcadsc3", "rcadsc4", "rcadsc5", "rcadsc7", "rcadsc8", "rcadsc9", "rcadsc10", "rcadsc12", "rcadsc13", "rcadsc14", "rcadsc16", "rcadsc17", "rcadsc18", "rcadsc20", "rcadsc22", "rcadsc23", "rcadsc24", "rcadsc26", "rcadsc27", "rcadsc28", "rcadsc30", "rcadsc31", "rcadsc32", "rcadsc33", "rcadsc34", "rcadsc35", "rcadsc36", "rcadsc37", "rcadsc38", "rcadsc39", "rcadsc41", "rcadsc42", "rcadsc43", "rcadsc44", "rcadsc45", "rcadsc46")], na.rm = TRUE) # 0.93(child anxiety)


psych::alpha(RCADS_data[c("rcads2", "rcads6", "rcads11", "rcads15", "rcads19", "rcads21", "rcads25", "rcads29", "rcads40", "rcads47")],na.rm = TRUE) # 0.86 (mother dep)

psych::alpha(RCADS_data[c("rcads1", "rcads3", "rcads4", "rcads5", "rcads7", "rcads8", "rcads9", "rcads10", "rcads12", "rcads13", "rcads14", "rcads16", "rcads17", "rcads18", "rcads20", "rcads22", "rcads23", "rcads24", "rcads26", "rcads27", "rcads28", "rcads30", "rcads31", "rcads32", "rcads33", "rcads34", "rcads35", "rcads36", "rcads37", "rcads38", "rcads39", "rcads41", "rcads42", "rcads43", "rcads44", "rcads45", "rcads46")],na.rm = TRUE) #0.95 (mother anxiety)



#### Calculate MRI date difference by group ----------------------------------
MRI_data <- read_csv("TuningIntoTeensBrain-MRIDates_DATA_2024-04-02_1611.csv")
MRI_data$group[MRI_data$tintb_id %in% intervention_ids] <- "intervention"
MRI_data$group[!MRI_data$tintb_id %in% intervention_ids] <- "control"

date_diff<- MRI_data %>%
  dplyr::group_by(group) %>%
  dplyr::summarize(
    Mean = mean(mri_date_diff, na.rm = TRUE),
    SD = sd(mri_date_diff, na.rm = TRUE),
    Min = min(mri_date_diff, na.rm = TRUE),
    Max = max(mri_date_diff, na.rm = TRUE)
  )%>% ungroup()
date_diff


#### EAC Descriptive ----------------------
eac_data <- read_csv("~/Library/CloudStorage/OneDrive-TheUniversityofMelbourne/1. PhD/02. Analysis/REDCap/TuningIntoTeensBrain-MasterFile_DATA_2024-11-29_1728.csv")

# Label the 'group' column based on the IDs
eac_data$group[eac_data$tintb_id %in% intervention_ids] <- "intervention"
eac_data$group[!eac_data$tintb_id %in% intervention_ids] <- "control"

# make sure timepoints are factor, and rename them
eac_data$redcap_event_name <- as.factor(eac_data$redcap_event_name)
eac_data <- eac_data %>% mutate(time = factor(redcap_event_name, levels = c("baseline_arm_1", "post_intervention_arm_1", "follow_up_arm_1","follow_up_t4_arm_1"), labels = c("T1", "T2", "T3","T4")))


# First, reverse score item 1,3,6,12,15 for each emotion
# EAC child report
eac_data$eacc_1 <- 6 - eac_data$eacc_1
eac_data$eacc_3 <- 6 - eac_data$eacc_3
eac_data$eacc_6 <- 6 - eac_data$eacc_6
eac_data$eacc_12 <- 6 - eac_data$eacc_12
eac_data$eacc_15 <- 6 - eac_data$eacc_15
eac_data$eacc_16 <- 6 - eac_data$eacc_16
eac_data$eacc_18 <- 6 - eac_data$eacc_18
eac_data$eacc_21 <- 6 - eac_data$eacc_21
eac_data$eacc_27 <- 6 - eac_data$eacc_27
eac_data$eacc_30 <- 6 - eac_data$eacc_30
eac_data$eacc_31 <- 6 - eac_data$eacc_31
eac_data$eacc_33 <- 6 - eac_data$eacc_33
eac_data$eacc_36 <- 6 - eac_data$eacc_36
eac_data$eacc_42 <- 6 - eac_data$eacc_42
eac_data$eacc_45 <- 6 - eac_data$eacc_45

# EAC parent report scoring
eac_data$eacp_1 <- 6 - eac_data$eacp_1
eac_data$eacp_3 <- 6 - eac_data$eacp_3
eac_data$eacp_6 <- 6 - eac_data$eacp_6
eac_data$eacp_12 <- 6 - eac_data$eacp_12
eac_data$eacp_15 <- 6 - eac_data$eacp_15
eac_data$eacp_16 <- 6 - eac_data$eacp_16
eac_data$eacp_18 <- 6 - eac_data$eacp_18
eac_data$eacp_21 <- 6 - eac_data$eacp_21
eac_data$eacp_27 <- 6 - eac_data$eacp_27
eac_data$eacp_30 <- 6 - eac_data$eacp_30
eac_data$eacp_31 <- 6 - eac_data$eacp_31
eac_data$eacp_33 <- 6 - eac_data$eacp_33
eac_data$eacp_36 <- 6 - eac_data$eacp_36
eac_data$eacp_42 <- 6 - eac_data$eacp_42
eac_data$eacp_45 <- 6 - eac_data$eacp_45


# Second, calculate alphas
# Calculate T1 alpha 
eac_data_t1 <- eac_data %>% filter(time == "T1")

# Child report
# EAC sadness
psych::alpha(eac_data_t1[c("eacc_1", "eacc_2", "eacc_3", "eacc_4", "eacc_5", "eacc_6", "eacc_7", "eacc_8", "eacc_9", "eacc_10", "eacc_11", "eacc_12", "eacc_13", "eacc_14", "eacc_15")], na.rm = TRUE) # a = 0.7
# EAC anger
psych::alpha(eac_data_t1[c("eacc_16", "eacc_17", "eacc_18", "eacc_19", "eacc_20", "eacc_21", "eacc_22", "eacc_23", "eacc_24", "eacc_25", "eacc_26", "eacc_27", "eacc_28", "eacc_29", "eacc_30")], na.rm = TRUE) # a = 0.82
# EAC anxiety
psych::alpha(eac_data_t1[c("eacc_31", "eacc_32", "eacc_33", "eacc_34", "eacc_35", "eacc_36", "eacc_37", "eacc_38", "eacc_39", "eacc_40", "eacc_41", "eacc_42", "eacc_43", "eacc_44", "eacc_45")], na.rm = TRUE) # a = 0.77


# Parent report
# EAC sadness
psych::alpha(eac_data_t1[c("eacp_1", "eacp_2", "eacp_3", "eacp_4", "eacp_5", "eacp_6", "eacp_7", "eacp_8", "eacp_9", "eacp_10", "eacp_11", "eacp_12", "eacp_13", "eacp_14", "eacp_15")], na.rm = TRUE) # a = 0.78
# EAC anger
psych::alpha(eac_data_t1[c("eacp_16", "eacp_17", "eacp_18", "eacp_19", "eacp_20", "eacp_21", "eacp_22", "eacp_23", "eacp_24", "eacp_25", "eacp_26", "eacp_27", "eacp_28", "eacp_29", "eacp_30")], na.rm = TRUE) # a = 0.87
# EAC anxiety
psych::alpha(eac_data_t1[c("eacp_31", "eacp_32", "eacp_33", "eacp_34", "eacp_35", "eacp_36", "eacp_37", "eacp_38", "eacp_39", "eacp_40", "eacp_41", "eacp_42", "eacp_43", "eacp_44", "eacp_45")], na.rm = TRUE) # a = 0.81



# Calculate T3 alpha 
eac_data_t3 <- eac_data %>% filter(time == "T3")

# Child report
# EAC sadness
psych::alpha(eac_data_t3[c("eacc_1", "eacc_2", "eacc_3", "eacc_4", "eacc_5", "eacc_6", "eacc_7", "eacc_8", "eacc_9", "eacc_10", "eacc_11", "eacc_12", "eacc_13", "eacc_14", "eacc_15")], na.rm = TRUE) # a = 0.8
# EAC anger
psych::alpha(eac_data_t3[c("eacc_16", "eacc_17", "eacc_18", "eacc_19", "eacc_20", "eacc_21", "eacc_22", "eacc_23", "eacc_24", "eacc_25", "eacc_26", "eacc_27", "eacc_28", "eacc_29", "eacc_30")], na.rm = TRUE) # a = 0.82
# EAC anxiety
psych::alpha(eac_data_t3[c("eacc_31", "eacc_32", "eacc_33", "eacc_34", "eacc_35", "eacc_36", "eacc_37", "eacc_38", "eacc_39", "eacc_40", "eacc_41", "eacc_42", "eacc_43", "eacc_44", "eacc_45")], na.rm = TRUE) # a = 0.78


# Parent report
# EAC sadness
psych::alpha(eac_data_t3[c("eacp_1", "eacp_2", "eacp_3", "eacp_4", "eacp_5", "eacp_6", "eacp_7", "eacp_8", "eacp_9", "eacp_10", "eacp_11", "eacp_12", "eacp_13", "eacp_14", "eacp_15")], na.rm = TRUE) # a = 0.73
# EAC anger
psych::alpha(eac_data_t3[c("eacp_16", "eacp_17", "eacp_18", "eacp_19", "eacp_20", "eacp_21", "eacp_22", "eacp_23", "eacp_24", "eacp_25", "eacp_26", "eacp_27", "eacp_28", "eacp_29", "eacp_30")], na.rm = TRUE) # a = 0.8
# EAC anxiety
psych::alpha(eac_data_t3[c("eacp_31", "eacp_32", "eacp_33", "eacp_34", "eacp_35", "eacp_36", "eacp_37", "eacp_38", "eacp_39", "eacp_40", "eacp_41", "eacp_42", "eacp_43", "eacp_44", "eacp_45")], na.rm = TRUE) # a = 0.77


###### EAC scoring ----------------
# The same scoring approach as the previous TINT trial, Havighurst 2015)

# EAC child report
# create total emotion  dismissing and subscales by emotions 
eac_data <- eac_data %>% mutate(eac_dismissing_sad_c= 
                          eacc_1 + eacc_2 +  eacc_3 + eacc_4 + eacc_5 +  eacc_6 + eacc_7 + eacc_8 + eacc_9 +
                          eacc_10+ eacc_11 + eacc_12 + eacc_13 + eacc_14 +  eacc_15)
eac_data <- eac_data %>% mutate(eac_dismissing_angry_c= 
                          eacc_16 + eacc_17 +  eacc_18 + eacc_19 + eacc_20 +  eacc_21 + eacc_22 + eacc_23 +
                          eacc_24 + eacc_25+ eacc_26 + eacc_27 + eacc_28 + eacc_29 +  eacc_30)
eac_data <- eac_data %>% mutate(eac_dismissing_anxious_c= 
                          eacc_31 + eacc_32 +  eacc_33 + eacc_34 + eacc_35 +  eacc_36 + eacc_37 + eacc_38 +
                          eacc_39 + eacc_40+ eacc_41 + eacc_42 + eacc_43 + eacc_44 +  eacc_45)



# EAC parent report 
eac_data <- eac_data %>% mutate(eac_dismissing_sad_p= 
                          eacp_1 + eacp_2 +  eacp_3 + eacp_4 + eacp_5 +  eacp_6 + eacp_7 + eacp_8 + eacp_9 +
                          eacp_10+ eacp_11 + eacp_12 + eacp_13 + eacp_14 +  eacp_15)
eac_data <- eac_data %>% mutate(eac_dismissing_angry_p= 
                          eacp_16 + eacp_17 +  eacp_18 + eacp_19 + eacp_20 +  eacp_21 + eacp_22 + eacp_23 +
                          eacp_24 + eacp_25+ eacp_26 + eacp_27 + eacp_28 + eacp_29 +  eacp_30)
eac_data <- eac_data %>% mutate(eac_dismissing_anxious_p= 
                          eacp_31 + eacp_32 +  eacp_33 + eacp_34 + eacp_35 +  eacp_36 + eacp_37 + eacp_38 +
                          eacp_39 + eacp_40+ eacp_41 + eacp_42 + eacp_43 + eacp_44 +  eacp_45)

eac_data <- eac_data %>%
  mutate(across(c(eac_dismissing_angry_c,eac_dismissing_anxious_c,eac_dismissing_sad_c,eac_dismissing_angry_p,eac_dismissing_anxious_p,eac_dismissing_sad_p), ~ . / 15))


eac_data <- eac_data %>% dplyr::select(tintb_id,group,time, eac_dismissing_angry_c,eac_dismissing_anxious_c,eac_dismissing_sad_c, eac_dismissing_angry_p,eac_dismissing_anxious_p,eac_dismissing_sad_p)




