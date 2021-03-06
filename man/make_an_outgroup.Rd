% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/propose.R
\name{make_an_outgroup}
\alias{make_an_outgroup}
\title{Make an outgroup.}
\usage{
make_an_outgroup(graph, outgroup = "", all_neutral = FALSE)
}
\arguments{
\item{graph}{An admixture graph.}

\item{outgroup}{A leaf we want to be the outgroup.}

\item{all_neutral}{For when other functions need to root graphs in a neutral way.}
}
\value{
An admixture graph with the given leaf as an outgroup, if possible.
}
\description{
Given a graph and a leaf, tries to put the root of the graph on the edge leading to the leaf.
If not possible (\emph{i. e.} if the leaf has admixture in its ancestry), puts the root
somewhere else.
}
\examples{
\donttest{
# Here is a little family tree of some dinosaur-like animals.

species <- c("triceratops", "crocodile", "diplodocus", "tyrannosaurus", "chicken")
graph <- five_leaves_graphs[[1]](species)
plot(graph)

# Of course we know that while this is correct as an undirected graph, "crocodile"
# should really be the outgroup.

graph <- make_an_outgroup(graph, "crocodile")
plot(graph)

# Strictly speaking the graph is still a little misleading because unfortunately
# the (non-bird) dinosaurs are extinct :-(
}

}
\seealso{
\code{\link{make_permutations}}

\code{\link{four_leaves_graphs}}

\code{\link{five_leaves_graphs}}

\code{\link{six_leaves_graphs}}

\code{\link{seven_leaves_graphs}}

\code{\link{eight_leaves_trees}}

\code{\link{fit_permutations_and_graphs}}

\code{\link{fit_graph_list}}

\code{\link{add_a_leaf}}

\code{\link{add_an_admixture}}

\code{\link{add_an_admixture2}}
}

