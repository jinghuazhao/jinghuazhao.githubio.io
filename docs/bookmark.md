---
layout: article
titles:
  # @start locale config
  en      : &EN       Bookmark
  en-GB   : *EN
  en-US   : *EN
  en-CA   : *EN
  en-AU   : *EN
  zh-Hans : &ZH_HANS  书签
  zh      : *ZH_HANS
  zh-CN   : *ZH_HANS
  zh-SG   : *ZH_HANS
  zh-Hant : &ZH_HANT  書籤  
  zh-TW   : *ZH_HANT
  zh-HK   : *ZH_HANT
  ko      : &KO       북마크
  ko-KR   : *KO
  fr      : &FR       signets
  fr-BE   : *FR
  fr-CA   : *FR
  fr-CH   : *FR
  fr-FR   : *FR
  fr-LU   : *FR
  # @end locale config
mathjax: true
mathjax_autoNumber: false
mermaid: true
key: page-bookmark
---

![Image](assets/images/seeded-sunflower.png){:.circle}

- [software collections](r-genetics.md)
- [suggested sites](suggests.md) ([suggests.txt](suggests.txt))
- collections at workplaces
    - DPHPC, <https://www.phpc.cam.ac.uk/>, [links](dphpclinks.md),
    - MRC-Epid, <https://www.mrc-epid.cam.ac.uk/>, [links](mrclinks.md) with [comments](mrc/comments.txt),
    - UCL, <https://www.ucl.ac.uk/>, [links](ucllinks.md) with [comments](ucl/comments.txt),
    - KCL, <https://www.kcl.ac.uk/>, [links](kcllinks.md) with [comments](iop/comments.txt) and a [graphviz](assets/images/grViz.png) diagram from [grViz.gv](assets/images/grViz.gv) and mermaid.
    ```mermaid
    graph BT;
    e1 --> F1(Genetics);
    e2 --> F2(Epidemiology);
    e3 --> F3(Mathematical Statistics);
    e4 --> F4(Computer Science);
    U --> A(Public Health);
    A(Public Health) --> B(Genetic Epidemiology & Biostatistics);
    F1(Genetics) --> B(Genetic Epidemiology & Biostatistics);
    F2(Epidemiology) --> B(Genetic Epidemiology & Biostatistics);
    F3(Mathematical Statistics) --> B(Genetic Epidemiology & Biostatistics);
    F4(Computer Science) --> B(Genetic Epidemiology & Biostatistics);
    ```
