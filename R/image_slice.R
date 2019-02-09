#image_slice
image_slice = function(m,dim = 4,base = NULL){
  if(dim ==1){
    if(is.null(base)) base = 1:nrow(m)
    matplot(base,m,type = 'l',main = 'slice along columns')
  }else if(dim == 2){
    if(is.null(base)) base = 1:ncol(m)
    matplot(base,t(as.matrix(m)),type = 'l',main = 'slice along rows')
  }else if(dim == 0){
    if(is.null(base)){
      contour(m)
    }else{
      contour(base$x,base$y,m,xlab = 'x',ylab = 'y')
    }
  }else if(dim==3){
    if(is.null(base)){
      persp(m,shade = .6)
    }else{
      persp(base$x,base$y,m,shade = .6,xlab = 'x',ylab = 'y')
    }
  }else if(dim==4){
    layout(matrix(1:4,2))
    for(i in 0:3){
      image_slice(m,i,base)
    }
  }else{
    message('Please specify dim = 1/2/3/4 !')
  }
}

#image_slice(matrix(runif(64),8,8))
