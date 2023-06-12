# A script that identifies whether user-input numbers are Armstrong numbers

# Prompting user to enter three-digit number
userinput <- readline("Please enter a positive three-digit number: ")

# Checking if the user input is numeric, positive and three digits
if ((is.numeric(as.numeric(userinput))) &
   (nchar(userinput) == 3) &  
   (as.numeric(userinput) >= 0)) { 
     
  # Using strsplit to split userinput into vector of individual digits 
  splitdigits <- as.numeric(strsplit(userinput, "")[[1]])
  # Finding the sum of cubes of the individual digits in userinput
  cubesum <- sum(splitdigits^3)
  
  # Checking if cubesum is equal to userinput. If so, number is an Armstrong number.
  if ((as.numeric(userinput)) == (cubesum)) { 
     print(paste(userinput, "is an Armstrong number. How narcissistic of you!"))
  } else { 
     print(paste(userinput, "is not an Armstrong number. How humble you are!")) 
  } # Inner if-else to check if input is an Armstrong number
   
} else {
  print("Invalid input! Entry must be a positive three-digit number. Terminating...")
  quit()
} # Outer if-else checking for input validity