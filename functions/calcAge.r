# Function to calculate age based on birthdate
calc_age <- function(bd, ref = Sys.Date()) {
  # Convert inputs to Date objects if they aren't already
  if (!inherits(bd, "Date")) {
    bd <- as.Date(bd)
  }
  if (!inherits(ref, "Date")) {
    ref <- as.Date(ref)
  }
  
  # Check if birthdate is in the future
  if (bd > ref) {
    stop("Birthdate cannot be in the future!")
  }
  
  # Calculate age
  age <- as.numeric(difftime(ref, bd, units = "days")) / 365.25
  return(floor(age))
}

# Function to get user input and calculate age
get_age <- function() {
  cat("=== Age Calculator ===\n")
  
  # Get birthdate from user
  bd_input <- readline(prompt = "Enter your birthdate (YYYY-MM-DD): ")
  
  # Try to parse the date
  tryCatch({
    bd <- as.Date(bd_input)
    
    # Calculate age
    age <- calc_age(bd)
    
    # Display result
    cat("\nResults:\n")
    cat("Birthdate:", format(bd, "%B %d, %Y"), "\n")
    cat("Current Date:", format(Sys.Date(), "%B %d, %Y"), "\n")
    cat("Your age is:", age, "years old\n")
    
    # Additional information
    days <- as.numeric(difftime(Sys.Date(), bd, units = "days"))
    cat("You have lived approximately", days, "days\n")
    
  }, error = function(e) {
    cat("Error: Invalid date format. Please use YYYY-MM-DD format.\n")
  })
}

# Example usage with predefined dates
demo <- function() {
  cat("\n=== Demo Age Calculations ===\n")
  
  # Example birthdates
  bds <- c("1990-05-15", "2000-12-25", "1985-03-10", "1995-07-20")
  
  for (bd in bds) {
    age <- calc_age(bd)
    cat("Birthdate:", bd, "-> Age:", age, "years\n")
  }
}

# Main program
main <- function() {
  # Run the interactive age calculator
  get_age()
  
  # Show demo calculations
  demo()
  
  # Ask if user wants to calculate another age
  repeat {
    ans <- readline(prompt = "\nWould you like to calculate another age? (y/n): ")
    if (tolower(ans) %in% c("y", "yes")) {
      get_age()
    } else if (tolower(ans) %in% c("n", "no")) {
      cat("Thank you for using the Age Calculator!\n")
      break
    } else {
      cat("Please enter 'y' for yes or 'n' for no.\n")
    }
  }
}

# Run the program
main()