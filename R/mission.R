
dir_mission = function(dirIn,dirOut,create = F,func = image_pdc_RGB){
  todo = list.files(dirIn)
  if(create==T) dir.create(dirOut)
  system.time({
    for(i in todo){
      message(paste0('Reading',dirIn,i))
      re = readTIFF(paste0(dirIn,i))
      message('Start Calculation')
      re = func(re)
      message('Calculation completed')
      writeTIFF(re,paste0(dirOut,i))
      message(paste0('Writing to',dirOut,i))
    }
  })
  message('Mission Completed')
}
#mission_all_dir = function(dirIn){
#  
#}
