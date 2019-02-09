image_sharp_sd4<-function(m){
  #sd = sqrt(E(x^2) - E(x)^2)
  nc = ncol(m);nr = nrow(m)
  avg = m[1:nr-1,]+m[2:nr]
  avg = avg[,1:nc-1]+avg[,2:nc]
  avg = avg/4
  avg = avg^2
  sqr = m[1:nr-1,1:nc-1]^2+m[2:nr,1:nc-1]^2+m[1:nr-1,2:nc]^2+m[2:nr,2:nc]^2
  sqr = sqr/4
  sqrt(sqr - avg)
}
