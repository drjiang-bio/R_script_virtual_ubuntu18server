# 清空工作环境
rm(list = ls())

# 判断安装，若不存在某包则安装该包,显式制定镜像
# https://mirror.lzu.edu.cn/CRAN/
if(!require("dplyr")) {
  install.packages("dplyr",repos = 'https://mirrors.tuna.tsinghua.edu.cn/CRAN/', 
                   dependencies = T)
}

# 安装bioconductor
## try http:// if https:// URLs are not supported
source("https://bioconductor.org/biocLite.R")
biocLite()
