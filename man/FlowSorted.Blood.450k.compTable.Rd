\name{FlowSorted.Blood.450k.compTable}
\alias{FlowSorted.Blood.450k.compTable}
\docType{data}
\title{
	Cell Composition Association Table
}
\description{
    Association of each probe on the Illumina 450k with blood cell composition
	Note that probes on the sex chromosomes and those that contain annotated 
	single nucleotide polymorphisms (SNPs) have been filtered 
	(see Methods section of Jaffe and Irizarry 2013, below)
}
\usage{
data(FlowSorted.Blood.450k.compTable)
}
\details{
  We recommend using the CpG identifiers to match each probe from a user's 
  differential methylation analysis in their whole blood data to obtain the 
  corresponding composition p-value - if there are many small p-values for 
  significant differentially methylated sites for the exposure/outcome/trait 
  of interest, this may be a sign of confounding via composition differences, 
  in which case we recommend estimating cellular components using the minfi 
  Bioconductor package, and formally exploring this potential correlation 
  between the trait, composition, and DNA methylation.
}
\format{
Name: CpG identifier from the Illumina 450k
Fstat: f-statistic for composition from the ANOVA containing 6 samples/biological replicates 
	per cell type across 6 cell types
p.value: corresponding p-value for f-statistic
CD8T_mean: mean DNA methylation (DNAm) across the 6 CD8+ T-cell replicates, 
	on the beta/proportion methylation scale
CD4T_mean: mean DNA methylation (DNAm) across the 6 CD4+ T-cell replicates, 
	on the beta/proportion methylation scale
NK_mean: mean DNA methylation (DNAm) across the 6 Natural Killer cell 
	replicates, on the beta/proportion methylation scale
Bcell_mean: mean DNA methylation (DNAm) across the 6 B-cell replicates, 
	on the beta/proportion methylation scale
Mono_mean: mean DNA methylation (DNAm) across the 6 monocyte replicates, 
	on the beta/proportion methylation scale
Gran_mean: mean DNA methylation (DNAm) across the 6 granulocyte replicates, 
	on the beta/proportion methylation scale
DNAm_min: minimum beta values across the 36 samples
DNAm_max: maximum beta values 
DNAm_range: range of beta values
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
  \code{\link{FlowSorted.Blood.450k.JaffeModelPars}} for an additional dataset
  derived from this one. See the minfi package for tools for estimating 
  cell type composition in blood using these data.}
\examples{
data(FlowSorted.Blood.450k.compTable)
}
\keyword{datasets}