
# Intervention effects on brain function (activation) 
# This file includes mixed models & correlation analysis
# T3 Behav (N = 60): TINT n = 30 (remove T017, T101, T180, T376, T537) for TINT, CONTROL n = 30 (remove T090, T105, T367, T429, T550) 
# T3 MRI (N = 56): TINT n = 29 (remove T010 for TINT), CONTROL n = 27 (remove T189, T282, T370)
# Affect label (N = 52): TINT n = 27 (remove T183, T099), CONTROL n = 25 (remove T118, T104)
# Reappraisal (N = 51): TINT n = 26 (remove T164, T183, T099), CONTROL n = 25 (remove T118, T285)


# Load packages and data
library(readxl)
library(dplyr)
library(emmeans)
library(afex)
library(tidyr)
library(corrr)
library(Hmisc) 
options(scipen = 999)

analysis_data <- read_excel("analysis_data.xlsx")

######### Primary Outcome: fMRI ############

# Affect Labeling mixed models ----------------------------------
# Affect label > observe (20,32,38) SFG

ObserveSFG <- lmer(ObserveSFG ~ group * time +  (1 | tintb_id), data = analysis_data)
summary(ObserveSFG)
confint(ObserveSFG, level = 0.95, method = "Wald")
emm_sfg <- emmeans(ObserveSFG, ~ group*time)
summary (contrast(emm_sfg, method = "revpairwise", by = "group"), infer = TRUE)

# Reappraisal mixed models ----------------------------------
# Reappraisal > Look Neg (44,40,-10) IFG

ReappraisalIFG <- lmer(ReappraisalIFG ~ group * time + (1 | tintb_id), data = analysis_data)
summary(ReappraisalIFG)
confint(ReappraisalIFG, level = 0.95, method = "Wald")
emm_ifg <- emmeans(ReappraisalIFG, ~ group*time)
summary (contrast(emm_ifg, method = "revpairwise", by = "group"), infer = TRUE)


######### Secondary outcome: Correlation between brain & behavior #########

# calculate difference score
diff_data <- analysis_data %>%
  select(tintb_id, group, time, ObserveSFG, ReappraisalIFG, rcads_c_total, rcads_c_dep, rcads_c_anx, rcads_p_total,rcads_p_dep, rcads_p_anx, eac_dismissing_angry_c,eac_dismissing_anxious_c,eac_dismissing_sad_c, eac_dismissing_angry_p,eac_dismissing_anxious_p,eac_dismissing_sad_p) %>%
  pivot_wider(names_from = time, values_from = c(ObserveSFG, ReappraisalIFG, rcads_c_total, rcads_c_dep, rcads_c_anx, rcads_p_total,rcads_p_dep, rcads_p_anx, eac_dismissing_angry_c,eac_dismissing_anxious_c,eac_dismissing_sad_c, eac_dismissing_angry_p,eac_dismissing_anxious_p,eac_dismissing_sad_p)) %>%
  mutate(ObserveSFG_diff = ObserveSFG_T3 - ObserveSFG_T1,
         ReappraisalIFG_diff = ReappraisalIFG_T3 - ReappraisalIFG_T1,
         rcads_c_total_diff = rcads_c_total_T3 - rcads_c_total_T1,
         rcads_c_anx_diff = rcads_c_anx_T3 - rcads_c_anx_T1,
         rcads_c_dep_diff = rcads_c_dep_T3 - rcads_c_dep_T1,
         rcads_p_total_diff = rcads_p_total_T3 - rcads_p_total_T1,
         rcads_p_anx_diff = rcads_p_anx_T3 - rcads_p_anx_T1,
         rcads_p_dep_diff = rcads_p_dep_T3 - rcads_p_dep_T1,
         eac_sad_c_diff = eac_dismissing_sad_c_T3 - eac_dismissing_sad_c_T1,
         eac_angry_c_diff = eac_dismissing_angry_c_T3 - eac_dismissing_angry_c_T1,
         eac_anxious_c_diff = eac_dismissing_anxious_c_T3 - eac_dismissing_anxious_c_T1,
         eac_sad_p_diff = eac_dismissing_sad_p_T3 - eac_dismissing_sad_p_T1,
         eac_angry_p_diff = eac_dismissing_angry_p_T3 - eac_dismissing_angry_p_T1,
         eac_anxious_p_diff = eac_dismissing_anxious_p_T3 - eac_dismissing_anxious_p_T1) %>%
  select(tintb_id, group, ObserveSFG_diff,ReappraisalIFG_diff, rcads_c_total_diff, rcads_c_anx_diff, rcads_c_dep_diff, rcads_p_total_diff, rcads_p_anx_diff, rcads_p_dep_diff,eac_sad_c_diff,eac_angry_c_diff,eac_anxious_c_diff, eac_sad_p_diff,
         eac_angry_p_diff,eac_anxious_p_diff)

# write.xlsx(diff_data, "diff_data.xlsx")

# correlation analysis-----------------------------------
# create dataset with numbers only
corr_data <- diff_data[, -c(1:2)]
cor_matrix <- correlate(corr_data)

# FDR corrected p values
# SFG & RCADS
corr_data_sfg <- corr_data %>% select(-"ReappraisalIFG_diff",-starts_with("eac"))
p_values <- Hmisc::rcorr(as.matrix(corr_data_sfg))$P
p_fdr_matrix <- matrix(p.adjust(as.vector(p_values), method = "fdr"),
                       nrow = nrow(p_values),
                       dimnames = dimnames(p_values))


# SFG & EAC
corr_data_sfg <- corr_data %>% select(-"ReappraisalIFG_diff",-starts_with("rcads"))
p_values <- Hmisc::rcorr(as.matrix(corr_data_sfg))$P
p_fdr_matrix <- matrix(p.adjust(as.vector(p_values), method = "fdr"),
                       nrow = nrow(p_values),
                       dimnames = dimnames(p_values))

# IFG & RCADS
corr_data_ifg <- corr_data %>%
  select(-"ObserveSFG_diff", -starts_with("eac"))
p_values <- Hmisc::rcorr(as.matrix(corr_data_ifg))$P
p_fdr_matrix <- matrix(p.adjust(as.vector(p_values), method = "fdr"),
                       nrow = nrow(p_values),
                       dimnames = dimnames(p_values))

# IFG & EAC
corr_data_ifg <- corr_data %>%
  select(-"ObserveSFG_diff", -starts_with("rcads"))
p_values <- Hmisc::rcorr(as.matrix(corr_data_ifg))$P
p_fdr_matrix <- matrix(p.adjust(as.vector(p_values), method = "fdr"),
                       nrow = nrow(p_values),
                       dimnames = dimnames(p_values))






#### Supplementary results: Behavioral Results #########

## EAC child report ---------------

eac_dismissing_sad_c <- lmer(eac_dismissing_sad_c ~ group * time + (1 | tintb_id), data = analysis_data)
summary(eac_dismissing_sad_c) # p = 0.009

eac_dismissing_anxious_c <- lmer(eac_dismissing_anxious_c ~ group * time + (1 | tintb_id), data = analysis_data)
summary(eac_dismissing_anxious_c)

eac_dismissing_angry_c <- lmer(eac_dismissing_angry_c ~ group * time + (1 | tintb_id), data = analysis_data)
summary(eac_dismissing_angry_c)


## EAC parent report ----------------
eac_dismissing_sad_p <- lmer(eac_dismissing_sad_p ~ group * time + (1 | tintb_id), data = analysis_data)
summary(eac_dismissing_sad_p)

eac_dismissing_anxious_p <- lmer(eac_dismissing_anxious_p ~ group * time + (1 | tintb_id), data = analysis_data)
summary(eac_dismissing_anxious_p)

eac_dismissing_angry_p <- lmer(eac_dismissing_angry_p ~ group * time + (1 | tintb_id), data = analysis_data)
summary(eac_dismissing_angry_p) 


## RCADS child report ----------------------------------
rcads_c_total <- lmer(rcads_c_total ~ group * time + (1 | tintb_id), data = analysis_data)
summary(rcads_c_total)

rcads_c_dep <- lmer(rcads_c_dep ~ group * time + (1 | tintb_id), data = analysis_data)
summary(rcads_c_dep)

rcads_c_anx <- lmer(rcads_c_anx ~ group * time + (1 | tintb_id), data = analysis_data)
summary(rcads_c_anx)

## RCADS parent report ----------------------------------
rcads_p_total <- lmer(rcads_p_total ~ group * time + (1 | tintb_id), data = analysis_data)
summary(rcads_p_total) # p = 0.0256

rcads_p_dep <- lmer(rcads_p_dep ~ group * time + (1 | tintb_id), data = analysis_data)
summary(rcads_p_dep)

rcads_p_anx <- lmer(rcads_p_anx ~ group * time + (1 | tintb_id), data = analysis_data)
summary(rcads_p_anx) # p = 0.0186


## Supplementary contrasts (Affect label > shape) ----------------------------------
# Affect label > shape (12,22,54) SFG
ShapeSFG <- lmer(ShapeSFG ~ group * time + (1 | tintb_id), data = analysis_data)
summary(ShapeSFG)

# Affect label > shape (48,-66,30) LOG
ShapeLOG <- lmer(ShapeLOG ~ group * time + (1 | tintb_id), data = analysis_data)
summary(ShapeLOG)

# Affect label > shape (-42,26,-8) MFG
ShapeMFG <- lmer(ShapeMFG ~ group * time + (1 | tintb_id), data = analysis_data)
summary(ShapeMFG)

# Affect label > shape (48,30,10) IFG
ShapeIFG <- lmer(ShapeIFG ~ group * time + (1 | tintb_id), data = analysis_data)
summary(ShapeIFG)


