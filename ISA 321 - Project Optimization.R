library(lpSolve)

setwd("/Users/liamh/Documents/2018 - 2019/Fall Semester 2018 - 2019/ISA 321/Project")
wine <- read.csv("Project_Data_Sample.csv")

# ----------------------------------------------------------------------------------------------------------------- #
## Consumer Model

## The objective function used to select the optimal wine selection for the consumer model
objFN <- wine[,2]
## Constraints used to define a feasible range 
##    Left hand side of the constraints
LHS <- wine[,c(3, 8:10, 12:15)]
LHS <- as.matrix(LHS)
LHS <- t(LHS)
##    Signs for the constraints
signs <- c("<=", ">=", ">=", "=", ">=", ">=", ">=", ">=")
##    Right hand side of the constraints
RHS <- c(100, 5, 5, 5, 1, 1, 1, 1)

## Solving the linear programming problem
answer <- lp(direction = "max", objFN, LHS, signs, RHS, all.bin = T)
## Defining the solutions to the problem
solutions <- answer$solution

## Selecting the relevant information from the original dataset pertaining to the individiual wines
wineInfo <- wine[,-c(6, 8:15)]
## Combines the solutions to the wineInfo dataset created above
selection <- cbind.data.frame(wineInfo, solutions)
## Converts any 0 obtained from the solutions and converts them to NA observations
selection[selection == 0] <- NA
## Removes NA observations
selection <- na.omit(selection)
# ----------------------------------------------------------------------------------------------------------------- #


# ----------------------------------------------------------------------------------------------------------------- #
## Consumer Model - Test 1

## The objective function used to select the optimal wine selection for the consumer model
objFN <- wine[,2]
## Constraints used to define a feasible range 
##    Left hand side of the constraints
LHS <- wine[,c(3, 8:10, 12:15)]
LHS <- as.matrix(LHS)
LHS <- t(LHS)
##    Signs for the constraints
signs <- c("<=", ">=", ">=", "=", ">=", ">=", ">=", ">=")
##    Right hand side of the constraints
RHS <- c(300, 5, 5, 5, 1, 1, 1, 1)

## Solving the linear programming problem
answer <- lp(direction = "max", objFN, LHS, signs, RHS, all.bin = T)
## Defining the solutions to the problem
solutions <- answer$solution

## Selecting the relevant information from the original dataset pertaining to the individiual wines
wineInfo <- wine[,-c(6, 8:15)]
## Combines the solutions to the wineInfo dataset created above
selection <- cbind.data.frame(wineInfo, solutions)
## Converts any 0 obtained from the solutions and converts them to NA observations
selection[selection == 0] <- NA
## Removes NA observations
selection <- na.omit(selection)
# ----------------------------------------------------------------------------------------------------------------- #


# ----------------------------------------------------------------------------------------------------------------- #
## Consumer Model - Test 2

## The objective function used to select the optimal wine selection for the consumer model
objFN <- wine[,2]
## Constraints used to define a feasible range 
##    Left hand side of the constraints
LHS <- wine[,c(3, 8, 9, 8, 9, 10, 12:15)]
LHS <- as.matrix(LHS)
LHS <- t(LHS)
##    Signs for the constraints
signs <- c("<=", ">=", ">=", "<=", "<=", "=", ">=", ">=", ">=", ">=")
##    Right hand side of the constraints
RHS <- c(300, 5, 5, 20, 20, 5, 1, 1, 1, 1)

## Solving the linear programming problem
answer <- lp(direction = "max", objFN, LHS, signs, RHS, all.bin = T)
## Defining the solutions to the problem
solutions <- answer$solution

## Selecting the relevant information from the original dataset pertaining to the individiual wines
wineInfo <- wine[,-c(6, 8:15)]
## Combines the solutions to the wineInfo dataset created above
selection <- cbind.data.frame(wineInfo, solutions)
## Converts any 0 obtained from the solutions and converts them to NA observations
selection[selection == 0] <- NA
## Removes NA observations
selection <- na.omit(selection)
# ----------------------------------------------------------------------------------------------------------------- #


# ----------------------------------------------------------------------------------------------------------------- #
## Consumer Model - Traveler Test

wineItaly <- read.csv("Project_Data_Italy_Sample.csv")

## The objective function used to select the optimal wine selection for the consumer model from one country
objFN <- wineItaly[,2]
## Constraints used to define a feasible range 
##    Left hand side of the constraints
LHS <- wineItaly[,3]
LHS <- as.matrix(LHS)
LHS <- t(LHS)
##    Signs for the constraints
signs <- "<="
##    Right hand side of the constraints
RHS <- 300

## Solving the linear programming problem
answer <- lp(direction = "max", objFN, LHS, signs, RHS, all.bin = T)
## Defining the solutions to the problem
solutions <- answer$solution

## Combines the solutions with the information pertaining to the wine selectino
selection <- cbind.data.frame(wineItaly, solutions)
## Converts any 0 obtained from the solutions and converts them to NA observations
selection[selection == 0] <- NA
## Removes NA observations
selection <- na.omit(selection)
# ----------------------------------------------------------------------------------------------------------------- #


# ----------------------------------------------------------------------------------------------------------------- #
## Vendor Model

## The objective function used to select the optimal wine selection for the vendor model
objFN <- wine[,3]
## Constraints used to define a feasible range 
##    Left hand side of the constraints
LHS <- wine[,c(2, 10:15)]
LHS <- as.matrix(LHS)
LHS <- t(LHS)
##    Signs for the constraints
signs <- c(">=", "=", "=", ">=", ">=", ">=", ">=")
##    Right hand side of the constraints
RHS <- c(900, 5, 5, 1, 1, 1, 1)

## Solving the linear programming problem
answer <- lp(direction = "min", objFN, LHS, signs, RHS, all.bin = T)
## Defining the solutions to the problem
solutions <- answer$solution

## Selecting the relevant information from the original dataset pertaining to the individiual wines
wineInfo <- wine[,-c(6, 8:15)]
## Combines the solutions to the wineInfo dataset created above
selection <- cbind.data.frame(wineInfo, solutions)
## Converts any 0 obtained from the solutions and converts them to NA observations
selection[selection == 0] <- NA
## Removes NA observations
selection <- na.omit(selection)
# ----------------------------------------------------------------------------------------------------------------- #


# ----------------------------------------------------------------------------------------------------------------- #
## Vendor Model - Test 1

## The objective function used to select the optimal wine selection for the vendor model
objFN <- wine[,3]
## Constraints used to define a feasible range 
##    Left hand side of the constraints
LHS <- wine[,c(2, 10:15)]
LHS <- as.matrix(LHS)
LHS <- t(LHS)
##    Signs for the constraints
signs <- c(">=", "=", "=", ">=", ">=", ">=", ">=")
##    Right hand side of the constraints
RHS <- c(850, 5, 5, 1, 1, 1, 1)

## Solving the linear programming problem
answer <- lp(direction = "min", objFN, LHS, signs, RHS, all.bin = T)
## Defining the solutions to the problem
solutions <- answer$solution

## Selecting the relevant information from the original dataset pertaining to the individiual wines
wineInfo <- wine[,-c(6, 8:15)]
## Combines the solutions to the wineInfo dataset created above
selection <- cbind.data.frame(wineInfo, solutions)
## Converts any 0 obtained from the solutions and converts them to NA observations
selection[selection == 0] <- NA
## Removes NA observations
selection <- na.omit(selection)
# ----------------------------------------------------------------------------------------------------------------- #


# ----------------------------------------------------------------------------------------------------------------- #
## Vendor Model - Test 2

## The objective function used to select the optimal wine selection for the vendor model
objFN <- wine[,3]
## Constraints used to define a feasible range 
##    Left hand side of the constraints
LHS <- wine[,c(2, 10:15)]
LHS <- as.matrix(LHS)
LHS <- t(LHS)
##    Signs for the constraints
signs <- c(">=", "=", "=", ">=", ">=", ">=", ">=")
##    Right hand side of the constraints
RHS <- c(925, 5, 5, 1, 1, 1, 1)

## Solving the linear programming problem
answer <- lp(direction = "min", objFN, LHS, signs, RHS, all.bin = T)
## Defining the solutions to the problem
solutions <- answer$solution

## Selecting the relevant information from the original dataset pertaining to the individiual wines
wineInfo <- wine[,-c(6, 8:15)]
## Combines the solutions to the wineInfo dataset created above
selection <- cbind.data.frame(wineInfo, solutions)
## Converts any 0 obtained from the solutions and converts them to NA observations
selection[selection == 0] <- NA
## Removes NA observations
selection <- na.omit(selection)
# ----------------------------------------------------------------------------------------------------------------- #