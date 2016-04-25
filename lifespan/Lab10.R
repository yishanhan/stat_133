simpleFun = function(lastName, birthDay) {
  system_info <- Sys.info()
  return(list(lastName, birthDay,system_info))
   
}

myData = simpleFun("Han", "08/25/1995")


save(myData, file = "lab10.rda")