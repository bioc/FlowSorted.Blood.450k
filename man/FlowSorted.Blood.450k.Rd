\name{FlowSorted.Blood.450k}
\alias{FlowSorted.Blood.450k}
\docType{data}
\title{
  Illumina Human Methylation data from 450k on sorted blood cell
  populations
}
\description{
	This \code{RGset} contains Illumina 450k DNA methylation measurements 
	on 60 samples from Reinius et al. 2012, which can be used by the \link{minfi} 
	package to estimate cellular composition from whole blood samples. This data may
	also be useful to individuals as example Illumina 450k data for trying
	preprocessing methods across a variety of Bioconductor packages.
}

\usage{
data(FlowSorted.Blood.450k)
}

\details{
  The \code{FlowSortedBlood.450k} objects is based an samples assayed
  as part of Reinius et al (2012), and obtained from
  \url{http://publications.scilifelab.se/f742bd8a08ad42c3921ccaaaf0e3997a}.
  A script for obtaining this dataset is available in the \code{scripts}
  directory of this package.
}
\format{
  An object of class \code{RGset}.
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
\seealso{ \code{\link{FlowSorted.Blood.450k.JaffeModelPars}} and
  \code{\link{FlowSorted.Blood.450k.compTable}} for additional datasets
  derived from this one. See the minfi package for 
  tools for estimating cell type composition in blood using these data..}
\examples{
data(FlowSorted.Blood.450k)
}
\keyword{datasets}
