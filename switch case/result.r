# Program to display result status using switch
marks <- as.numeric(readline("Enter marks (0-100): "))

grade <- if (marks >= 90) {"A"}
         else if (marks >= 75){ "B"}
         else if (marks >= 60) {"C"}
         else if (marks >= 40){ "D"}
         else "F"

message <- switch(grade,
                  "A" = "Excellent Performance!",
                  "B" = "Very Good!",
                  "C" = "Good, but can improve.",
                  "D" = "Passed, but work harder.",
                  "F" = "Failed!",
                  "Invalid Grade")

cat("Marks:", marks, "| Grade:", grade, "|", message, "\n")
