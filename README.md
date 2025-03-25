# Description
- **Topic**: Multivariate EDA and statistical modeling of massive biological data to develop quality assessment index
- **Tools**: R, bash, Illustrator  

### 📄 Publication Info
- **Journal**: *Frontiers in Veterinary Science* (SCI, JCR Top 10%)  
- **Published**: 21 February 2023  
- **Citation**: Park S, Lee J, Kim J, Kim D, Lee JH, Pack SP, and Seo M (2023). Benchmark study for evaluating the quality of reference genomes and gene annotations in 114 species. *Front. Vet. Sci.* 10:1128570. 

### 🙋‍♂️ My Contribution
- **Co–first author** (50% contribution)  
- Design study, Data collection and preprocessing, EDA and statistical analysis, Visualization, Manuscript writing

  
# Summary

### Schematic diagram

<img src="figures/Figure1.jpg" alt="Collected data structure and systematic workflow" width="700"/>

**Four different processes for selecting indexes that can be evaluated for relative quality**

🟥 **Process Red**

20 indexes directly collected  &nbsp;➔&nbsp;  Pre-processing &nbsp;➔&nbsp; EDA(Descriptive statistics, Group-wise comparison), Correlation analysis &nbsp;➔&nbsp; **3 indexes selected**

🟦 **Process Blue** 

37 indexes collected by pipeline &nbsp;➔&nbsp; Pre-processing &nbsp;➔&nbsp; Correlation analysis &nbsp;➔&nbsp; **3 indexes selected**

🟩 **Process Green** 

30 indexes directly collected &nbsp;➔&nbsp; Pre-processing &nbsp;➔&nbsp; Dimensionality Reduction, EDA, Correlation analysis &nbsp;➔&nbsp; **1 index selected**

🟨 **Process Yellow** 

14 indexes collected by pipeline &nbsp;➔&nbsp; Pre-processing &nbsp;➔&nbsp; EDA, Correlation analysis &nbsp;➔&nbsp; **3 indexes selected**

### Conclusion
10 effective indexes were directionally matched, and integrated using a weighted arithmetic mean ▶ Develop new quality assessment index

# File Structure

### 📁 Data 
**species.txt**: This file include scientific names of 114 species

**1_assembly_color_code.txt**: Color code for `Process Red`

**1_assembly_statistics.txt**: Main data for `Process Red`

**1_repeat_elements_data.txt**: Filtered data in `Process Red`

**2_mqi_statistics_of_108_species.csv**: Main data for `Process Blue`

**2_selected_assembly_and_mapping_statistics_data.csv**: Summarized data in `Process Blue`

**3_annotation_color_code.txt**:

**3_gene_annotation_table.txt**:

**3_taxanomy_table.txt**:

**4_quantification_data.csv**:

**4_quantification_data_sample.csv**:

**5_ngs_applicable_index_with_97_species.csv**:




### 📑 Scripts
**package_manager.R**:

**1_assembly_quality_statistic.R**:

**2_alignment_quality_statistics.R**:

**3_gene_annotation_quality_statistic.R**:

**4_quantification_quality_statistics.R**:

**5_ngs_applicable_index.R**:

**data-pipeline/**:


