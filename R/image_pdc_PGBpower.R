image_pdc_RGBpower<-function(m,Rp = .2,
                             Gp = 1,
                             Bp = 5){
  re = rbind(m,m,m)
  dim(re) = c(nrow(m),ncol(m),3)
  re[,,1] = m^Rp
  re[,,2] = m^Gp
  re[,,3] = m^Bp
  re
}
