%-----------------------------------------------------------------------
% Job saved on 10-Apr-2025 12:24:50 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
spm('Defaults','fMRI');
spm_jobman('initcfg');
%-----------------------------------------------------------------------
matlabbatch{1}.spm.stats.factorial_design.dir = {'/data/netapp02/work/Sylvia_Lin/2nd-level/intervention_May2024/reappraisal/DowNegGtLookNeg'};
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
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T001/func/task-reappraisal/sub-T001_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T001_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T006/func/task-reappraisal/sub-T006_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T006_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T014/func/task-reappraisal/sub-T014_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T014_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T025/func/task-reappraisal/sub-T025_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T025_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T042/func/task-reappraisal/sub-T042_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T042_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T046/func/task-reappraisal/sub-T046_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T046_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T071/func/task-reappraisal/sub-T071_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T071_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T155/func/task-reappraisal/sub-T155_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T155_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T173/func/task-reappraisal/sub-T173_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T173_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T179/func/task-reappraisal/sub-T179_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T179_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T193/func/task-reappraisal/sub-T193_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T193_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T252/func/task-reappraisal/sub-T252_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T252_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T288/func/task-reappraisal/sub-T288_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T288_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T293/func/task-reappraisal/sub-T293_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T293_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T310/func/task-reappraisal/sub-T310_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T310_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T320/func/task-reappraisal/sub-T320_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T320_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T322/func/task-reappraisal/sub-T322_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T322_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T392/func/task-reappraisal/sub-T392_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T392_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T420/func/task-reappraisal/sub-T420_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T420_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T449/func/task-reappraisal/sub-T449_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T449_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T476/func/task-reappraisal/sub-T476_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T476_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T486/func/task-reappraisal/sub-T486_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T486_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T488/func/task-reappraisal/sub-T488_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T488_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T516/func/task-reappraisal/sub-T516_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T516_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T521/func/task-reappraisal/sub-T521_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T521_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T565/func/task-reappraisal/sub-T565_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T565_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T016/func/task-reappraisal/sub-T016_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T016_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T019/func/task-reappraisal/sub-T019_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T019_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T030/func/task-reappraisal/sub-T030_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T030_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T034/func/task-reappraisal/sub-T034_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T034_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T036/func/task-reappraisal/sub-T036_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T036_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T060/func/task-reappraisal/sub-T060_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T060_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T061/func/task-reappraisal/sub-T061_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T061_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T089/func/task-reappraisal/sub-T089_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T089_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T104/func/task-reappraisal/sub-T104_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T104_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T108/func/task-reappraisal/sub-T108_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T108_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T212/func/task-reappraisal/sub-T212_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T212_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T213/func/task-reappraisal/sub-T213_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T213_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T230/func/task-reappraisal/sub-T230_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T230_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T323/func/task-reappraisal/sub-T323_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T323_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T339/func/task-reappraisal/sub-T339_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T339_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T341/func/task-reappraisal/sub-T341_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T341_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T344/func/task-reappraisal/sub-T344_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T344_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T357/func/task-reappraisal/sub-T357_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T357_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T371/func/task-reappraisal/sub-T371_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T371_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T397/func/task-reappraisal/sub-T397_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T397_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T450/func/task-reappraisal/sub-T450_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T450_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T532/func/task-reappraisal/sub-T532_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T532_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T534/func/task-reappraisal/sub-T534_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T534_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T539/func/task-reappraisal/sub-T539_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T539_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level/reappraisal/sub-T577/func/task-reappraisal/sub-T577_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
    '/data/netapp02/work/Sylvia_Lin/1st-level-T3/reappraisal/sub-T577_task-reappraisal_feature-taskBased_taskcontrast-DowNegGtLookNeg_stat-z_statmap.nii,1'
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
                                                                                1 27 2 1
                                                                                1 27 2 2
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
                                                                                1 51 2 2];
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
