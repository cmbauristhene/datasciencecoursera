Getting and Cleaning Data Course Project Codebook

The tidy dataset includes the following 68 variables:
"subject"                   "activity"                 
 "tbodyacc-mean-x"           "tbodyacc-mean-y"          
 "tbodyacc-mean-z"           "tbodyacc-std-x"           
 "tbodyacc-std-y"            "tbodyacc-std-z"           
 "tgravityacc-mean-x"        "tgravityacc-mean-y"       
"tgravityacc-mean-z"        "tgravityacc-std-x"        
"tgravityacc-std-y"         "tgravityacc-std-z"        
"tbodyaccjerk-mean-x"       "tbodyaccjerk-mean-y"      
"tbodyaccjerk-mean-z"       "tbodyaccjerk-std-x"       
"tbodyaccjerk-std-y"        "tbodyaccjerk-std-z"       
"tbodygyro-mean-x"          "tbodygyro-mean-y"         
"tbodygyro-mean-z"          "tbodygyro-std-x"          
"tbodygyro-std-y"           "tbodygyro-std-z"          
"tbodygyrojerk-mean-x"      "tbodygyrojerk-mean-y"     
"tbodygyrojerk-mean-z"      "tbodygyrojerk-std-x"      
"tbodygyrojerk-std-y"       "tbodygyrojerk-std-z"      
"tbodyaccmag-mean"          "tbodyaccmag-std"          
"tgravityaccmag-mean"       "tgravityaccmag-std"       
"tbodyaccjerkmag-mean"      "tbodyaccjerkmag-std"      
"tbodygyromag-mean"         "tbodygyromag-std"         
"tbodygyrojerkmag-mean"     "tbodygyrojerkmag-std"     
"fbodyacc-mean-x"           "fbodyacc-mean-y"          
"fbodyacc-mean-z"           "fbodyacc-std-x"           
"fbodyacc-std-y"            "fbodyacc-std-z"           
"fbodyaccjerk-mean-x"       "fbodyaccjerk-mean-y"      
"fbodyaccjerk-mean-z"       "fbodyaccjerk-std-x"       
"fbodyaccjerk-std-y"        "fbodyaccjerk-std-z"       
"fbodygyro-mean-x"          "fbodygyro-mean-y"         
"fbodygyro-mean-z"          "fbodygyro-std-x"          
"fbodygyro-std-y"           "fbodygyro-std-z"          
"fbodyaccmag-mean"          "fbodyaccmag-std"          
"fbodybodyaccjerkmag-mean"  "fbodybodyaccjerkmag-std"  
"fbodybodygyromag-mean"     "fbodybodygyromag-std"     
"fbodybodygyrojerkmag-mean" "fbodybodygyrojerkmag-std"

"subject" is a numeric variable and runs from 1 to 30 and indicates the unique particpant ID code

"activity" is a character variable and consists of 6 distinct options, describing the activity under which the measurement data were collected:
1 walking
2 walkingupstairs
3 walkingdownstairs
4 sitting
5 standing
6 laying

All other variables are numeric variables containing either an average of the means per variable, per activity or an average of the standard deviations (std), as indicated within the variabel name.
