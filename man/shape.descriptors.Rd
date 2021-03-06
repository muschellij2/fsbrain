% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/curvature.R
\name{shape.descriptors}
\alias{shape.descriptors}
\title{Computes geometric curvature-based descriptors.}
\usage{
shape.descriptors(pc, descriptors = shape.descriptor.names())
}
\arguments{
\item{pc}{a 'principal_curvatures' data list, see \code{\link{principal.curvatures}} for details.}

\item{descriptors}{vector of character strings, the descriptors you want. See \code{\link{shape.descriptor.names}} for all available names.}
}
\value{
dataframe of descriptor values, each columns contains one descriptor.
}
\description{
Computes geometric curvature-based descriptors.
}
\references{
Shimony et al. (2016). Comparison of cortical folding measures for evaluation of developing human brain. Neuroimage, 125, 780-790.
}
