
# JAMA Pediatrics
# Created by Sylvia Lin

# Load packages, data, and define colour palatte
library(readr)
library(readxl)
library(dplyr)
library(ggplot2)
library(cowplot)
library(tidyr)


diff_data <- read_excel("diff_data.xlsx")
custom_palette <- c("#374E55FF", "#DF8F44FF")


######### PRIMARY OUTCOME #########

# Figure 2
# Affect label > Observe (SFG cluster)
plot_data_affect <- diff_data %>%
  mutate(Baseline = 0) %>%
  rename(`Follow-up` = ObserveSFG_diff) %>%
  pivot_longer(cols = c(Baseline, `Follow-up`), names_to = "time", values_to = "SFG_change") %>%
  mutate(time = factor(time, levels = c("Baseline", "Follow-up")))%>% select(tintb_id,group,time,SFG_change)

SFG_figure <- ggplot(plot_data_affect, aes(x = time, y = SFG_change, group = tintb_id, color = group)) +
  geom_line(alpha = 1) +
  geom_point(size = 0) +
  stat_summary(aes(group = group, color = group), 
               fun.data = mean_se, geom = "errorbar", width = 0.05, size = 1) +
  stat_summary(aes(group = group, color = group), 
               fun = mean, geom = "point", size = 5) + 
  labs(x = "Time", y = "SFG BOLD Signal Change") +
  scale_color_manual(values = custom_palette) +
  scale_y_continuous(labels = scales::number_format(accuracy = 0.1)) +
  theme_minimal(base_size = 40)+
  theme(legend.position = "none",
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        axis.line = element_line(color = "black", size = 0.5))

# Reappraisal > Look neg (IFG cluster)
plot_data_reappraisal <- diff_data %>%
  mutate(Baseline = 0) %>%
  rename(`Follow-up` = ReappraisalIFG_diff) %>%
  pivot_longer(cols = c(Baseline, `Follow-up`), names_to = "time", values_to = "IFG_change") %>%
  mutate(time = factor(time, levels = c("Baseline", "Follow-up")))%>% select(tintb_id,group,time,IFG_change)

IFG_figure <- ggplot(plot_data_reappraisal, aes(x = time, y = IFG_change, group = tintb_id, color = group)) +
  geom_line(alpha = 1) +
  geom_point(size = 0) +
  stat_summary(aes(group = group, color = group), 
               fun.data = mean_se, geom = "errorbar", width = 0.05, size = 1) +
  stat_summary(aes(group = group, color = group), 
               fun = mean, geom = "point", size = 5) + 
  labs(x = "Time", y = "IFG BOLD Signal Change") +
  scale_color_manual(values = custom_palette) +
  theme_minimal(base_size = 40)+
  theme(legend.position = "none",
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        axis.line = element_line(color = "black", size = 0.5))

ggsave("SFG.tiff", SFG_figure, dpi = 600, width = 12, height = 10)
ggsave("IFG.tiff", IFG_figure, dpi = 600, width = 12, height = 10)



######### SECONDARY OUTCOME #########

# Function to create scatterplots with regression lines (sig)
scatterplot <- function(data, x_var, y_var, x_label, y_label, palette) {
  ggplot(data, aes_string(x = x_var, y = y_var)) +
    geom_point(aes(color = group), position = position_jitter(width = 0.1), shape = 19, size = 3) +
    geom_smooth(method = "lm", color = "black", se = TRUE, size = 1) +  # single line
    scale_color_manual(values = palette) +
    labs(x = x_label, y = y_label) +
    theme_minimal(base_size = 40) + 
    theme(
      legend.position = "none",
      panel.border = element_rect(color = "black", fill = NA, size = 0.3),
      panel.grid.major = element_blank(), 
      panel.grid.minor = element_blank(),  
      axis.title.x = element_text(size = 30), 
      axis.title.y = element_text(size = 30), 
      axis.text.x = element_text(size = 20), 
      axis.text.y = element_text(size = 20),
      legend.title = element_blank()
    )
}


plot1 <- scatterplot(diff_data, "ObserveSFG_diff", "eac_sad_c_diff", "Change in SFG BOLD Signal", "Change in EAC Sadness (Adolescent Report)", custom_palette)
plot2 <- scatterplot(diff_data, "ObserveSFG_diff", "eac_anxious_c_diff", "Change in SFG BOLD Signal", "Change in EAC Anxiety (Adolescent Report)", custom_palette) 
plot3 <- scatterplot(diff_data, "ReappraisalIFG_diff", "rcads_c_anx_diff", "Change in IFG BOLD Signal", "Change in RCADS Anxiety (Adolescent Report)", custom_palette)
plot4 <- scatterplot(diff_data, "ReappraisalIFG_diff", "rcads_c_total_diff", "Change in IFG BOLD Signal", "Change in RCADS Internalizing (Adolescent Report)", custom_palette)

ggsave("fig3_plot1.tiff", plot1, dpi = 300, width = 15, height = 15)
ggsave("fig3_plot2.tiff", plot2, dpi = 300, width = 15, height = 15)
ggsave("fig3_plot3.tiff", plot3, dpi = 300, width = 15, height = 15)
ggsave("fig3_plot4.tiff", plot4, dpi = 300, width = 15, height = 15)



# ---- Supplementary figures -----
# Load necessary libraries
library(ggdist)
library(patchwork)
library(ggpubr)

## EAC --------------------------------------
# Create the raincloud plot for EAC_C_sadness
eac_c_sadness <- ggplot(analysis_data, aes(x = time, y = eac_dismissing_sad_c, fill = group)) +
  # Raincloud plot
  stat_halfeye(
    adjust = 0.5,                # Smoothing adjustment
    justification = -0.2,        # Offset violin plot
    .width = 0,                  # Disable median/CI lines
    point_colour = NA,           # No points in the violin
    alpha = 0.6                  # Transparency
  ) +
  # Boxplot overlay
  geom_boxplot(
    width = 0.12,                # Narrow boxplots
    outlier.shape = NA,          # Remove outlier points
    position = position_dodge(width = 0.2)  # Adjusted position for clarity
  ) +
  # Jittered raw data points with updated size
  geom_jitter(
    aes(color = group),          # Color points by group
    alpha = 0.6,                 # Transparency for raw points
    size = 2,                    # Consistent point size
    position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.2)  # Adjust position
  ) +
  # Custom colors for control and intervention groups
  scale_fill_manual(values = custom_palette) +
  scale_color_manual(values = custom_palette) +
  # Add minimal theme and labels
  labs(
    x = "Time",                 # X-axis label
    y = "EAC Sadness (Adolescent Report) **",  # Y-axis label
    fill = NULL,
    color = NULL
  ) +
  theme_minimal(base_size = 16) +  # Consistent base size
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.3), # Add border
    panel.grid.major = element_blank(),        # Remove major grid lines
    panel.grid.minor = element_blank(),        # Remove minor grid lines
    axis.title.x = element_text(size = 18,hjust = 0.4, vjust = -1),    # Set X-axis title size
    axis.title.y = element_text(size = 18,vjust = +2),    # Set Y-axis title size
    axis.text.x = element_text(size = 14),     # X-axis text size
    axis.text.y = element_text(size = 14),    # Y-axis text size
    legend.position = "none" 
  )



# Create the raincloud plot for EAC_C_anxiety
eac_c_fear <- ggplot(analysis_data, aes(x = time, y = eac_dismissing_anxious_c, fill = group)) +
  # Raincloud plot
  stat_halfeye(
    adjust = 0.5,                # Smoothing adjustment
    justification = -0.2,        # Offset violin plot
    .width = 0,                  # Disable median/CI lines
    point_colour = NA,           # No points in the violin
    alpha = 0.6                  # Transparency
  ) +
  # Boxplot overlay
  geom_boxplot(
    width = 0.12,                # Narrow boxplots
    outlier.shape = NA,          # Remove outlier points
    position = position_dodge(width = 0.2)  # Adjusted position for clarity
  ) +
  # Jittered raw data points with updated size
  geom_jitter(
    aes(color = group),          # Color points by group
    alpha = 0.6,                 # Transparency for raw points
    size = 2,                    # Consistent point size
    position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.2)  # Adjust position
  ) +
  # Custom colors for control and intervention groups
  scale_fill_manual(values = custom_palette) +
  scale_color_manual(values = custom_palette) +
  # Add minimal theme and labels
  labs(
    x = "Time",                 # X-axis label
    y = "EAC Anxiety (Adolescent Report)",  # Y-axis label
    fill = NULL,
    color = NULL
  ) +
  theme_minimal(base_size = 16) +  # Consistent base size
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.3), # Add border
    panel.grid.major = element_blank(),        # Remove major grid lines
    panel.grid.minor = element_blank(),        # Remove minor grid lines
    axis.title.x = element_text(size = 18,hjust = 0.4, vjust = -1),    # Set X-axis title size
    axis.title.y = element_text(size = 18,vjust = +2),    # Set Y-axis title size
    axis.text.x = element_text(size = 14),     # X-axis text size
    axis.text.y = element_text(size = 14),     # Y-axis text size
    legend.position = "none" 
  )


# Create the raincloud plot for EAC_C_anger
eac_c_anger <- ggplot(analysis_data, aes(x = time, y = eac_dismissing_angry_c, fill = group)) +
  # Raincloud plot
  stat_halfeye(
    adjust = 0.5,                # Smoothing adjustment
    justification = -0.2,        # Offset violin plot
    .width = 0,                  # Disable median/CI lines
    point_colour = NA,           # No points in the violin
    alpha = 0.6                  # Transparency
  ) +
  # Boxplot overlay
  geom_boxplot(
    width = 0.12,                # Narrow boxplots
    outlier.shape = NA,          # Remove outlier points
    position = position_dodge(width = 0.2)  # Adjusted position for clarity
  ) +
  # Jittered raw data points with updated size
  geom_jitter(
    aes(color = group),          # Color points by group
    alpha = 0.6,                 # Transparency for raw points
    size = 2,                    # Consistent point size
    position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.2)  # Adjust position
  ) +
  # Custom colors for control and intervention groups
  scale_fill_manual(values = custom_palette) +
  scale_color_manual(values = custom_palette) +
  # Add minimal theme and labels
  labs(
    x = "Time",                 # X-axis label
    y = "EAC Anger (Adolescent Report)",  # Y-axis label
    fill = NULL,
    color = NULL
  ) +
  theme_minimal(base_size = 16) +  # Consistent base size
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.3), # Add border
    panel.grid.major = element_blank(),        # Remove major grid lines
    panel.grid.minor = element_blank(),        # Remove minor grid lines
    axis.title.x = element_text(size = 18,hjust = 0.4, vjust = -1),    # Set X-axis title size
    axis.title.y = element_text(size = 18,vjust = +2),    # Set Y-axis title size
    axis.text.x = element_text(size = 14),     # X-axis text size
    axis.text.y = element_text(size = 14),     # Y-axis text size
    legend.position = "none" 
  )


# Create the raincloud plot for EAC_P_sadness
eac_p_sadness <- ggplot(analysis_data, aes(x = time, y = eac_dismissing_sad_p, fill = group)) +
  # Raincloud plot
  stat_halfeye(
    adjust = 0.5,                # Smoothing adjustment
    justification = -0.2,        # Offset violin plot
    .width = 0,                  # Disable median/CI lines
    point_colour = NA,           # No points in the violin
    alpha = 0.6                  # Transparency
  ) +
  # Boxplot overlay
  geom_boxplot(
    width = 0.12,                # Narrow boxplots
    outlier.shape = NA,          # Remove outlier points
    position = position_dodge(width = 0.2)  # Adjusted position for clarity
  ) +
  # Jittered raw data points with updated size
  geom_jitter(
    aes(color = group),          # Color points by group
    alpha = 0.6,                 # Transparency for raw points
    size = 2,                    # Consistent point size
    position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.2)  # Adjust position
  ) +
  # Custom colors for control and intervention groups
  scale_fill_manual(values = custom_palette) +
  scale_color_manual(values = custom_palette) +
  # Add minimal theme and labels
  labs(
    x = "Time",                 # X-axis label
    y = "EAC Sadness (Mother Report)",  # Y-axis label
    fill = "Group",
    color = "Group"
  ) +
  theme_minimal(base_size = 16) +  # Consistent base size
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.3), # Add border
    panel.grid.major = element_blank(),        # Remove major grid lines
    panel.grid.minor = element_blank(),        # Remove minor grid lines
    axis.title.x = element_text(size = 18,hjust = 0.4, vjust = -1),    # Set X-axis title size
    axis.title.y = element_text(size = 18,vjust = +2),    # Set Y-axis title size
    axis.text.x = element_text(size = 14),     # X-axis text size
    axis.text.y = element_text(size = 14),     # Y-axis text size
    legend.position = "none" 
  )



# Create the raincloud plot for EAC_P_anxiety
eac_p_fear <- ggplot(analysis_data, aes(x = time, y = eac_dismissing_anxious_p, fill = group)) +
  # Raincloud plot
  stat_halfeye(
    adjust = 0.5,                # Smoothing adjustment
    justification = -0.2,        # Offset violin plot
    .width = 0,                  # Disable median/CI lines
    point_colour = NA,           # No points in the violin
    alpha = 0.6                  # Transparency
  ) +
  # Boxplot overlay
  geom_boxplot(
    width = 0.12,                # Narrow boxplots
    outlier.shape = NA,          # Remove outlier points
    position = position_dodge(width = 0.2)  # Adjusted position for clarity
  ) +
  # Jittered raw data points with updated size
  geom_jitter(
    aes(color = group),          # Color points by group
    alpha = 0.6,                 # Transparency for raw points
    size = 2,                    # Consistent point size
    position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.2)  # Adjust position
  ) +
  # Custom colors for control and intervention groups
  scale_fill_manual(values = custom_palette) +
  scale_color_manual(values = custom_palette) +
  # Add minimal theme and labels
  labs(
    x = "Time",                 # X-axis label
    y = "EAC Anxiety (Mother Report)",  # Y-axis label
    fill = "Group",
    color = "Group"
  ) +
  theme_minimal(base_size = 16) +  # Consistent base size
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.3), # Add border
    panel.grid.major = element_blank(),        # Remove major grid lines
    panel.grid.minor = element_blank(),        # Remove minor grid lines
    axis.title.x = element_text(size = 18,hjust = 0.4, vjust = -1),    # Set X-axis title size
    axis.title.y = element_text(size = 18,vjust = +2),    # Set Y-axis title size
    axis.text.x = element_text(size = 14),     # X-axis text size
    axis.text.y = element_text(size = 14),     # Y-axis text size
    legend.position = "none" 
  )


# Create the raincloud plot for EAC_P_anger
eac_p_anger <- ggplot(analysis_data, aes(x = time, y = eac_dismissing_angry_p, fill = group)) +
  # Raincloud plot
  stat_halfeye(
    adjust = 0.5,                # Smoothing adjustment
    justification = -0.2,        # Offset violin plot
    .width = 0,                  # Disable median/CI lines
    point_colour = NA,           # No points in the violin
    alpha = 0.6                  # Transparency
  ) +
  # Boxplot overlay
  geom_boxplot(
    width = 0.12,                # Narrow boxplots
    outlier.shape = NA,          # Remove outlier points
    position = position_dodge(width = 0.2)  # Adjusted position for clarity
  ) +
  # Jittered raw data points with updated size
  geom_jitter(
    aes(color = group),          # Color points by group
    alpha = 0.6,                 # Transparency for raw points
    size = 2,                    # Consistent point size
    position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.2)  # Adjust position
  ) +
  # Custom colors for control and intervention groups
  scale_fill_manual(values = custom_palette) +
  scale_color_manual(values = custom_palette) +
  # Add minimal theme and labels
  labs(
    x = "Time",                 # X-axis label
    y = "EAC Anger (Mother Report)",  # Y-axis label
    fill = "Group",
    color = "Group"
  ) +
  theme_minimal(base_size = 16) +  # Consistent base size
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.3), # Add border
    panel.grid.major = element_blank(),        # Remove major grid lines
    panel.grid.minor = element_blank(),        # Remove minor grid lines
    axis.title.x = element_text(size = 18,hjust = 0.4, vjust = -1),    # Set X-axis title size
    axis.title.y = element_text(size = 18,vjust = +2),    # Set Y-axis title size
    axis.text.x = element_text(size = 14),     # X-axis text size
    axis.text.y = element_text(size = 14),     # Y-axis text size
    legend.position = "none" 
  )


# Create a panel for EAC
eac_plot <- (eac_c_sadness + eac_c_fear + eac_c_anger) /
  (eac_p_sadness + eac_p_fear + eac_p_anger) +
  plot_annotation()


# Save the combined plot
ggsave(
  filename = "eac_plot.tiff",
  plot = eac_plot,
  dpi = 500,
  compression = "lzw",
  width = 16,    # Width of the entire panel
  height = 12    # Height of the entire panel
)




## RCADS --------------------------------------
# Create the raincloud plot for rcads_c_dep
rcads_c_dep <- ggplot(analysis_data, aes(x = time, y = rcads_c_dep, fill = group)) +
  # Raincloud plot
  stat_halfeye(
    adjust = 0.5,                # Smoothing adjustment
    justification = -0.2,        # Offset violin plot
    .width = 0,                  # Disable median/CI lines
    point_colour = NA,           # No points in the violin
    alpha = 0.6                  # Transparency
  ) +
  # Boxplot overlay
  geom_boxplot(
    width = 0.12,                # Narrow boxplots
    outlier.shape = NA,          # Remove outlier points
    position = position_dodge(width = 0.2)  # Adjusted position for clarity
  ) +
  # Jittered raw data points with updated size
  geom_jitter(
    aes(color = group),          # Color points by group
    alpha = 0.6,                 # Transparency for raw points
    size = 2,                    # Consistent point size
    position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.2)  # Adjust position
  ) +
  # Custom colors for control and intervention groups
  scale_fill_manual(values = custom_palette) +
  scale_color_manual(values = custom_palette) +
  # Add minimal theme and labels
  labs(
    x = "Time",                 # X-axis label
    y = "RCADS Depression (Adolescent Report)",  # Y-axis label
    fill = "Group",
    color = "Group"
  ) +
  theme_minimal(base_size = 16) +  # Consistent base size
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.3), # Add border
    panel.grid.major = element_blank(),        # Remove major grid lines
    panel.grid.minor = element_blank(),        # Remove minor grid lines
    axis.title.x = element_text(size = 18,hjust = 0.4, vjust = -1),    # Set X-axis title size
    axis.title.y = element_text(size = 18,vjust = +2),    # Set Y-axis title size
    axis.text.x = element_text(size = 14),     # X-axis text size
    axis.text.y = element_text(size = 14),     # Y-axis text size
    legend.position = "none" 
  )


# Create the raincloud plot for rcads_c_anx
rcads_c_anx <- ggplot(analysis_data, aes(x = time, y = rcads_c_anx, fill = group)) +
  # Raincloud plot
  stat_halfeye(
    adjust = 0.5,                # Smoothing adjustment
    justification = -0.2,        # Offset violin plot
    .width = 0,                  # Disable median/CI lines
    point_colour = NA,           # No points in the violin
    alpha = 0.6                  # Transparency
  ) +
  # Boxplot overlay
  geom_boxplot(
    width = 0.12,                # Narrow boxplots
    outlier.shape = NA,          # Remove outlier points
    position = position_dodge(width = 0.2)  # Adjusted position for clarity
  ) +
  # Jittered raw data points with updated size
  geom_jitter(
    aes(color = group),          # Color points by group
    alpha = 0.6,                 # Transparency for raw points
    size = 2,                    # Consistent point size
    position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.2)  # Adjust position
  ) +
  # Custom colors for control and intervention groups
  scale_fill_manual(values = custom_palette) +
  scale_color_manual(values = custom_palette) +
  # Add minimal theme and labels
  labs(
    x = "Time",                 # X-axis label
    y = "RCADS Anxiety (Adolescent Report)",  # Y-axis label
    fill = "Group",
    color = "Group"
  ) +
  theme_minimal(base_size = 16) +  # Consistent base size
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.3), # Add border
    panel.grid.major = element_blank(),        # Remove major grid lines
    panel.grid.minor = element_blank(),        # Remove minor grid lines
    axis.title.x = element_text(size = 18,hjust = 0.4, vjust = -1),    # Set X-axis title size
    axis.title.y = element_text(size = 18,vjust = +2),    # Set Y-axis title size
    axis.text.x = element_text(size = 14),     # X-axis text size
    axis.text.y = element_text(size = 14),     # Y-axis text size
    legend.position = "none" 
  )



# Create the raincloud plot for rcads_c_total
rcads_c_total <- ggplot(analysis_data, aes(x = time, y = rcads_c_total, fill = group)) +
  # Raincloud plot
  stat_halfeye(
    adjust = 0.5,                # Smoothing adjustment
    justification = -0.2,        # Offset violin plot
    .width = 0,                  # Disable median/CI lines
    point_colour = NA,           # No points in the violin
    alpha = 0.6                  # Transparency
  ) +
  # Boxplot overlay
  geom_boxplot(
    width = 0.12,                # Narrow boxplots
    outlier.shape = NA,          # Remove outlier points
    position = position_dodge(width = 0.2)  # Adjusted position for clarity
  ) +
  # Jittered raw data points with updated size
  geom_jitter(
    aes(color = group),          # Color points by group
    alpha = 0.6,                 # Transparency for raw points
    size = 2,                    # Consistent point size
    position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.2)  # Adjust position
  ) +
  # Custom colors for control and intervention groups
  scale_fill_manual(values = custom_palette) +
  scale_color_manual(values = custom_palette) +
  # Add minimal theme and labels
  labs(
    x = "Time",                 # X-axis label
    y = "RCADS Total Internalizing (Adolescent Report)",  # Y-axis label
    fill = "Group",
    color = "Group"
  ) +
  theme_minimal(base_size = 16) +  # Consistent base size
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.3), # Add border
    panel.grid.major = element_blank(),        # Remove major grid lines
    panel.grid.minor = element_blank(),        # Remove minor grid lines
    axis.title.x = element_text(size = 18,hjust = 0.4, vjust = -1),    # Set X-axis title size
    axis.title.y = element_text(size = 18,vjust = +2),    # Set Y-axis title size
    axis.text.x = element_text(size = 14),     # X-axis text size
    axis.text.y = element_text(size = 14),     # Y-axis text size
    legend.position = "none" 
  )


# Create the raincloud plot for rcads_p_dep
rcads_p_dep <- ggplot(analysis_data, aes(x = time, y = rcads_p_dep, fill = group)) +
  # Raincloud plot
  stat_halfeye(
    adjust = 0.5,                # Smoothing adjustment
    justification = -0.2,        # Offset violin plot
    .width = 0,                  # Disable median/CI lines
    point_colour = NA,           # No points in the violin
    alpha = 0.6                  # Transparency
  ) +
  # Boxplot overlay
  geom_boxplot(
    width = 0.12,                # Narrow boxplots
    outlier.shape = NA,          # Remove outlier points
    position = position_dodge(width = 0.2)  # Adjusted position for clarity
  ) +
  # Jittered raw data points with updated size
  geom_jitter(
    aes(color = group),          # Color points by group
    alpha = 0.6,                 # Transparency for raw points
    size = 2,                    # Consistent point size
    position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.2)  # Adjust position
  ) +
  # Custom colors for control and intervention groups
  scale_fill_manual(values = custom_palette) +
  scale_color_manual(values = custom_palette) +
  # Add minimal theme and labels
  labs(
    x = "Time",                 # X-axis label
    y = "RCADS Depression (Mother Report)",  # Y-axis label
    fill = "Group",
    color = "Group"
  ) +
  theme_minimal(base_size = 16) +  # Consistent base size
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.3), # Add border
    panel.grid.major = element_blank(),        # Remove major grid lines
    panel.grid.minor = element_blank(),        # Remove minor grid lines
    axis.title.x = element_text(size = 18,hjust = 0.4, vjust = -1),    # Set X-axis title size
    axis.title.y = element_text(size = 18,vjust = +2),    # Set Y-axis title size
    axis.text.x = element_text(size = 14),     # X-axis text size
    axis.text.y = element_text(size = 14),     # Y-axis text size
    legend.position = "none" 
  )



# Create the raincloud plot for rcads_p_anx
rcads_p_anx <- ggplot(analysis_data, aes(x = time, y = rcads_p_anx, fill = group)) +
  # Raincloud plot
  stat_halfeye(
    adjust = 0.5,                # Smoothing adjustment
    justification = -0.2,        # Offset violin plot
    .width = 0,                  # Disable median/CI lines
    point_colour = NA,           # No points in the violin
    alpha = 0.6                  # Transparency
  ) +
  # Boxplot overlay
  geom_boxplot(
    width = 0.12,                # Narrow boxplots
    outlier.shape = NA,          # Remove outlier points
    position = position_dodge(width = 0.2)  # Adjusted position for clarity
  ) +
  # Jittered raw data points with updated size
  geom_jitter(
    aes(color = group),          # Color points by group
    alpha = 0.6,                 # Transparency for raw points
    size = 2,                    # Consistent point size
    position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.2)  # Adjust position
  ) +
  # Custom colors for control and intervention groups
  scale_fill_manual(values = custom_palette) +
  scale_color_manual(values = custom_palette) +
  # Add minimal theme and labels
  labs(
    x = "Time",                 # X-axis label
    y = "RCADS Anxiety (Mother Report) *",  # Y-axis label
    fill = "Group",
    color = "Group"
  ) +
  theme_minimal(base_size = 16) +  # Consistent base size
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.3), # Add border
    panel.grid.major = element_blank(),        # Remove major grid lines
    panel.grid.minor = element_blank(),        # Remove minor grid lines
    axis.title.x = element_text(size = 18,hjust = 0.4, vjust = -1),    # Set X-axis title size
    axis.title.y = element_text(size = 18,vjust = +2),    # Set Y-axis title size
    axis.text.x = element_text(size = 14),     # X-axis text size
    axis.text.y = element_text(size = 14),     # Y-axis text size
    legend.position = "none" 
  )



# Create the raincloud plot for rcads_p_total
rcads_p_total <- ggplot(analysis_data, aes(x = time, y = rcads_p_total, fill = group)) +
  # Raincloud plot
  stat_halfeye(
    adjust = 0.5,                # Smoothing adjustment
    justification = -0.2,        # Offset violin plot
    .width = 0,                  # Disable median/CI lines
    point_colour = NA,           # No points in the violin
    alpha = 0.6                  # Transparency
  ) +
  # Boxplot overlay
  geom_boxplot(
    width = 0.12,                # Narrow boxplots
    outlier.shape = NA,          # Remove outlier points
    position = position_dodge(width = 0.2)  # Adjusted position for clarity
  ) +
  # Jittered raw data points with updated size
  geom_jitter(
    aes(color = group),          # Color points by group
    alpha = 0.6,                 # Transparency for raw points
    size = 2,                    # Consistent point size
    position = position_jitterdodge(jitter.width = 0.15, dodge.width = 0.2)  # Adjust position
  ) +
  # Custom colors for control and intervention groups
  scale_fill_manual(values = custom_palette) +
  scale_color_manual(values = custom_palette) +
  # Add minimal theme and labels
  labs(
    x = "Time",                 # X-axis label
    y = "RCADS Total Internalizing (Mother Report) *",  # Y-axis label
    fill = NULL,
    color = NULL
  ) +
  theme_minimal(base_size = 16) +  # Consistent base size
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = 0.3), # Add border
    panel.grid.major = element_blank(),        # Remove major grid lines
    panel.grid.minor = element_blank(),        # Remove minor grid lines
    axis.title.x = element_text(size = 18,hjust = 0.4, vjust = -1),    # Set X-axis title size
    axis.title.y = element_text(size = 18,vjust = +2),    # Set Y-axis title size
    axis.text.x = element_text(size = 14),     # X-axis text size
    axis.text.y = element_text(size = 14),     # Y-axis text size
    legend.position = "none" 
  )


# RCADS panel
rcads_plot <- (rcads_c_dep + rcads_c_anx + rcads_c_total) /
  (rcads_p_dep + rcads_p_anx + rcads_p_total) +
  plot_annotation()


# Save the combined plot
ggsave(
  filename = "rcads_plot.tiff",
  plot = rcads_plot,
  dpi = 500,
  compression = "lzw",
  width = 16,    # Width of the entire panel
  height = 12    # Height of the entire panel
)
