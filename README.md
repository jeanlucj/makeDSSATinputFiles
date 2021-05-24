# makeDSSATinputFiles

A [workflowr][] project.

[workflowr]: https://github.com/jdblischak/workflowr

If you run the script `makeDSSATinputFiles.Rmd` that is in the `analysis` folder
it will:  
1. Create a new .CUL file, with the date of file creation appended to the name  
2. Create new .CSX, .CSA, and .CST files for every trial in `UYT_GXE_pheno.csv`
and put them in the CSfiles folder  
NOTE: it uses the Cassavabase-given `studyDbId` as part of each CS_ file to 
ensure that the CS_ file names are unique  
NOTE: the 2018 Ibadan trial does not have a harvest date listed.  So that one
fails
