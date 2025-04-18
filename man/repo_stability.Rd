% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reports.R
\name{repo_stability}
\alias{repo_stability}
\title{Generate Stability Scores for a Repository}
\usage{
repo_stability(pkgs, releases = NULL, months = NULL)
}
\arguments{
\item{pkgs}{A vector of package names.}

\item{releases}{An integer number of releases to assess.  The
function will then limit the scope of the assessment to the specified
number of releases.}

\item{months}{An integer number of months from the current date.  The
function will then limit the scope of the assessment to the specified
number of months.}
}
\value{
A data frame of information regarding the stability of
each package in the input vector.
}
\description{
The function generates stability scores
for a vector of packages. If passing a large number of packages,
be prepared for the
function to run for a considerable amount of time.
}
\details{
To assess stability for a package, \strong{pkgdiff} has to compare all
releases of a package, and identify breaking changes between each release.
This comparison takes time, especially for packages that have been
active for many years.

Therefore, the first step of the function is to compare all releases
for each package in the input vector.  The function will send messages
to the console to let you know which package it is currently comparing.
These messages will let you know how far the function is through the processing.

Once all the comparisons are completed, the function will return a data
frame summary of stability results.  The data frame will have one
row for each package in the input vector.  The data frame will also
show some information about the comparison, and give a stability assessment
for each package.  The data frame columns are as follows:
\itemize{
\item {\strong{Package}: The package name.}
\item {\strong{FV}: The first version of the package.}
\item {\strong{LV}: The last version of the package.}
\item {\strong{FR}: The first release date of the package.}
\item {\strong{LR}: The last release date of the package.}
\item {\strong{TR}: The total number of releases.}
\item {\strong{BR}: The number of breaking releases.}
\item {\strong{Score}: The stability score.}
\item {\strong{Assessment}: The stability assessment.}
}
To learn how the package stability score and assessment are calculated,
see \code{vignette("pkgdiff-stability")}.  Additional information is
included in the documentation of the \code{\link{pkg_stability}}
function.

If a package is not found in the package cache, the function
will download and compare each version of the package on CRAN.  This
process may increase the processing time.  See \code{vignette("pkg-cache")}
and \code{\link{pkg_cache}} for additional information.

If a package does not exist on CRAN, a row for that package will still
be returned.  However, all data values will be NA.  This situation may
occur if a package exists on Github, but has not yet been submitted
to CRAN.  The \strong{pkgdiff} stability functions only work with packages
that have been published to CRAN.
}
\examples{
# Create vector of packages
vct <- c("curl", "dplyr", "rvest", "tidymodels")

# Get stablity scores
res <- repo_stability(vct)
# Getting stability score for package 'curl'...
# Getting stability score for package 'dplyr'...
# Getting stability score for package 'rvest'...
# Getting stability score for package 'tidymodels'...

# View stability results
res
# A repo stability object
# - Run Datetime: 2025-03-01 17:53 UTC
# - Summary:
#   Package    FV    LV         FR         LR TR BR Score        Assessment
# 1       curl   0.2 6.2.1 2014-11-20 2025-02-19 51  1  98.0       Very Stable
# 2      dplyr   0.1 1.1.4 2014-01-16 2023-11-17 45 20  87.5 Somewhat Unstable
# 3      rvest 0.1.0 1.0.4 2014-11-22 2024-02-12 14  4  93.2            Stable
# 4 tidymodels 0.0.1 1.3.0 2018-07-27 2025-02-21 14  0 100.0           Perfect

}
\seealso{
Other prepo: 
\code{\link{pkg_repo}()},
\code{\link{print.prepo}()},
\code{\link{print.rbreak}()},
\code{\link{print.rstability}()},
\code{\link{repo_breakages}()}
}
\concept{prepo}
