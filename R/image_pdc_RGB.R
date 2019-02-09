image_pdc_RGB = function(m,lower=NULL,mew=NULL,upper=NULL){
  if(is.null(lower)) lower = quantile(m,.1)
  if(is.null(mew)) mew = mean(m)
  if(is.null(upper)) upper = quantile(m,.9)
  nr=nrow(m);nc = ncol(m)
  a = numeric(nr*nc*3)
  dim(a) = c(nr,nc,3)
  #R - ub
  Rg = function(p,l,m,u){
    if(p>m && p<=u){
      1/(u-m)*p-m/(u-m)
    }else{
      0
    }
  }
  Gg = function(p,l,m,u){
    if(p>l && p<u){
      if(p>m){
        -1/(u-m)*p+m/(u-m)+1
      }else{
        1/(m-l)*p-m/(m-l)+1
      }
    }else{
      0
    }
  }
  Bg = function(p,l,m,u){
    if(p>l && p<m){
      -1/(m-l)*p+m/(m-l)
    }else{
      0
    }
  }
  for(i in 1:nr){
    for(j in 1: nc){
      if(m[i,j]==0 || m[i,j]==1){
        a[i,j,1]<-a[i,j,2]<-a[i,j,3]<-m[i,j]
      }else{
        a[i,j,1] = Rg(m[i,j],lower,mew,upper)
        a[i,j,2] = Gg(m[i,j],lower,mew,upper)
        a[i,j,3] = Bg(m[i,j],lower,mew,upper)
      }
    }
  }
  a
}
