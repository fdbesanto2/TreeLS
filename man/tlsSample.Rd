% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{tlsSample}
\alias{tlsSample}
\title{Resample a point cloud}
\usage{
tlsSample(las, method = voxelize())
}
\arguments{
\item{las}{\code{LAS} object.}

\item{method}{point sampling algorithm - currently available: \code{\link{voxelize}} or \code{\link{randomize}}}
}
\value{
\code{LAS} object.
}
\description{
Applies an algorithm that returns a thinned point cloud.
}
\examples{
file = system.file("extdata", "pine.laz", package="TreeLS")
tls = readTLS(file)
summary(tls)

## sample points systematically in 3D
vx = tlsSample(tls, voxelize(0.05))
summary(vx)

## sample points randomly
rd = tlsSample(tls, randomize(0.5))
summary(rd)

}
