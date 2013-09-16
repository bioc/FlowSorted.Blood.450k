system("wget http://publications.scilifelab.se/f742bd8a08ad42c3921ccaaaf0e3997a/file/idat_files.zip")
system("wget http://publications.scilifelab.se/f742bd8a08ad42c3921ccaaaf0e3997a/file/sample_sheet_IDAT.csv")
system("wget http://publications.scilifelab.se/f742bd8a08ad42c3921ccaaaf0e3997a/file/CellSep_forIGB.zip")

system("unzip idat_files.zip")
system("mkdir idat")
system("mv *.idat idat/")

system("unzip CellSep_forIGB.zip")
system("mkdir CellSep")
system("mv CellSep_* CellSep")

library(minfi)
pd <- read.csv("sample_sheet_IDAT.csv", stringsAsFactors = TRUE)
names(pd)[names(pd) == "Sample"] <- "Sample_Name"
names(pd)[names(pd) == "Chip.ID"] <- "Slide"
pd$Array <- paste0(pd$Chip.Row.Pos, pd$Chip.CO.position)
pd$Chip.CO.position <- pd$Chip.Row.Pos <- NULL
pd$Array <- gsub("O", "0", pd$Array)
pd$Basename <- paste0("idat/", pd$Slide, "_", pd$Array)
pd$SampleID <- sub(".* ", "", pd$Sample_Name)
pd$CellTypeLong <- pd$Type
pd$CellType <- pd$Type
pd$CellType <- sub("^CD14\\+ Monocytes", "Mono", pd$CellType)
pd$CellType <- sub("^CD19\\+ B-cells", "Bcell", pd$CellType)
pd$CellType <- sub("^CD4\\+ T-cells", "CD4T", pd$CellType)
pd$CellType <- sub("^CD56\\+ NK-cells", "NK", pd$CellType)
pd$CellType <- sub("^CD8\\+ T-cells", "CD8T", pd$CellType)
pd$CellType <- sub("^Granulocytes", "Gran", pd$CellType)
pd$CellType <- sub("^Whole blood", "WBC", pd$CellType)
pd$CellType <- sub("^Neutrophils", "Neu", pd$CellType)
pd$CellType <- sub("^Eosinophils", "Eos", pd$CellType)
pd$Type <- NULL
FlowSorted.Blood.450k <- read.450k(pd$Basename, verbose=TRUE)
sampleNames(FlowSorted.Blood.450k) <- pd$Sample_Name
save(FlowSorted.Blood.450k, file = "FlowSorted.Blood.450k.rda")
