image_pdc_RGB2 = function(m,lower=NULL,mew=NULL,upper=NULL,
                         fill_upper=c(1,0,0),fill_lower=c(0,0,1),
                         fill_1=c(1,1,1),fill_0=c(0,0,0)){
  if(is.null(lower)) lower = quantile(m,.1)
  if(is.null(mew)) mew = mean(m)
  if(is.null(upper)) upper = quantile(m,.9)
  nr=nrow(m);nc = ncol(m)

  lower = as.numeric(lower)
  upper =as.numeric(upper)
  #0 - lower - m - upper - 1
  #0 1  |   2  |  3 |    4 5
  i0 = m==0
  i1 = (m>0 & m<lower)
  i2 = (m>=lower & m<mew)
  i3 = (m>=mew & m<upper)
  i4 = (m>=upper & m<1)
  i5 = m==1

  R = matrix(NA,nr,nc)
  G = R;B=G

  R[i0] = fill_0[1,drop = T]
  G[i0] = fill_0[2,drop = T]
  B[i0] = fill_0[3,drop = T]

  R[i1] = fill_lower[1,drop = T]
  G[i1] = fill_lower[2,drop = T]
  B[i1] = fill_lower[3,drop = T]

  R[i2] = 0
  G[i2] = 1/(mew-lower)*m[i2]-lower/(mew-lower)
  B[i2] = -1/(mew-lower)*m[i2]+mew/(mew-lower)

  R[i3] = 1/(upper-mew)*m[i3]-mew/(upper-mew)
  G[i3] = -1/(upper-mew)*m[i3]+mew/(upper-mew)+1
  B[i3] = 0

  R[i4] = fill_upper[1,drop = T]
  G[i4] = fill_upper[2,drop = T]
  B[i4] = fill_upper[3,drop = T]

  R[i5] = fill_1[1,drop = T]
  G[i5] = fill_1[2,drop = T]
  B[i5] = fill_1[3,drop = T]
  a =numeric(nr*nc*3)
  dim(a) = c(nr,nc,3)
  a[,,1]=R
  a[,,2]=G
  a[,,3]=B
  a
}
