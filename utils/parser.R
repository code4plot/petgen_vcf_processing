parse_info <- function(vcf, field){
  res <- sapply(vcf$X8, function(x) {
    tmp <- strsplit(x, ";")[[1]]
    tmp <- tmp[grep(sprintf("%s=",field), tmp)]
    strsplit(tmp, "=")[[1]][2]
  })
  return(res)
}