This paper examines the impact of TINT parenting intervention on brain function in early adolescent girls with elevated internalizing symptoms.
- fMRI analysis conducted in SPM12
- brain-behavior and behavioral analysis conducted in R 4.3.2

## Primary outcomes
- Intervention effects on neural activation during emotion regulation (group * time interaction effect).
- Two fMRI tasks: affect labeling (Affect label > Observe contrast), and reappraisal (Reappraisal > Look negative contrast).
- Parametric analysis performed in SPM12 using a flexible factorial design
- Non-parametric analysis performed in SPM12 using Sandwich Estimator (SwE) 
- BOLD signal for each participant at each timepoint was extracted from a 5mm radius sphere around the peak MNI for follow-up analysis using mixed effects models in R


## Secondary outcomes
- Correlations between Δ BOLD signal (clusters showing significant group*time) and Δ EAC/RCADS

### Useful resources
- Sandwich Estimator (SwE) toolbox:https://www.nisox.org/Software/SwE/; https://groups.google.com/g/swe-toolbox/c/Gk3mybwW5aA/m/twi8fY1RBAAJ
- Contrast weight for flexible factorial design: https://www.researchgate.net/profile/Darren-Gitelman/publication/267779738_Contrast_weights_in_flexible_factorial_design_with_multiple_groups_of_subjects/links/56defe8a08aec8c022cf3629/Contrast-weights-in-flexible-factorial-design-with-multiple-groups-of-subjects.pdf

