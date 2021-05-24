#Prepare input data for DSSAT_CSM running
#Load and read phenotype file (UYT_GXE_phene.csv)
#Making a table of Selected variables to use and make abbreviations for renaming
    #Year=studyYear
    #Pltdate=plantingDate
    #Harvdate=harvestDate
    #Location=locationName
    #Cul = germplasmName
    #Dmat = dry matter content percentage|CO_334:0000092
    #FTop = fresh shoot weight measurement in kg per plot|CO_334:0000016
    #FYLD = fresh storage root weight per plot|CO_334:0000012
    #HIX = harvest index variable|CO_334:0000015
    #Nplt = plant stands harvested counting|CO_334:0000010
#
#Filter by location/year
#from location/year, Write a Tfile (fileName.CST=location+year)
    #Select the Cul that have at least 2 rows of plot (each row from the same germplasm/location/year=replicate)
    #NA = -99
    #TRNO = Cul= each plot of germplasm
    #CWAD (Tops weight (kg [dm]/ha)  = (FTopx10000/Nplt)x(Dmat/100)
    #DAP = Days after planting = Harvdate-Pltdate
    #DATE = Pltdate =wrote with year index+number of days in this year (15106=106th day of 2015)

#from location/year, Write a Afile (fileName.CSA=location+year) With
    #Cul selected for Tfile
    #TRNO = Cul mean of Cul
    #B1DAP (Days after planting to the first branch) = 40 days
    #B5DAP (Days after planting to the fifth branch) = 160 days
    #HWAM  D (Root weight (kg [dm]/ha)  = (FHarvx10000/Nplt)x(Dmat% Root/100)
    # We will not put in CWAM because we don't have an estimate for Dmat% Top
    #CWAM (Tops weight (kg [dm]/ha)  = (FTopx10000/Nplt)x(Dmat% Top/100)

#In Tfile Afile and Xfile,The TRNO = numbers (1 to ....) given to each Cul in the X file.
#depends of experimental file

#Xfile need to be write in DSSAT interface then can be modify on R
#Cultivarfile and ecotypefile need to be fill out by hand.
