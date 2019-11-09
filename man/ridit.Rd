\name{ridit}
\alias{ridit}
\title{
Ridit Analysis
}
\description{
An extension of the Kruskal-Wallis test that allow specify arbitrary reference group. Also provide Mean Ridit for each group. Mean Ridit of a group is an estimate of probability a random observation from that group will be greater than or equal to a random observation from reference group.
}
\usage{
ridit(x, g, ref = NULL)
}
\arguments{
  \item{x}{
a numeric vector of data values or a matrix of crosstab data. 
}
  \item{g}{
a vector giving group of data or when x is a crosstab, number 1 or 2 when group is in the row or column of crosstab.
}
  \item{ref}{
a text corresponds to label or code of arbitrary reference group or a number corresponds to row of group in output (when we want change reference group of output). Also user can enter an arbitrary numeric vector as reference group. Default is Null that used for total of all group as reference (special case that equivalent to the Kruskal-Wallis test). 
}
}

\references{
Fleiss, J. L., (1986), The Design and Analysis of Clinical Experiments. New York: John Wiley & Sons. 
}
\author{
SeyedMahmood TaghaviShahri
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
Special case of Ridit Analysis is \code{\link{kruskal.test}} when reference is total of all groups.
}
\examples{

x=airquality$Ozone
g=airquality$Month
kruskal.test(x,g)
ridit(x,g)
ridit(x,g,"5")
ridit(x,g,5)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Statistics }
\keyword{ univar }
\keyword{ htest }

