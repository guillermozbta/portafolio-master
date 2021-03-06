\name{chart.RollingCorrelation}
\alias{chart.RollingCorrelation}
\title{chart rolling correlation fo multiple assets}
\usage{
chart.RollingCorrelation(Ra, Rb, width = 12, xaxis = TRUE,
  legend.loc = NULL, colorset = (1:12), ..., fill = NA)
}
\arguments{
  \item{Ra}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{Rb}{return vector of the benchmark asset}

  \item{width}{number of periods to apply rolling function
  window over}

  \item{xaxis}{if true, draws the x axis}

  \item{legend.loc}{places a legend into one of nine
  locations on the chart: bottomright, bottom, bottomleft,
  left, topleft, top, topright, right, or center.}

  \item{colorset}{color palette to use, set by default to
  rational choices}

  \item{\dots}{any other passthru parameters}

  \item{fill}{a three-component vector or list (recycled
  otherwise) providing filling values at the left/within/to
  the right of the data range. See the fill argument of
  \code{\link{na.fill}} for details.}
}
\description{
A wrapper to create a chart of rolling correlation metrics
in a line chart
}
\details{
The previous parameter \code{na.pad} has been replaced with
\code{fill}; use \code{fill = NA} instead of \code{na.pad =
TRUE}, or \code{fill = NULL} instead of \code{na.pad =
FALSE}.
}
\examples{
# First we get the data
data(managers)
chart.RollingCorrelation(managers[, 1:6, drop=FALSE],
		managers[, 8, drop=FALSE],
		colorset=rich8equal, legend.loc="bottomright",
		width=24, main = "Rolling 12-Month Correlation")
}
\author{
Peter Carl
}
\keyword{distribution}
\keyword{hplot}
\keyword{models}
\keyword{multivariate}
\keyword{ts}

