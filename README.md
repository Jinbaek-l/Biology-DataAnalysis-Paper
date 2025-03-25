# Description
- **Topic**: Developed a quality assessment index using multivariate EDA and statistical modeling on large-scale domain-specific data
- **Tools**: R, bash, Illustrator  

### 📄 Publication Info
- **Journal**: *Frontiers in Veterinary Science* (SCI, JCR Top 10%)  
- **Citation**: Park S, Lee J, Kim J, Kim D, Lee JH, Pack SP, and Seo M (2023). Benchmark study for evaluating the quality of reference genomes and gene annotations in 114 species. *Front. Vet. Sci.* 10:1128570. 

### 🙋‍♂️ My Contribution
- **Co–first author** (50% contribution)  
- Design study, Data collection and preprocessing, EDA and statistical analysis, Visualization, Manuscript writing

  
# Summary

### Schematic diagram

<img src="figures/Figure1.jpg" alt="Collected data structure and systematic workflow" width="700"/>

**Four different processes for selecting indexes that can be evaluated for relative quality**

🟥 **Process Red**

20 indexes directly collected from 109 species  &nbsp;➔&nbsp;  Pre-processing &nbsp;➔&nbsp; EDA(Descriptive statistics, Group-wise comparison), Correlation analysis &nbsp;➔&nbsp; **3 indexes selected**

🟦 **Process Blue** 

37 indexes collected by pipeline on 3,420 samples &nbsp;➔&nbsp; Pre-processing &nbsp;➔&nbsp; Correlation analysis &nbsp;➔&nbsp; **3 indexes selected**

🟩 **Process Green** 

30 indexes directly collected from 102 species &nbsp;➔&nbsp; Pre-processing &nbsp;➔&nbsp; Dimensionality reduction, EDA, Correlation analysis &nbsp;➔&nbsp; **1 index selected**

🟨 **Process Yellow** 

14 indexes collected by pipeline on 3,420 samples &nbsp;➔&nbsp; Pre-processing &nbsp;➔&nbsp; EDA, Correlation analysis &nbsp;➔&nbsp; **3 indexes selected**

### Conclusion
10 selected indexes were directionally matched, and integrated using a weighted arithmetic mean ▶ Develop new quality assessment index

# File Structure

✅ Data and codes for analysis and visualization reproducibility have been uploaded. Full data can be found in the paper Supplementary material.

### 📁 Data 
**species.txt**: &nbsp;Scientific names of 114 species

**1_assembly_color_code.txt**: &nbsp;Figure color code for `Process Red`

**1_assembly_statistics.txt**: &nbsp;Pre-processed data in `Process Red`

**1_repeat_elements_data.txt**: &nbsp;Sub data in `Process Red`

**2_mqi_statistics_of_108_species.csv**: &nbsp;3 selected indexes in `Process Blue`

**2_selected_assembly_and_mapping_statistics_data.csv**: &nbsp;Combined dataset of pre-processed data from `Process Red` and selected indexes from `Process Blue`

**3_annotation_color_code.txt**: &nbsp;Figure color code for `Process Green`

**3_gene_annotation_table.txt**: &nbsp;Raw data in `Process Green`

**3_taxanomy_table.txt**: &nbsp;Taxanomy class of 114 species

**4_quantification_data.csv**: &nbsp;Combined dataset of raw data from `Process Yellow` and selected indexes from `Process Green`

**4_quantification_data_sample.csv**: &nbsp;3 selected indexes in `Process Yellow`

**5_ngs_applicable_index_with_97_species.csv**: &nbsp;The table included 10 selected indexes and integrated quality index



### 📑 Scripts
**package_manager.R**: &nbsp;This script is for installation and calling for required packages for this scripts. You don't need to run this script.

**1_assembly_quality_statistic.R**: &nbsp;R script for analysis & visualization in `Process Red`. The index selection logic is described in second section of Results.

**2_alignment_quality_statistics.R**: &nbsp;R script for analysis & visualization in `Process Blue`. The index selection logic is described in third section of Results.

**3_gene_annotation_quality_statistic.R**: &nbsp;R script for analysis & visualization in `Process Green`. The index selection logic is described in fourth section of Results.

**4_quantification_quality_statistics.R**: &nbsp;R script for analysis & visualization in `Process Yellow`. The index selection logic is described in fifth section of Results.

**5_ngs_applicable_index.R**: &nbsp;R script for visualisation of 10 selected indexes and an integrated quality index for 114 species.

**data-pipeline/**: The bash scripts below this directory are pipeline codes for formatting biological data


