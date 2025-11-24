## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(pkgdiff)

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  
#  # Examine tidymodels package
#  pkg_info("tidymodels")
#  # # A package info object: tidymodels package
#  # - Version: v1.2.0
#  # - Release Date: 2024-03-25
#  # - Title: Easily Install and Load the 'Tidymodels' Packages
#  # - Maintainer: Max Kuhn <max@posit.co>
#  # - License: MIT + file LICENSE
#  # - Description: The tidy modeling "verse" is a collection of packages for
#  # modeling and statistical analysis that share the underlying design
#  # philosophy, grammar, and data structures of the tidyverse.
#  # - Depends: R (>= 3.6)
#  # - Imports: broom (>= 1.0.5), cli (>= 3.6.2), conflicted (>= 1.2.0),
#  # dials (>= 1.2.1), dplyr (>= 1.1.4), ggplot2 (>= 3.5.0), hardhat (>= 1.3.1),
#  # infer (>= 1.0.6), modeldata (>= 1.3.0), parsnip (>= 1.2.1), purrr (>= 1.0.2),
#  # recipes (>= 1.0.10), rlang (>= 1.1.3), rsample (>= 1.2.1), rstudioapi (>= 0.16.0),
#  # tibble (>= 3.2.1), tidyr (>= 1.3.1), tune (>= 1.2.0), workflows (>= 1.1.4),
#  # workflowsets (>= 1.1.0), yardstick (>= 1.3.1)
#  # - Suggests: covr, glue, knitr, rmarkdown, testthat (>= 3.0.0), xml2
#  # - Repository: CRAN
#  # - Cached: TRUE
#  # - Functions: 9
#  

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  # Capture package info object
#  res <- pkg_info("tidymodels")
#  
#  # View version
#  res$Version
#  # [1] "1.3.0"
#  
#  # View title
#  res$Title
#  # [1] "Easily Install and Load the 'Tidymodels' Packages"
#  
#  # View release date
#  res$ReleaseDate
#  # [1] "2025-02-21"
#  

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  # Get package info
#  res <- pkg_info("tidymodels")
#  
#  # View functions
#  print(res, verbose = TRUE)
#  # # A package info object: tidymodels package
#  # - Version: v1.3.0
#  # - Release Date: 2025-02-21
#  # - Title: Easily Install and Load the 'Tidymodels' Packages
#  # - Maintainer: Max Kuhn <max@posit.co>
#  # - License: MIT + file LICENSE
#  # - Description: The tidy modeling "verse" is a collection of packages for
#  # modeling and statistical analysis that share the underlying design
#  # philosophy, grammar, and data structures of the tidyverse.
#  # - Depends: R (>= 3.6)
#  # - Imports: broom (>= 1.0.7), cli (>= 3.6.4), conflicted (>= 1.2.0),
#  # dials (>= 1.4.0), dplyr (>= 1.1.4), ggplot2 (>= 3.5.1), hardhat (>= 1.4.1),
#  # infer (>= 1.0.7), modeldata (>= 1.4.0), parsnip (>= 1.3.0), purrr (>= 1.0.4),
#  # recipes (>= 1.1.1), rlang (>= 1.1.5), rsample (>= 1.2.1), rstudioapi (>= 0.17.1),
#  # tibble (>= 3.2.1), tidyr (>= 1.3.1), tune (>= 1.3.0), workflows (>= 1.2.0),
#  # workflowsets (>= 1.1.0), yardstick (>= 1.3.2)
#  # - Suggests: covr, glue, knitr, rmarkdown, testthat (>= 3.0.0), xml2
#  # - Downloads/Month: 31789
#  # - Repository: CRAN
#  # - Cached: TRUE
#  # - Functions:
#  #   - pkg_deps(): x, recursive
#  #   - print.tidymodels_conflicts(): x, ..., startup
#  #   - tag_attach(): tag
#  #   - tag_show()
#  #   - tag_update(): tag
#  #   - tidymodels_conflicts()
#  #   - tidymodels_packages(): include_self
#  #   - tidymodels_prefer(): quiet
#  #   - tidymodels_update(): pkg, recursive, ...

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  
#  # View package stability
#  pkg_stability("tidymodels")
#  # # A stability score: tidymodels package
#  # - Age: 6.58 years
#  # - Score: 100.0
#  # - Assessment: Perfect
#  # - Version Range: 0.0.1/1.3.0
#  # - Release Range: 2018-07-27/2025-02-21
#  # - Release Count: 14
#  # - Breaking Releases: 0
#  # - Data:
#  #       Package Version                FileName    Release  Size AF AP RF RP BC TF
#  # 1  tidymodels   1.3.0 tidymodels_1.3.0.tar.gz 2025-02-21 46.4K  0  0  0  0  0  9
#  # 2  tidymodels   1.2.0 tidymodels_1.2.0.tar.gz 2024-03-25 49.6K  0  0  0  0  0  9
#  # 3  tidymodels   1.1.1 tidymodels_1.1.1.tar.gz 2023-08-24   50K  0  0  0  0  0  9
#  # 4  tidymodels   1.1.0 tidymodels_1.1.0.tar.gz 2023-05-01   49K  0  0  0  0  0  9
#  # 5  tidymodels   1.0.0 tidymodels_1.0.0.tar.gz 2022-07-13   75K  0  0  0  0  0  9
#  # 6  tidymodels   0.2.0 tidymodels_0.2.0.tar.gz 2022-03-19   75K  0  0  0  0  0  9
#  # 7  tidymodels   0.1.4 tidymodels_0.1.4.tar.gz 2021-10-01   17K  0  0  0  0  0  9
#  # 8  tidymodels   0.1.3 tidymodels_0.1.3.tar.gz 2021-04-19   15K  1  0  0  0  0  9
#  # 9  tidymodels   0.1.2 tidymodels_0.1.2.tar.gz 2020-11-22   26K  0  0  0  0  0  8
#  # 10 tidymodels   0.1.1 tidymodels_0.1.1.tar.gz 2020-07-14   25K  0  0  0  0  0  8
#  # 11 tidymodels   0.1.0 tidymodels_0.1.0.tar.gz 2020-02-16   57K  0  0  0  0  0  8
#  # 12 tidymodels   0.0.3 tidymodels_0.0.3.tar.gz 2019-10-05   19K  0  0  0  0  0  8
#  # 13 tidymodels   0.0.2 tidymodels_0.0.2.tar.gz 2018-11-27   18K  0  0  0  0  0  8
#  # 14 tidymodels   0.0.1 tidymodels_0.0.1.tar.gz 2018-07-27   18K  8  8  0  0  0  8
#  

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  
#  # View package stability
#  pkg_stability("dbplyr")
#  # # A stability score: dbplyr package
#  # - Age: 7.67 years
#  # - Score: 73.7
#  # - Assessment: Unstable
#  # - Version Range: 1.0.0/2.5.0
#  # - Release Range: 2017-06-09/2024-03-19
#  # - Release Count: 23
#  # - Breaking Releases: 10
#  # - Data:
#  #    Package Version            FileName    Release   Size  AF  AP RF RP BC  TF
#  # 1   dbplyr   2.5.0 dbplyr_2.5.0.tar.gz 2024-03-19 752.6K  32   6 12  0  1 611
#  # 2   dbplyr   2.4.0 dbplyr_2.4.0.tar.gz 2023-10-26   743K  74  80 45 33  1 591
#  # 3   dbplyr   2.3.4 dbplyr_2.3.4.tar.gz 2023-09-27   706K   0   0  0  0  0 562
#  # 4   dbplyr   2.3.3 dbplyr_2.3.3.tar.gz 2023-07-07   706K   0   0  0  0  0 562
#  # 5   dbplyr   2.3.2 dbplyr_2.3.2.tar.gz 2023-03-21   707K   0   1  0  1  1 562
#  # 6   dbplyr   2.3.1 dbplyr_2.3.1.tar.gz 2023-02-24   707K   5   6  1  0  1 562
#  # 7   dbplyr   2.3.0 dbplyr_2.3.0.tar.gz 2023-01-16   688K  33  16  5  1  1 558
#  # 8   dbplyr   2.2.1 dbplyr_2.2.1.tar.gz 2022-06-27   655K   4   0  0  0  0 530
#  # 9   dbplyr   2.2.0 dbplyr_2.2.0.tar.gz 2022-06-05   655K 136  47 53  1  1 526
#  # 10  dbplyr   2.1.1 dbplyr_2.1.1.tar.gz 2021-04-06   568K   5   0  0  0  0 443
#  # 11  dbplyr   2.1.0 dbplyr_2.1.0.tar.gz 2021-02-03   566K  15   2  0  0  0 438
#  # 12  dbplyr   2.0.0 dbplyr_2.0.0.tar.gz 2020-11-03   522K 139  33 94 11  1 423
#  # 13  dbplyr   1.4.4 dbplyr_1.4.4.tar.gz 2020-05-27   417K   5   0  0  0  0 378
#  # 14  dbplyr   1.4.3 dbplyr_1.4.3.tar.gz 2020-04-19   413K   9   3  2  2  1 373
#  # 15  dbplyr   1.4.2 dbplyr_1.4.2.tar.gz 2019-06-17   296K   1   0  0  0  0 366
#  # 16  dbplyr   1.4.1 dbplyr_1.4.1.tar.gz 2019-06-06   296K   1   0  0  0  0 365
#  # 17  dbplyr   1.4.0 dbplyr_1.4.0.tar.gz 2019-04-24   295K  24  30 17 13  1 364
#  # 18  dbplyr   1.3.0 dbplyr_1.3.0.tar.gz 2019-01-09   263K   2   0  0  0  0 357
#  # 19  dbplyr   1.2.2 dbplyr_1.2.2.tar.gz 2018-07-25   258K   0   0  0  0  0 355
#  # 20  dbplyr   1.2.1 dbplyr_1.2.1.tar.gz 2018-02-19   257K   0   0  0  0  0 355
#  # 21  dbplyr   1.2.0 dbplyr_1.2.0.tar.gz 2018-01-03   257K  43   6  2  2  1 355
#  # 22  dbplyr   1.1.0 dbplyr_1.1.0.tar.gz 2017-06-27   241K  23   2  0  0  0 314
#  # 23  dbplyr   1.0.0 dbplyr_1.0.0.tar.gz 2017-06-09   235K 291 291  0  0  0 291
#  

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  # Get package summary report
#  pkg_summary("dplyr")

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  # Compare package versions
#  pkg_diff("dbplyr", "2.4.0", "2.5.0")
#  # # A difference object: dbplyr package
#  # - Comparing: v2.4.0/v2.5.0
#  # - Breaking Changes: TRUE
#  # - Added Functions:
#  #   - [.dbplyr_table_path()
#  #   - [[.dbplyr_table_path()
#  #   - as_table_path()
#  #   - c.dbplyr_table_path()
#  #   - check_table_path()
#  #   - complete.tbl_lazy()
#  #   - db_explain.Oracle()
#  #   - db_explain.OraConnection()
#  #   - db_sql_render.Microsoft SQL Server()
#  #   - escape.dbplyr_table_path()
#  #   - escape.default()
#  #   - expand.tbl_lazy()
#  #   - fill.tbl_lazy()
#  #   - group_by_drop_default.tbl_lazy()
#  #   - intersect.tbl_lazy()
#  #   - is_table_path()
#  #   - pivot_longer.tbl_lazy()
#  #   - pivot_wider.tbl_lazy()
#  #   - print.dbplyr_table_path()
#  #   - reframe.tbl_lazy()
#  #   - replace_na.tbl_lazy()
#  #   - setdiff.OraConnection()
#  #   - setdiff.tbl_lazy()
#  #   - setdiff.tbl_Oracle()
#  #   - simulate_mariadb()
#  #   - sql_escape_ident.default()
#  #   - sql_escape_ident.MySQLConnection()
#  #   - sql_escape_string.default()
#  #   - table_path_components()
#  #   - table_path_components.default()
#  #   - table_path_name()
#  #   - union.tbl_lazy()
#  # - Added Parameters:
#  #   - flatten_query.base_query(): con
#  #   - flatten_query.multi_join_query(): con
#  #   - flatten_query.select_query(): con
#  #   - flatten_query.union_query(): con
#  #   - flatten_query.values_query(): con
#  #   - sql_translation.MySQL(): con
#  # - Removed Functions:
#  #   - as_table_ident.character()
#  #   - as_table_ident.dbplyr_catalog()
#  #   - as_table_ident.dbplyr_schema()
#  #   - as_table_ident.dbplyr_table_ident()
#  #   - as_table_ident.Id()
#  #   - as_table_ident.ident()
#  #   - as_table_ident.ident_q()
#  #   - as_table_ident.sql()
#  #   - escape.dbplyr_table_ident()
#  #   - format.dbplyr_table_ident()
#  #   - sql_escape_ident.DBIConnection()
#  #   - sql_escape_string.DBIConnection()
#  

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  # Get package versions
#  pkg_versions("stringr")
#  #    Package Version              FileName    Release   Size
#  # 1  stringr   1.5.1  stringr_1.5.1.tar.gz 2023-11-14   172K
#  # 2  stringr   1.5.0  stringr_1.5.0.tar.gz 2022-12-02   172K
#  # 3  stringr   1.4.1  stringr_1.4.1.tar.gz 2022-08-21   133K
#  # 4  stringr   1.4.0  stringr_1.4.0.tar.gz 2019-02-10   133K
#  # 5  stringr   1.3.1  stringr_1.3.1.tar.gz 2018-05-10   116K
#  # 6  stringr   1.3.0  stringr_1.3.0.tar.gz 2018-02-19   116K
#  # 7  stringr   1.2.0  stringr_1.2.0.tar.gz 2017-02-18    92K
#  # 8  stringr   1.1.0  stringr_1.1.0.tar.gz 2016-08-19    62K
#  # 9  stringr   1.0.0  stringr_1.0.0.tar.gz 2015-04-30    34K
#  # 10 stringr   0.6.2  stringr_0.6.2.tar.gz 2012-12-06    20K
#  # 11 stringr   0.6.1  stringr_0.6.1.tar.gz 2012-07-25    20K
#  # 12 stringr     0.6    stringr_0.6.tar.gz 2011-12-08    20K
#  # 13 stringr     0.5    stringr_0.5.tar.gz 2011-06-30    18K
#  # 14 stringr     0.4    stringr_0.4.tar.gz 2010-08-24    16K
#  # 15 stringr     0.3    stringr_0.3.tar.gz 2010-02-15    11K
#  # 16 stringr     0.2    stringr_0.2.tar.gz 2009-11-16    10K
#  # 17 stringr  0.1.10 stringr_0.1.10.tar.gz 2009-11-09   6.8K
#  

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  
#  # Check version in repo
#  pkg_repo("stringr")
#  # # A package repo object
#  # - Repo Version: 4.4
#  # - Packages:
#  #   Package Version
#  # 1 stringr   1.5.1
#  

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  
#  # Create vector of packages
#  v1 <- c("curl", "dplyr", "fmtr", "purrr")
#  
#  # Get current versions
#  res1 <- pkg_repo(v1, ver = "current")
#  
#  # View results
#  res1
#  # # A package repo object
#  # - Repo Version: 4.4
#  # - Packages:
#  #   Package Version
#  # 1    curl   5.2.1
#  # 2   dplyr   1.1.4
#  # 3    fmtr   1.6.5
#  # 4   purrr   1.0.2
#  
#  # Get latest versions
#  res2 <- pkg_repo(v1, ver = "latest")
#  
#  # View results
#  res2
#  # # A package repo object
#  # - Repo Version: latest
#  # - Packages:
#  #   Package Version
#  # 1    curl   6.2.1
#  # 2   dplyr   1.1.4
#  # 3    fmtr   1.6.8
#  # 4   purrr   1.0.4
#  

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  # View upgrade breakages
#  repo_breakages(res1, res2)
#  # Comparing curl v5.2.1/v6.2.0
#  # Comparing fmtr v1.6.5/v1.6.8
#  # Comparing purrr v1.0.2/v1.0.4
#  # # A repo breakages object
#  # - Run Datetime: 2025-03-01 17:58 UTC
#  # - Summary:
#  #   Package Version1 Version2 Breakages
#  # 1    curl    5.2.1    6.2.1      TRUE
#  # 2   dplyr    1.1.4    1.1.4     FALSE
#  # 3    fmtr    1.6.5    1.6.8     FALSE
#  # 4   purrr    1.0.2    1.0.4     FALSE
#  # - Details:
#  # # A difference object: curl package
#  # - Comparing: v5.2.1/v6.2.1
#  # - Breaking Changes: TRUE
#  # - Added Functions: 1
#  # - Added Parameters: 3
#  # - Removed Parameters:
#  #   - multi_download(): timeout

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  
#  # Get current versions from local repo
#  r1 <- pkg_repo(ver = "current")
#  
#  # View Results
#  r1
#  # # A package repo object
#  # - Repo Version: 4.2
#  # - Packages:
#  #            Package              Version
#  # 1            abind                1.4-5
#  # 2          admiral               0.10.1
#  # 3       admiraldev                0.3.0
#  # 4      admiralonco                0.3.0
#  # 5             ards                0.1.0
#  # 6            arrow             11.0.0.3
#  # 7          askpass                  1.1
#  # 8       assertthat                0.2.1
#  # 9           aws.s3               0.3.21
#  # 10   aws.signature                0.6.0
#  # 11       backports                1.4.1
#  # 12       base64enc                0.1-3
#  # 13             bit                4.0.4
#  # 14           bit64                4.0.5
#  # 15          bitops                1.0-7
#  # 16            blob                1.2.3
#  # ...
#  
#  # Get latest versions of current repo on CRAN
#  r2 <- pkg_repo(r1$Package, ver = "latest")
#  
#  # View Results
#  r2
#  # # A package repo object
#  # - Repo Version: latest
#  # - Packages:
#  #            Package    Version
#  # 1            abind      1.4-8
#  # 2          admiral      1.2.0
#  # 3       admiraldev      1.2.0
#  # 4      admiralonco      1.2.0
#  # 5             ards      0.1.1
#  # 6            arrow   18.1.0.1
#  # 7          askpass      1.2.1
#  # 8       assertthat      0.2.1
#  # 9           aws.s3     0.3.21
#  # 10   aws.signature      0.6.0
#  # 11       backports      1.5.0
#  # 12       base64enc      0.1-3
#  # 13             bit    4.5.0.1
#  # 14           bit64    4.6.0-1
#  # 15          bitops      1.0-9
#  # 16            blob      1.2.4
#  # ...
#  
#  
#  # Check for breakages on whole repository
#  res <- repo_breakages(r1, r2)
#  # Comparing abind v1.4-5/v1.4-8
#  # Comparing admiral v0.10.1/v1.2.0
#  # Comparing admiraldev v0.3.0/v1.2.0
#  # Comparing admiralonco v0.3.0/v1.2.0
#  # Comparing ards v0.1.0/v0.1.1
#  # Archive versions of 'ards' not available.
#  # Comparing arrow v11.0.0.3/v18.1.0.1
#  # Comparing askpass v1.1/v1.2.1
#  # Comparing backports v1.4.1/v1.5.0
#  # Comparing bit v4.0.4/v4.5.0.1
#  # Comparing bit64 v4.0.5/v4.6.0-1
#  # Comparing bitops v1.0-7/v1.0-9
#  # Comparing blob v1.2.3/v1.2.4
#  # Comparing box v1.1.3/v1.2.0
#  # Comparing brew v1.0-8/v1.0-10
#  # Comparing brio v1.1.3/v1.1.5
#  # Comparing broom v1.0.1/v1.0.7
#  # Comparing bslib v0.4.0/v0.9.0
#  # Comparing cachem v1.0.6/v1.1.0
#  # Comparing callr v3.7.3/v3.7.6
#  # ...

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  # View Summary Table
#  res$Summary
#  #            Package             Version1   Version2 Breakages
#  # 1            abind                1.4-5      1.4-8     FALSE
#  # 2          admiral               0.10.1      1.2.0      TRUE
#  # 3       admiraldev                0.3.0      1.2.0      TRUE
#  # 4      admiralonco                0.3.0      1.2.0      TRUE
#  # 5             ards                0.1.0      0.1.1        NA
#  # 6            arrow             11.0.0.3   18.1.0.1     FALSE
#  # 7          askpass                  1.1      1.2.1     FALSE
#  # 8       assertthat                0.2.1      0.2.1     FALSE
#  # 9           aws.s3               0.3.21     0.3.21     FALSE
#  # 10   aws.signature                0.6.0      0.6.0     FALSE
#  # 11       backports                1.4.1      1.5.0     FALSE
#  # 12       base64enc                0.1-3      0.1-3     FALSE
#  # 13             bit                4.0.4    4.5.0.1     FALSE
#  # 14           bit64                4.0.5    4.6.0-1      TRUE
#  # 15          bitops                1.0-7      1.0-9     FALSE
#  # 16            blob                1.2.3      1.2.4     FALSE
#  # ...
#  
#  # View Difference Details
#  res$Details$admiralonco
#  # # A difference object: admiralonco package
#  # - Comparing: v0.3.0/v1.2.0
#  # - Breaking Changes: TRUE
#  # - Added Functions:
#  #   - bor_cr()
#  #   - bor_ne()
#  #   - bor_non_crpd()
#  #   - bor_pd()
#  #   - bor_pr()
#  #   - bor_sd()
#  #   - cb_y()
#  #   - cbor_cr()
#  #   - cbor_pr()
#  #   - crsp_y_cr()
#  #   - crsp_y_pr()
#  #   - no_data_missing()
#  #   - no_data_n()
#  #   - rsp_y()
#  # - Removed Functions:
#  #   - call_aval_fun()
#  #   - derive_param_lasta()
#  

## ----eval=FALSE, echo=TRUE----------------------------------------------------
#  # Create vector of packages
#  v1 <- c("curl", "dplyr", "dbplyr", "purrr")
#  
#  # Assess stability
#  res <- repo_stability(v1)
#  # Getting stability score for package 'curl'...
#  # Getting stability score for package 'dplyr'...
#  # Getting stability score for package 'dbplyr'...
#  # Getting stability score for package 'purrr'...
#  
#  # View results
#  res
#  # # A repo stability object
#  # - Run Datetime: 2025-03-01 17:46 UTC
#  # - Summary:
#  #   Package    FV    LV         FR         LR TR BR Score        Assessment
#  # 1    curl   0.2 6.2.1 2014-11-20 2025-02-19 51  1  98.0       Very Stable
#  # 2   dplyr   0.1 1.1.4 2014-01-16 2023-11-17 45 20  87.5 Somewhat Unstable
#  # 3  dbplyr 1.0.0 2.5.0 2017-06-09 2024-03-19 23 10  74.1          Unstable
#  # 4   purrr 0.1.0 1.0.4 2015-09-28 2025-02-05 18  6  92.1            Stable
#  

