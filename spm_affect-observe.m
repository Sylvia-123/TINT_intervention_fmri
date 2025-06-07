%-----------------------------------------------------------------------
% Job saved on 10-Apr-2024 12:24:50 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
spm('Defaults','fMRI');
spm_jobman('initcfg');

%-----------------------------------------------------------------------
matlabbatch{1}.spm.stats.factorial_design.dir = {'/data/netapp02/work/Sylvia_Lin/2nd-level/intervention_May2024/affect-label/AffectGtObserve'};
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(1).name = 'subject';
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(1).dept = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(1).variance = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(1).gmsca = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(1).ancova = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(2).name = 'group';
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(2).dept = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(2).variance = 1;
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(2).gmsca = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(2).ancova = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(3).name = 'timepoint';
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(3).dept = 1;
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(3).variance = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(3).gmsca = 0;
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fac(3).ancova = 0;
%%
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fsuball.specall.scans = {
    
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T001/func/task-affectLabel/sub-T001_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T001_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T006/func/task-affectLabel/sub-T006_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T006_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T014/func/task-affectLabel/sub-T014_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T014_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T025/func/task-affectLabel/sub-T025_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T025_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T042/func/task-affectLabel/sub-T042_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T042_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T046/func/task-affectLabel/sub-T046_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T046_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T071/func/task-affectLabel/sub-T071_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T071_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T155/func/task-affectLabel/sub-T155_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T155_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T164/func/task-affectLabel/sub-T164_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T164_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T173/func/task-affectLabel/sub-T173_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T173_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T179/func/task-affectLabel/sub-T179_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T179_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T193/func/task-affectLabel/sub-T193_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T193_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T252/func/task-affectLabel/sub-T252_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T252_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T288/func/task-affectLabel/sub-T288_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T288_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T293/func/task-affectLabel/sub-T293_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T293_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T310/func/task-affectLabel/sub-T310_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T310_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T320/func/task-affectLabel/sub-T320_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T320_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T322/func/task-affectLabel/sub-T322_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T322_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T392/func/task-affectLabel/sub-T392_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T392_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T420/func/task-affectLabel/sub-T420_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T420_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T449/func/task-affectLabel/sub-T449_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T449_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T476/func/task-affectLabel/sub-T476_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T476_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T486/func/task-affectLabel/sub-T486_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T486_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T488/func/task-affectLabel/sub-T488_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T488_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T516/func/task-affectLabel/sub-T516_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T516_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T521/func/task-affectLabel/sub-T521_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T521_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T565/func/task-affectLabel/sub-T565_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T565_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T016/func/task-affectLabel/sub-T016_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T016_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T019/func/task-affectLabel/sub-T019_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T019_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T030/func/task-affectLabel/sub-T030_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T030_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T034/func/task-affectLabel/sub-T034_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T034_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T036/func/task-affectLabel/sub-T036_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T036_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T060/func/task-affectLabel/sub-T060_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T060_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T061/func/task-affectLabel/sub-T061_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T061_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T089/func/task-affectLabel/sub-T089_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T089_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T108/func/task-affectLabel/sub-T108_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T108_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T212/func/task-affectLabel/sub-T212_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T212_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T213/func/task-affectLabel/sub-T213_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T213_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T230/func/task-affectLabel/sub-T230_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T230_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T285/func/task-affectLabel/sub-T285_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T285_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T323/func/task-affectLabel/sub-T323_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T323_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T339/func/task-affectLabel/sub-T339_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T339_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T341/func/task-affectLabel/sub-T341_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T341_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T344/func/task-affectLabel/sub-T344_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T344_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T357/func/task-affectLabel/sub-T357_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T357_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T371/func/task-affectLabel/sub-T371_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T371_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T397/func/task-affectLabel/sub-T397_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T397_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T450/func/task-affectLabel/sub-T450_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T450_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T532/func/task-affectLabel/sub-T532_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T532_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T534/func/task-affectLabel/sub-T534_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T534_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T539/func/task-affectLabel/sub-T539_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T539_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level/affect-label/sub-T577/func/task-affectLabel/sub-T577_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
     '/data/netapp02/work/Sylvia_Lin/1st-level-T3/affect-label/sub-T577_task-affectLabel_feature-taskBased_taskcontrast-AffectLabelGtObserve_stat-z_statmap.nii,1'
    
                                                                              };
%%
%%
matlabbatch{1}.spm.stats.factorial_design.des.fblock.fsuball.specall.imatrix = [1 1 1 1
                                                                                1 1 1 2
                                                                                1 2 1 1
                                                                                1 2 1 2
                                                                                1 3 1 1
                                                                                1 3 1 2
                                                                                1 4 1 1
                                                                                1 4 1 2
                                                                                1 5 1 1
                                                                                1 5 1 2
                                                                                1 6 1 1
                                                                                1 6 1 2
                                                                                1 7 1 1
                                                                                1 7 1 2
                                                                                1 8 1 1
                                                                                1 8 1 2
                                                                                1 9 1 1
                                                                                1 9 1 2
                                                                                1 10 1 1
                                                                                1 10 1 2
                                                                                1 11 1 1
                                                                                1 11 1 2
                                                                                1 12 1 1
                                                                                1 12 1 2
                                                                                1 13 1 1
                                                                                1 13 1 2
                                                                                1 14 1 1
                                                                                1 14 1 2
                                                                                1 15 1 1
                                                                                1 15 1 2
                                                                                1 16 1 1
                                                                                1 16 1 2
                                                                                1 17 1 1
                                                                                1 17 1 2
                                                                                1 18 1 1
                                                                                1 18 1 2
                                                                                1 19 1 1
                                                                                1 19 1 2
                                                                                1 20 1 1
                                                                                1 20 1 2
                                                                                1 21 1 1
                                                                                1 21 1 2
                                                                                1 22 1 1
                                                                                1 22 1 2
                                                                                1 23 1 1
                                                                                1 23 1 2
                                                                                1 24 1 1
                                                                                1 24 1 2
                                                                                1 25 1 1
                                                                                1 25 1 2
                                                                                1 26 1 1
                                                                                1 26 1 2
                                                                                1 27 1 1
                                                                                1 27 1 2
                                                                                1 28 2 1
                                                                                1 28 2 2
                                                                                1 29 2 1
                                                                                1 29 2 2
                                                                                1 30 2 1
                                                                                1 30 2 2
                                                                                1 31 2 1
                                                                                1 31 2 2
                                                                                1 32 2 1
                                                                                1 32 2 2
                                                                                1 33 2 1
                                                                                1 33 2 2
                                                                                1 34 2 1
                                                                                1 34 2 2
                                                                                1 35 2 1
                                                                                1 35 2 2
                                                                                1 36 2 1
                                                                                1 36 2 2
                                                                                1 37 2 1
                                                                                1 37 2 2
                                                                                1 38 2 1
                                                                                1 38 2 2
                                                                                1 39 2 1
                                                                                1 39 2 2
                                                                                1 40 2 1
                                                                                1 40 2 2
                                                                                1 41 2 1
                                                                                1 41 2 2
                                                                                1 42 2 1
                                                                                1 42 2 2
                                                                                1 43 2 1
                                                                                1 43 2 2
                                                                                1 44 2 1
                                                                                1 44 2 2
                                                                                1 45 2 1
                                                                                1 45 2 2
                                                                                1 46 2 1
                                                                                1 46 2 2
                                                                                1 47 2 1
                                                                                1 47 2 2
                                                                                1 48 2 1
                                                                                1 48 2 2
                                                                                1 49 2 1
                                                                                1 49 2 2
                                                                                1 50 2 1
                                                                                1 50 2 2
                                                                                1 51 2 1
                                                                                1 51 2 2
                                                                                1 52 2 1
                                                                                1 52 2 2];
%%
matlabbatch{1}.spm.stats.factorial_design.des.fblock.maininters{1}.inter.fnums = [2
                                                                                  3];
matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{2}.spm.stats.review.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{2}.spm.stats.review.display.matrix = 1;
matlabbatch{2}.spm.stats.review.print = 'ps';
matlabbatch{3}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{3}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{3}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{4}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{4}.spm.stats.con.consess{1}.fcon.name = 'interaction';
matlabbatch{4}.spm.stats.con.consess{1}.fcon.weights = [-0.5 0.5 0.5 -0.5];
matlabbatch{4}.spm.stats.con.consess{1}.fcon.sessrep = 'none';
matlabbatch{4}.spm.stats.con.delete = 0;

spm_jobman('run',matlabbatch)
