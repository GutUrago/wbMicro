% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mdt_abstract.R
\name{mdt_abstract}
\alias{mdt_abstract}
\title{Get study info}
\usage{
mdt_abstract(id, org = "wb", raw_html = FALSE)
}
\arguments{
\item{id}{a study id number. Accepts any of \code{id} (integer) and
\code{idno} (string) values to fetch study information.
See object returned by \code{mdt_seach()} or \code{mdt_latest()}}

\item{org}{a string that represents the name of an organization.}

\item{raw_html}{a logical value, if \code{TRUE} returns raw formatted html}
}
\value{
Prints to html viewer by default
}
\description{
Get study info
}
\examples{
mdt_abstract(6211, "wb")
}
\author{
Gutama Girja Urago
}
