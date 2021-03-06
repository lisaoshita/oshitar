% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_to_predict.R
\name{predict_failure}
\alias{predict_failure}
\title{Predict failure probabilities for questions on Answers}
\usage{
predict_failure(model, newdata = NULL, times = c(0.5, 3, 10, 24, 100, 1000))
}
\arguments{
\item{model}{The cox regression model to use for predictions (output from the fit_model function). This function
only works with cph fits, not coxph fits.}

\item{newdata}{Optional, new data from which to get predictions for. If this is omitted, this function
will output predictions for all subjects linear predictor and strata values at the default/user-specified times.}

\item{times}{Vector of times at which to predict on. If omitted, this function will return predictions at
0.5, 3, 10, 24, 100, 1000 hours.}
}
\value{
Returns a data frame of predicted failure probabilities. The columns are the times predicted on, the
rows correspond to each question in the data.
}
\description{
This function uses a fitted cox regression model to predict failure probabilities with the
survest function from the rms package. Failure is defined as 1 - survival probability, and indicates the
probability that an event does happen before a certain time. In this case, the failure probability at time t
for a question is the probability that a question receives an answer before time t.
}
\examples{
# importing data
dir <- file.path(getwd(),"data")
out <- read.csv(file.path(dir, "answers_data.csv")) # data set without any variables set up

# fitting model
model <- fit_model(out)

# setting up variables in the prediction data
data_for_predicting <- variable_setup(newdata, forpredicting = TRUE)

predictions <- predict_failure(model, newdata = data_for_predicting)


}
