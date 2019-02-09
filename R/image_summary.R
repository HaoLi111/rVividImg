image_summary<-function(m){
  if(length(dim(m))==2){
    #type = 'greyscale'
    layout(1:2)
    hist(m,main = 'Histogram of brightness')
    sum = summary(as.vector(m))
    sumExc = summary(m[m!=1&m!=0])
    hist(m[m!=1&m!=0],main = 'Histogram of brightness,excluding 0&1')
    list(type = 'greyscale',
         summary = sum,
         summaryExc = sumExc)
  }else{
    #3 color
    #
    layout(matrix(1:6,2))

    Red = m[,,1];Green = m[,,2];Blue = m[,,3]
    #R
    hist(Red,main = 'Histogram:Red Channel')
    sumRed = summary(as.vector(Red))
    sumRedExc = summary(Red[Red!=1&Red!=0])
    hist(Red[Red!=1&Red!=0],main = 'Histogram:Red Channel,excluding 0&1')
    #G
    hist(Green,main = 'Histogram:Green Channel')
    sumGreen = summary(as.vector(Green))
    sumGreenExc = summary(Green[Green!=1&Green!=0])
    hist(Green[Green!=1&Green!=0],main = 'Histogram:Green Channel,excluding 0&1')
    #B
    hist(Blue,main = 'Histogram:Blue Channel')
    sumBlue = summary(as.vector(Blue))
    sumBlueExc = summary(Blue[Blue!=1&Blue!=0])
    hist(Blue[Blue!=1&Blue!=0],main = 'Histogram:Blue Channel,excluding 0&1')


    list(R =list(summary = sumRed,summaryExc = sumRedExc),
         G = list(summary = sumGreen,summaryExc = sumGreenExc),
         B = list(summary = sumBlue,summaryExc = sumBlueExc))
  }
}

#image_summary(a)
#image_summary(fish)




