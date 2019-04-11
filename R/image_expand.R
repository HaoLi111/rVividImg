image_expand = function(m,nx =100,ny = 100,value = 0){
  nc=ncol(m);nr=nrow(m)
  missingX = nx-nr
  missingY = ny-nc
  m =rbind(m,matrix(value,missingX,nc))
  m =cbind(m,matrix(value,nx,missingY))
  m
}
