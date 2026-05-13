# Cheatsheet
Have you ever needed to do very simple things in R or RStudio and you just... forget how to do it? I do it all the time, so I made this list.

<details>
<summary>
  Check which version you're using
</summary>
  - R - `getRversion()`
  - RStudio - `RStudio.Version()`
</details>

<details>
  <summary>
    Generate a citation
  </summary>
  
**1. R**
    - `citation()`
    - `report::report_system()` - provides a nice sentence for you to use.
  
 **2. RStudio**
 `RStudio.Version()$citation`
  
**3. R Packages**
There are a lot of approaches you can do. I recommend whichever fits your goals.
    - `grateful::cite_packages()` - [{grateful}](https://github.com/Pakillo/grateful) is a wonderful package for everything citations :) 
    - `devtools::session_info()`
    - `citation("ggplot")` - get the citation information for a specific package
    - `report::cite_packages(include_R = FALSE)` - output a list of packages in the current R environment.
  
</details>

<details>
  <summary>
    Setting up a GitHub Repo for an R Project
  </summary>
Assuming that you've done the hard part (aka. making the R Project) and gotten it connected to the repo...

There's a package called [{gitignore}](https://docs.ropensci.org/gitignore/). 
Run this code...

```r
gitignore::gi_fetch_templates("R", append_gitignore = TRUE)
```

</details>

<details>
  <summary>
    Listing all package functions in RStudio
  </summary>

```r
# Example
help(package = dplyr)
```
  
</details>
