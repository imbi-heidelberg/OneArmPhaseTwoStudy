% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz.R
\name{getD_proportionally}
\alias{getD_proportionally}
\title{Get the conditional errors proportionally.}
\usage{
getD_proportionally(design, alpha)
}
\arguments{
\item{design}{a dataframe containing all critical values for a Simon's two-stage design defined by the colums "r1", "n1", "r", "n" and "p0". 
\itemize{
   \item r1 = critical value for the first stage (more than "r1" responses needed to proceed to the second stage).
   \item n1 = number of patients enrolled in the first stage.
   \item r = critical value for the whole trial (more than "r" responses needed at the end of the study to reject the null hypothesis).
   \item n = number of patients enrolled in the whole trial.
   \item p0 = response probability under the null hypothesis. 
}}

\item{alpha}{overall significance level the trial was planned for.}
}
\description{
Calculates the conditional error for all possible outcomes at the interim analysis (different number of responses) 
spending "rest alpha" (difference between nominal alpha level and actual alpha level) proportionally.
}
\examples{
\dontrun{
#Calculate a Simon's two-stage design
design <- getSolutions()$Solutions[3,] #minimax-design for the default values.

ce_prop <- getD_proportionally(design, 0.05)
ce_prop
}
}
\references{
Englert S., Kieser M. (2012): Adaptive designs for single-arm phase II trials in oncology. Pharmaceutical Statistics 11,241-249.
}
\seealso{
\code{\link{getD_equally}}, \code{\link{getD_distributeToOne}}, \code{\link{getD_none}}
}

