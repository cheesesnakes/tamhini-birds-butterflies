# A cross taxonomic comparison of bird and butterfly communities of Tamhini Wildlife Sanctuary across two decades.

**Authors:** Shawn Dsouza and Anand Padhye.

This repo contains the code for analysis in R and data used in the manuscript.

## Abstract

Ecological communities are structured through multiple processes. Human disturbance can alter these processes at multiple spatial levels, thus changing diversity and community structure. Monitoring indicator taxa that are sensitive to environmental change offers valuable insight into both the processes that are affected as well as the efficacy conservation management to mitigate these effects. We analyze changes in bird and butterfly communities of Tamhini wildlife sanctuary in the Northern Western Ghats of India after two decades of changing land use and management. Further, we compare these effects across functional groups in these communities and determine the effect of these shifts on overall community function. We used line transects to determine abundance of bird and butterfly species across habitats and land use characteristics. We then compared our findings to previous surveys. Species diversity has increased for both taxa, however, community composition in all sites was significantly different than the previous study. The degree of trophic and habitat specializations of both was not significantly different. Thus, the underlying structure of both bird and butterfly communities may have changed. Changing land use can have effects at multiple trophic levels and have cascading effects on community assembly and ecosystem function. Long-term monitoring of indicator taxa such as birds and butterflies at decadal scales may help ensure conservation of the entire ecosystems through dynamic management by looking at metrics beyond mere richness or diversity.

**Keywords:** Functional Diversity; Landscape Change; Conservation Management; Indicator Species

## Usage

<details>
  <summary> View results </summary>
  
  The R markdown file is configured to out put an HTML document with the results of the analysis. Paste the following code in the terminal. 
  
  
  ```R
  rmarkdown::render(input = "Tamhini Manuscript.Rmd")
  ```
  *OR*
  
  Go to https://cheesesnakes.github.io/tamhini-birds-butterflies/
  
  </details>
 
 <details>
  <summary>Go through the analysis</summary>
  
   - R markdown files are best viewed in the R studio IDE.
    
   - The repo can be cloned to your github or downloaded
   
   - Before working with the file locally a portable local environment can be activated to make sure you have all the dependencies by running the code below:
   
   ```R
   renv::activate()
   renv::restore()
   ```
    
   </details>
 
 ## Software Used
<details>
  <summary> R Session info </summary>
  
  ```R                      
 version  R version 4.1.0 (2021-05-18)
 os       Ubuntu 20.10              
 Platform x86_64-pc-linux-gnu (64-bit)        
 ui       RStudio                     
 language (EN)                        
 collate  English_India.1252          
 ctype    English_India.1252          
 tz       Asia/Calcutta               
 date     2020-05-23                  
  ```

  </details>
  
## Citation

This manuscript is currently in review. 

## Liscence and Copyright
 
 © Shawn Dsouza
 
Liscensed under [MIT License](LICENSE)