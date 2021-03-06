% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/flair.R
\name{flair}
\alias{flair}
\alias{flair_rx}
\alias{flair_rx.with_flair}
\alias{flair_rx.default}
\alias{flair_quick}
\alias{flair_all}
\alias{flair_all.default}
\alias{flair_all.with_flair}
\alias{flair_args}
\alias{flair_funs}
\alias{flair_input_vals}
\title{Formats source code}
\usage{
flair(x, pattern, before = NULL, after = NULL, ...)

flair_rx(x, pattern, before = NULL, after = NULL, ...)

\method{flair_rx}{with_flair}(x, pattern, before = NULL, after = NULL, ...)

\method{flair_rx}{default}(x, pattern, before = NULL, after = NULL, ...)

flair_quick(x, pattern, before = NULL, after = NULL, ...)

flair_all(x, ...)

\method{flair_all}{default}(x, ...)

\method{flair_all}{with_flair}(x, ...)

flair_args(x, ...)

flair_funs(x, ...)

flair_input_vals(x, ...)
}
\arguments{
\item{x}{A string or \code{\link{with_flair}} object}

\item{pattern}{A pattern to match.  By default, this is a fixed pattern;
use \code{flair_rx} for regular expressions.}

\item{before}{String giving specific html tags to insert before matched text.}

\item{after}{String giving specific html tags to insert after matched text.}

\item{...}{Formatting style options, passed to \code{\link{txt_style}}}
}
\value{
A string with formatting wrappers.
}
\description{
Adds decorative formatting to parts of a string or source code.
}
\details{
If input is a string object, \code{flair} returns a formatted string.

If input is a \code{\link{with_flair}} object, \code{flair} returns a
 \code{\link{with_flair}} object with the source elements formatted.

Currently, \code{flair} is only built for html formatting.
}
\examples{
\donttest{
code_string <- "foo <- mean(1:10, na.rm = TRUE)"

code_string \%>\% flair("foo")

code_string \%>\% flair_args()

code_string \%>\% flair_funs(color = "red")
}

}
