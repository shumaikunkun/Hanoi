hanoi<-function(n,x,y,z){
  if(n>1) hanoi(n-1,x,z,y)
  cat(paste(x,"=>",y,"\n"))
  if(n>1) hanoi(n-1,z,y,x)
}

hanoi(as.integer(readLines("stdin")),"a","b","c")
