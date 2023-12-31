% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/json.R
\name{robyn_write}
\alias{robyn_write}
\alias{print.robyn_write}
\alias{robyn_read}
\alias{print.robyn_read}
\alias{robyn_recreate}
\title{Import and Export Robyn JSON files}
\usage{
robyn_write(
  InputCollect,
  OutputCollect = NULL,
  select_model = NULL,
  dir = OutputCollect$plot_folder,
  OutputModels = NULL,
  export = TRUE,
  quiet = FALSE,
  all_sol_json = NULL,
  ...
)

\method{print}{robyn_write}(x, ...)

robyn_read(json_file = NULL, step = 1, quiet = FALSE, ...)

\method{print}{robyn_read}(x, ...)

robyn_recreate(json_file, quiet = FALSE, ...)
}
\arguments{
\item{InputCollect}{\code{robyn_inputs()} output.}

\item{OutputCollect}{\code{robyn_run(..., export = FALSE)} output.}

\item{select_model}{Character. Which model ID do you want to export
into the JSON file?}

\item{dir}{Character. Existing directory to export JSON file to.}

\item{OutputModels}{\code{robyn_run()} output.}

\item{export}{Boolean. Export outcomes into local files?}

\item{quiet}{Boolean. Keep messages off?}

\item{all_sol_json}{Dataframe. Add all pareto solutions to json.}

\item{...}{Additional parameters.}

\item{x}{\code{robyn_read()} or \code{robyn_write()} output.}

\item{json_file}{Character. JSON file name to read and import as list.}

\item{step}{Integer. 1 for import only and 2 for import and ouput.}
}
\value{
(invisible) List. Contains all inputs and outputs of exported model.
Class: \code{robyn_write}.
}
\description{
\code{robyn_write()} generates a JSON file with all the information
required to replicate a single Robyn model.
}
\examples{
\dontrun{
InputCollectJSON <- robyn_inputs(
  dt_input = Robyn::dt_simulated_weekly,
  dt_holidays = Robyn::dt_prophet_holidays,
  json_file = "~/Desktop/RobynModel-1_29_12.json"
)
print(InputCollectJSON)
}
}
