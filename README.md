# TINT_fmri_activation
This paper examines the impact of TINT parenting intervention on brain function in early adolescent girls with elevated internalizing symptoms.

## Primary outcomes
### Intervention effects on neural activation during emotion regulation (group * time interaction effect).
Two fMRI tasks: affect labeling (Affect label > Observe contrast), and reappraisal (Reappraisal > Look negative contrast).
Parametric analysis performed in SPM12 using a flexible factorial design: https://www.nemotos.net/resources/conweights.pdf
Non-parametric analysis performed in SPM12 using Sandwich Estimator (SwE) toolbox:https://www.nisox.org/Software/SwE/
BOLD signal for each participant at each timepoint was extracted from a 5mm radius sphere around the peak MNI for follow-up analysis using mixed effects models in R
spm_affect-observe.m; spm_reappraisal-lookneg.m; SwE_affect-observe.m; SwE_reappraisal-lookneg.m


## Secondary outcomes
Correlations between Δ BOLD signal (clusters showing significant group*time) and Δ EAC/RCADS

