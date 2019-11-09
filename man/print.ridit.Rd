\name{print.ridit}
\alias{print.ridit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Print Output of Ridit analysis
}
\description{
Print Output of Ridit analysis
}
\usage{
#print.ridit(x, ...)
\method{print}{ridit}(x,g,\dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
a numeric vector of data values or a matrix of crosstab data. 
}
  \item{g}{
a vector giving group of data or when x is a crosstab, number 1 or 2 when group is in the row or column of crosstab.

}
  \item{\dots}{
a optional text corresponds to label or code of arbitrary reference group or a number corresponds to row of group in output (when we want change reference group of output). Also user can enter an arbitrary numeric vector as reference group. Default is Null that used for total of all group as reference (special case that equivalent to the Kruskal-Wallis test). 

}
}

\author{
SeyedMahmood TaghaviShahri
}

%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x, ...) 
{
    cat("\n")
    cat("Ridit Analysis:")
    cat("\n")
    cat("\n")
    m = max(nchar(names(x$MeanRidit)))
    cutpoint = 40
    if (m > cutpoint) 
        m = cutpoint
    cat("Group", "\t", format("Label", width = m), "\t", "Mean Ridit", 
        "\n", sep = "")
    cat("-----", "\t", format("-----", width = m), "\t", "----------", 
        "\n", sep = "")
    for (k in 1:length(x$MeanRidit)) cat(k, "\t", format(substr(names(x$MeanRidit)[k], 
        start = 1, stop = m), width = m), "\t", round(x$MeanRidit, 
        4)[k], "\n", sep = "")
    cat("\n")
    cat(x$msg, "\n")
    cat("chi-squared = ", round(x$TestStatistic, 4), sep = "")
    cat(", df = ", x$df, sep = "")
    cat(", p-value = ", format(x$Sig, digits = 4), sep = "")
    cat("\n")
    cat("\n")
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
