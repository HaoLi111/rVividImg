#a = matrix(runif(1600),400,400)

#system.time(image_pdc_RGB(a))
#system.time(image_pdc_RGB2(a))
#a2 = image_pdc_RGB2(a)
#writeTIFF(a2,'a.tif')


#system.time(image_pdc_RGB(a))
用户 系统 流逝
#0.98 0.00 1.05
#> system.time(image_pdc_RGB2(a))
用户 系统 流逝
#0.06 0.00 0.06
#> writeTIFF(a,'a.tif')
#[1] 1
#> a2 = image_pdc_RGB2(a)
#> writeTIFF(a2,'a.tif')
#[1] 1
