image_normalize =function(x){
  ma=max(x)
  mi=min(x)
  (x-mi)/(ma-mi)
}

a=image_pdc_RGB(image_normalize(volcano))
image(a[,,1])
image(volcano)
