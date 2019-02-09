#average smoothing

image_smooth_avg4 = function(m){
  nc=ncol(m);nr = nrow(m)
  s2h=m[,1:nc-1]+m[,2:nc]
  s4 = s2h[1:nr-1,]+s2h[2:nr,]
  s4/4
}

image_smooth_avg9 = function(m){
  nc=ncol(m);nr = nrow(m)
  s3h = m[,1:(nc-2)]+m[,2:(nc-1)]+m[,3:nc]
  s9 = m[1:(nr-2),]+m[2:(nr-1),]+m[3:nr,]
  s9/4
}

#image_smooth_avgxy = function(m,x=3,y=3){
# nc=ncol(m);nr = nrow(m)
#
#}
