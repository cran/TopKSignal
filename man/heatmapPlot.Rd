% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/heatmapPlot.R
\name{heatmapPlot}
\alias{heatmapPlot}
\title{Heatmap noise matrix plot}
\usage{
heatmapPlot(estimation, type = "full", title = "")
}
\arguments{
\item{estimation}{The bootstrap estimation obtained from the estimateTheta function}

\item{type}{The type of method used: Two options are available, 'full' or 'reduced'}

\item{title}{The title of the plot}
}
\value{
A list with:
\itemize{
  \item plot - A heatmap plot with the noise matrix (ordered values).
  \item matrixNoiseOrdered - The matrix noise ordered by the columns. The objects are ordered by the estimated value.
  \item estimateThetaOrdered - The theta vector ordered by their importance (from the highest value to the lowest).
}
}
\description{
The heatmap plot allows us to control for specific error patterns associated with the assessors. The heatmap plot displays information about the noises involved in the estimation process. The rows of the noise matrix are ordered by the estimated ranks of the consensus signal values. The columns are ordered by the column error sums. In the plot, the column with the lowest sum is positioned on the left side and the column with the highest sum is positioned on the right side. Hence, assessors positioned on the left show substantial consensus and thus are more reliable than those positioned to the far right. The heatmap plot is also an exploratory tool for the search for a subset of top-ranked objects (notion of top-$k$ objects ? see the package TopKLists on CRAN for details and functions). Please note, beyond exploratory tasks, the noise matrix can serve as input for various inferential purposes such as testing for assessor group differences. The heatmapPlot function requires the estimation results obtained from the estimateTheta function.
}
\examples{
data(estimatedSignal)
heatmapPlot(estimatedSignal)
}
\keyword{heatmapPlot}
