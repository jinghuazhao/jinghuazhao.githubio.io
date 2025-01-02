---
layout: article
title: A full stack Locuszoom.js application
tags: info
mathjax: true
mathjax_autoNumber: false
mermaid: true
---

This is built on A1BG & ACE, <https://jinghuazhao.github.io/Caprion/lz.htm>

```bash
# code for caprion_dr.js
# toJSON(list(ppid=paste0(prot,"-",pqtl),data=d,analysis=paste0(prot,"-",pqtl)),auto_unbox=TRUE,pretty=FALSE)
export analysis=~/Caprion/analysis
export dr=_dr
Rscript -e '
    library(dplyr)
    library(jsonlite)
    analysis <- Sys.getenv("analysis")
    suffix <- Sys.getenv("suffix")
    vars <- c("variant","position","ref_allele","alt_allele_freq","beta","log_pvalue")
    merged_data <- list()
    jsonlist <- dir(file.path(analysis,"json","gz"),pattern="json.gz")
    flist <- grep("A1BG|ACE",jsonlist,value=TRUE)
    for (i in 1:length(flist))
    {
      s <- unlist(strsplit(flist[i],"-|[.]"))
      f <- list(ppid=paste0(s[1],"-",s[2]),data=fromJSON(file.path(analysis,"json","gz",flist[i]))$data[vars])
      merged_data <- c(merged_data,list(f))
    }
    merged_json <- toJSON(merged_data)
    sink(file.path(analysis,paste0("caprion",suffix,".js")))
    cat("input=")
    writeLines(merged_json)
    sink()
    decouple <- function(f)
    {
      d <- fromJSON(f)
      for (i in 1:nrow(d))
      {
        di <- with(d,list(ppid=ppid[[i]],data=data[[i]]))
        sink(paste0(i-1,".json"))
        writeLines(toJSON(di))
        sink()
      }
    }
'
```

<!--more-->
