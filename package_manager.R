setRepositories(ind=1:7)


if(!require("bit64")){
  install.packages("bit64")
}

if(!require("pacman")){
  install.packages("pacman")
}

library(pacman)

packages <- c("BiocManager","dplyr","ggplot2","data.table","stringr","readr","janitor","corrplot","pheatmap","pryr","MASS","ggpmisc","ggrepel","RColorBrewer","fmsb","ggcorrplot","bit64","pafr","ggdendro","plotly","ggpmisc","ggdendro","plotly","corrplot","corrr","scales","DescTools","ggfortify","gridExtra","grid","paletteer","ggpubr","cowplot","reshape2","rvest") 

packages <- unique(packages)

pacman::p_load(packages,character.only = TRUE)



