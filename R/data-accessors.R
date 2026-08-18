.flowsorted_blood_cache <- function() {
    BiocFileCache::BiocFileCache(tools::R_user_dir("FlowSorted.Blood.450k", "cache"), ask = FALSE)
}

.flowsorted_blood_load <- function(rname, url, md5, object_name) {
    bfc <- .flowsorted_blood_cache()
    path <- BiocFileCache::bfcrpath(bfc, rnames = rname, fpath = url)
    actual_md5 <- unname(tools::md5sum(path))
    if (!identical(actual_md5, md5)) {
        BiocFileCache::bfcremove(bfc, BiocFileCache::bfcquery(bfc, rname, "rname")$rid)
        stop(
            "Downloaded file for '", rname, "' failed its checksum check ",
            "(expected ", md5, ", got ", actual_md5, "). The cached copy was ",
            "removed; please call this function again to retry the download."
        )
    }
    e <- new.env()
    load(path, envir = e)
    get(object_name, envir = e)
}

# Illumina 450k RGChannelSet on 60 flow-sorted whole blood samples
# (Reinius et al. 2012). See ?FlowSorted.Blood.450k for details.
FlowSorted.Blood.450k <- function() {
    .flowsorted_blood_load(
        rname = "FlowSorted.Blood.450k.rda",
        url = "https://zenodo.org/records/21996984/files/FlowSorted.Blood.450k.rda?download=1",
        md5 = "a9b938477ca63164415784d98838312e",
        object_name = "FlowSorted.Blood.450k"
    )
}

# Per-probe association table with blood cell composition. See
# ?FlowSorted.Blood.450k.compTable for details.
FlowSorted.Blood.450k.compTable <- function() {
    .flowsorted_blood_load(
        rname = "FlowSorted.Blood.450k.compTable.rda",
        url = "https://zenodo.org/records/21996984/files/FlowSorted.Blood.450k.compTable.rda?download=1",
        md5 = "16d7328c20f6a4b57e266017a70ca211",
        object_name = "FlowSorted.Blood.450k.compTable"
    )
}
