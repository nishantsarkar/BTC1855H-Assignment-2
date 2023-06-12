# A script that identifies whether user-input numbers are Armstrong numbers

# Prompting user to enter three-digit number
userinput <- readline("Please enter a positive three-digit number: ")

# Checking if the user input is numeric, positive and three digits
if ((is.numeric(as.numeric(userinput))) &
   (nchar(userinput) == 3) &  
   (as.numeric(userinput) >= 0)) { 
     
   print("Valid input!")

     

} else {
  print("Invalid entry! Terminating...")
  quit()
} # Outer if-else checking for input validity