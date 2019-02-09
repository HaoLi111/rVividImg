image_sharp_level = function(m,level = NULL){
  if(is.null(level)){
    level = c(min(m),quantile(m,.05),.quantile(m,.1),
              median(m),quantile(m,.9),
              quantile(m,.95),
              max(m))
  }
  l = length(level)
  nc = ncol(m);nr = nrow(m)
  for(i in 1:nc){
    for(j in 1:nr){
      for(k in 1:l){
        if(m[i,j]<=level[k]){
          m[i,j] = level[k]
          break
        }
      }
    }
  }
  m
}

image_sharp_split<-function(m,splitlevel = NULL){
  if(is.null(splitlevel)) splitlevel = mean(m[m!=1 & m!=0])
  nc = ncol(m);nr = nrow(m)
  m[m>splitlevel] = 1
  m[m<=splitlevel] = 0
  m
}

####fish2 = fish;fish2[is.na(fish)]=mean(fish)
#ff2=image_sharp_split(a)
