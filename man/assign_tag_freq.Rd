% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_to_predict.R
\name{assign_tag_freq}
\alias{assign_tag_freq}
\title{Assign tag frequency}
\usage{
assign_tag_freq(tag, tagdf)
}
\arguments{
\item{tag}{vector of tags}

\item{tagdf}{data frame of tags and tag frequencies (output from tag_frequency function)}
}
\value{
Returns a numeric vector corresponding to the frequency of each tag in the input vector. Questions with
no tags are assigned a frequency of 0.
}
\description{
Used in exploratory_setup() and variable_setup() for creating the tag-based variables.
This function takes each tag in the input vector, and matches it to the corresponding frequency
in the input data frame. Arguments are from the output of the tag_frequency function.
}
