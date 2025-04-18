% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reports.R
\name{print.rbreak}
\alias{print.rbreak}
\title{Print a Repo Breakages Object}
\usage{
\method{print}{rbreak}(x, ..., verbose = FALSE)
}
\arguments{
\item{x}{The repo breakages object to print.}

\item{...}{Follow-on parameters to the print function.}

\item{verbose}{If FALSE, prints only the difference removals.
If TRUE, prints both additions and removals. Default is FALSE.}
}
\value{
The repo breakage object, invisibly.
}
\description{
Print routine for a repo breakages object of class "rbreak".
}
\seealso{
Other prepo: 
\code{\link{pkg_repo}()},
\code{\link{print.prepo}()},
\code{\link{print.rstability}()},
\code{\link{repo_breakages}()},
\code{\link{repo_stability}()}
}
\concept{prepo}
