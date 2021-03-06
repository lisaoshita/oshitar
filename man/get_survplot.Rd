% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exploratory_analysis.R
\name{get_survplot}
\alias{get_survplot}
\title{Plots survival curves for survfit objects}
\usage{
get_survplot(survfit, xlim = NULL)
}
\arguments{
\item{survfit}{survfit object to be used}

\item{xlim}{optional, specifies the x-axis limits of the returned survival plot}
}
\value{
survival curves plotted with ggplot
}
\description{
Uses tidy function from broom package to convert survfit object to a data frame. Uses ggplot to
plot Kaplan-Meier survival curves.
}
