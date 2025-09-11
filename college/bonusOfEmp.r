
festival_bonus <- function(designation, basic_pay) {
  bonus <- 0

  bonus <- switch(designation,
    "Manager" = {
      if (basic_pay < 30000) {
        bonus <- max(0.10 * basic_pay, 2000)
      } else {
        bonus <- min(0.15 * basic_pay, 7000)
      }
      bonus
    },
    "Officer" = {
      if (basic_pay < 20000) {
        bonus <- min(max(0.12 * basic_pay, 2000), 5000)
      } else {
        bonus <- 0.12 * basic_pay
      }
      bonus
    },
    {
      bonus <- 0.09 * basic_pay
      bonus
    }
  )
  return(bonus)
}

designation <- readline(prompt = "Enter Designation (Manager/Officer/Other): ")
basic_pay <- as.numeric(readline(prompt = "Enter Basic Pay: "))

bonus <- festival_bonus(designation, basic_pay)

cat("Festival Bonus for", designation, "with Basic Pay", basic_pay, "is:", bonus, "\n")
