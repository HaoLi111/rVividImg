image_BoundaryExtract = function(m){
  nc = ncol(m);nr = nrow(m)
  v11 = m[1:(nr-1),1:(nc-1)]
  v12 = m[1:(nr-1),2:nc]
  v21 = m[2:nr,1:(nc-1)]
  v22 = m[2:nr,2:nc]
  re = ifelse(v11+v12+v21+v22==2|v11+v12+v21+v22==3,1,0)
  re
}
