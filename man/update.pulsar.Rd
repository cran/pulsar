% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R
\name{update.pulsar}
\alias{update.pulsar}
\title{Update a pulsar call}
\usage{
\method{update}{pulsar}(object, ..., evaluate = TRUE)
}
\arguments{
\item{object}{a n existing pulsar or batch.pulsar object}

\item{...}{arguments to \code{pulsar} to update}

\item{evaluate}{Flag to evaluate the function. If \code{FALSE}, the updated call is returned without evaluation}
}
\value{
If \code{evaluate = TRUE}, the fitted object - the same output as \code{pulsar} or \code{batch.pulsar}. Otherwise, the updated call.
}
\description{
Update a pulsar model with new or altered arguments. It does this by extracting the call stored in the object, updating the call and (by default) evaluating it in the environment of the original \code{pulsar} call.
}
\details{
The \code{update} call is evaluated in the environment specified by the \code{pulsar} or \code{batch.pulsar} object, so if any variables were used for arguments to the original call, unless they are purposefully updated, should not be altered. For example, if the variable for the original data is reassigned, the output of \code{update} will not be on the original dataset.
}
\examples{
\dontrun{p <- 40 ; n <- 1200
dat   <- huge.generator(n, p, "hub", verbose=FALSE, v=.1, u=.3)
lams  <- getLamPath(getMaxCov(dat$data), .01, len=20)

## Run pulsar with huge
hugeargs <- list(lambda=lams, verbose=FALSE)
out.p <- pulsar(dat$data, fun=huge::huge, fargs=hugeargs,
                rep.num=20, criterion='stars')

## update call, adding bounds
out.b <- update(out.p, lb.stars=TRUE, ub.stars=TRUE)
}
}
\seealso{
\code{eval}, \code{\link{update}}, \code{\link{pulsar}}, \code{\link{batch.pulsar}}
}
