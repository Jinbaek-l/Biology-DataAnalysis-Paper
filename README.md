# Description
- **Title**: Developed a quality assessment index using multivariate EDA and statistical modeling on large-scale biological data &nbsp; **`대규모 생물학 데이터에 대한 다변량 EDA 및 통계 모델링을 사용하여 품질 평가 지표 개발`**
- **Tools**: R, bash, Illustrator  
- **Skills**: Exploratory data analysis, Correlation analysis, Unsupervised learning, Data ETL pipeline, Data preprocessing, Visualization

### 📄 Publication Info
- **Journal**: *Frontiers in Veterinary Science* (SCI, JCR Top 10%)  
- **Citation**: Park S, Lee J, Kim J, Kim D, Lee JH, Pack SP, and Seo M (2023). Benchmark study for evaluating the quality of reference genomes and gene annotations in 114 species. *Front. Vet. Sci.* 10:1128570. 

### 🙋‍♂️ My Contribution
- **Co–first author** (50% contribution to the overall research and manuscript writing)
<br><br>
# Summary
### 🧩 Problem

의생명 연구의 신뢰성에 직접적인 영향을 미치는 두 가지 자료의 상대적인 품질을 동시에 평가하는 체계적인 연구는 존재 하지 않음 

### 🔍 Approach & Workflow

<img src="figures/Figure1.jpg" alt="Collected data structure and systematic workflow" width="700"/>

이 문제를 해결하기 위해, **두 자료의 상대적 품질을 평가할 수 있는 지표를 선정하는 네 가지 프로세스**를 설계하였음

🟥 **Process Red**

직접 수집한 20개 지표 &nbsp;➔&nbsp;  전처리 &nbsp;➔&nbsp; EDA(기초 통계 분석, 그룹 간 비교 분석), 상관 분석 &nbsp;➔&nbsp; **3개 지표 선별**
<br>
> 어떻게 지표 선택 시 분석이 활용되었는가?

- 모델 종은 상대적으로 데이터 품질이 높을 것이라 가정

- 기존 품질 평가 지표 2개를 종의 특성에 맞춰 정규화하여, 모델 종의 품질이 상대적으로 높다는 가정을 수치적으로 검증

- 정규화된 값과 나머지 지표간 상관관계 분석 수행한 결과, 강한 양의 상관 관계를 가지며 모델 종에서 항상 높은 값을 보이는 지표 발견


🟦 **Process Blue** 

파이프라인을 통해 수집한 37개 지표 &nbsp;➔&nbsp; 전처리 &nbsp;➔&nbsp; 상관 분석 &nbsp;➔&nbsp; **3개 지표 선별**
<br>
> 어떻게 지표 선택 시 분석이 활용되었는가?

- write here

- write here

- write here

🟩 **Process Green** 

직접 수집한 30개 지표 &nbsp;➔&nbsp; 전처리 &nbsp;➔&nbsp; 차원 축소, EDA, 상관 분석 &nbsp;➔&nbsp; **1개 지표 선별**
<br>
> 어떻게 지표 선택 시 분석이 활용되었는가?

- write here

- write here

- write here


🟨 **Process Yellow** 

파이프라인을 통해 수집한 14개 지표 &nbsp;➔&nbsp; 전처리 &nbsp;➔&nbsp; EDA, 상관 분석 &nbsp;➔&nbsp; **3개 지표 선별**
<br>
> 어떻게 지표 선택 시 분석이 활용되었는가?

- write here

- write here

- write here

### 📈 Conclusion
선정된 총 10개 지표의 방향성 매칭 후, 가중 산술 평균을 이용하여 통합 ▶ 성공적으로 새로운 품질 평가 지표 개발하였으며, 기존 연구와 비교하여 차별성을 검증함
<br><br>
# File Structure

✅ Data and scripts for analysis and visualization reproducibility have been uploaded.. Full data can be found in the paper Supplementary material.

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
**package_manager.R**: &nbsp;This script installs and loads the required packages for the other scripts. You don't need to run this script.

**1_assembly_quality_statistic.R**: &nbsp;R script for analysis and visualization in `Process Red`. The index selection logic is described in second section of Results.

**2_alignment_quality_statistics.R**: &nbsp;R script for analysis and visualization in `Process Blue`. The index selection logic is described in third section of Results.

**3_gene_annotation_quality_statistic.R**: &nbsp;R script for analysis and visualization in `Process Green`. The index selection logic is described in fourth section of Results.

**4_quantification_quality_statistics.R**: &nbsp;R script for analysis and visualization in `Process Yellow`. The index selection logic is described in fifth section of Results.

**5_ngs_applicable_index.R**: &nbsp;R script for visualization of 10 selected indexes and an integrated quality index for 114 species.

**data-pipeline/**: The bash scripts in this directory contain pipeline code for formatting biological data.


