% Generated by roxygen2 (4.0.1): do not edit by hand
\name{RestrictedBolzmannMachine}
\alias{RestrictedBolzmannMachine}
\title{Initialize a Restricted Bolzman Machine}
\usage{
RestrictedBolzmannMachine(input, output, weights = NULL)
}
\arguments{
\item{input,output}{\code{\link{Layer}} objects}

\item{weights}{optional starting weights. If \code{NULL}, weights will be initialized to 0}
}
\value{
an object of class \code{RestrictedBolzmannMachine} containing the following elements:
\itemize{
\item{input,output}{\code{\link{Layer}}s}
\item{weights, weights.breaks}{as input}
\item{pretrained}{boolean switch to mark the state of the layer. \code{FALSE} just after initialization.}
}
}
\description{
Creates a Restricted Bolzman Machine (RBM), precisely a \code{RestrictedBolzmannMachine} object, with the given specifications.
It is typically stacked in a \code{\link{DeepBeliefNet}}.
}
\section{Copying/Cloning}{

For performance purposes, the weights are stored in an environment. This means that when you copy the RestrictedBolzmannMachine with an assignment, you do not copy the weights
and any modification you make to the new object will be propagated to the original one, and reciprocally.
Use \code{\link{clone}} to control this and make a copy of the weights whenever you need it. Note that all the functions defined in the package do this by default.
}
\examples{
rbm <- rbm(Layer(784, "continuous"), Layer(1000, "binary"))
print(rbm)
methods(class="RestrictedBolzmannMachine")
}
\seealso{
\code{\link{DeepBeliefNet}}, which makes use of RestrictedBolzmannMachine objects, \code{\link{Layer}}.
}

