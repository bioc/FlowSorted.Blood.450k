\name{FlowSorted.Blood.450k.JaffeModelPars}
\alias{FlowSorted.Blood.450k.JaffeModelPars}
\docType{data}
\title{
  Model Parameters for Blood Cell Type Estimation
}
\description{
  This object can be used by \link{minfi} to estimate the relative proportion
  of each cell type, given user's whole blood Illumina 450k data. 
}
\usage{
data(FlowSorted.Blood.450k.JaffeModelPars)
}
\details{
  For details on how this coefficient object was created, 
  see Methods section of Jaffe and Irizarry, 2013, below. 
  For statistical details on how the cell estimation procedure
  is performed, refer to Houseman et al 2012.
}
\format{
  A matrix where rows are selected CpGs that are differentially methylated
  by cell type, and columns are particular cell types.
}
\references{
  Reinius, L. E. et al.
  \emph{Differential DNA Methylation in Purified Human Blood Cells:
    Implications for Cell Lineage and Studies on Disease
    Susceptibility}.
  PLoS ONE 7, e41361 (2012).
  \url{http://dx.doi.org/10.1371/journal.pone.0041361}

  Houseman E.A. et al
  \emph{DNA methylation arrays as surrogate measures of cell mixture
    distribution.}
  BMC Bioinformatics 13, p86 (2012).
  \url{http://dx.doi.org/10.1186/1471-2105-13-86}
  
  Jaffe A.E. and Irizarry R.A.
  \emph{Accounting for cellular heterogeneity is critical in epigenome-wide association studies}
  Under Review (2013).
}
\seealso{ \code{\link{FlowSorted.Blood.450k}} for the original data, 
  \code{\link{FlowSorted.Blood.450k.compTable}} for an additional dataset
  derived from this one. See the minfi package for tools for estimating cell
  type composition in blood using these data.}
\examples{
data(FlowSorted.Blood.450k.JaffeModelPars)
}
\keyword{datasets}
