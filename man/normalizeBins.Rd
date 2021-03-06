%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  normalizeBins.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{normalizeBins}
\alias{normalizeBins}


\alias{normalizeBins,QDNAseqCopyNumbers-method}

\title{Normalizes binned read counts}

\usage{
normalizeBins(object, method="median", force=FALSE, verbose=getOption("QDNAseq::verbose",
  TRUE))
}

\description{
    Normalizes binned read counts.
}

\arguments{
    \item{object}{A \code{\link{QDNAseqCopyNumbers}} object with \code{copynumber}
        data.}
    \item{method}{A \code{\link[base]{character}} string specifying the normalization method.
        Choices are "mean", "median" (default), or "mode". A partial
        string sufficient to uniquely identify the choice is permitted.}
    \item{force}{Running this function will remove possible segmentation and
        calling results. When they are present, running requires specifying
        \code{force} is \code{\link[base:logical]{TRUE}}.}
    \item{verbose}{If \code{\link[base:logical]{TRUE}}, verbose messages are produced.}
}

\value{
    Returns a \code{\link{QDNAseqCopyNumbers}} object with the assay data element
    \code{copynumber} scaled with the chosen method.
}

\examples{
data(LGG150)
readCounts <- LGG150
readCountsFiltered <- applyFilters(readCounts)
readCountsFiltered <- estimateCorrection(readCountsFiltered)
copyNumbers <- correctBins(readCountsFiltered)
copyNumbersNormalized <- normalizeBins(copyNumbers)
}

\author{Ilari Scheinin}


\keyword{manip}
