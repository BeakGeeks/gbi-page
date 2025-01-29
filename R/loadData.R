loadData <- function(){
  return(read.table("data/gbif-export.csv", sep="\t", fill=TRUE, header=TRUE, quote=""))
}
