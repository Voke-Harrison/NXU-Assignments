#BAN6420 Module 1 Assignment
#Voke Harrison Edafejimue
#Learner ID - 143304
#Highridge Construction Company Payment Slips
#Print payslips for each Employee
#Display name, salary, gender and employee level
#June 2024

tryCatch({
#create an empty Data Frame with 3 columns
df <- data.frame(matrix(ncol = 3, nrow = 0))

#provide column names
colnames(df) <- c('var1', 'var2', 'var3')

#dynamically collect data and add to the data frame
for(i in 1:400){
  if(i>=1 & i<=400){
  df[i,1] <- readline("Enter Employee's Full Name: ")
  df[i,2] <- readline("Enter Employee's Gender(Male/Female): ")
  df[i,3] <- readline("Enter Employee's Salaray in USD: ")
  #prompt to proceed with accepting data or proceed to payslip generation
  next1 <- readline("Enter another Employee record? (Y/N): ")
  if (next1 == 'Y' | next1 == 'y'){
    next
  }else if(next1 == 'N' | next1 == 'n'){
    next2 <- readline("Would you like to Print all Payslips now (Y/N): ")
    if (next2 == 'Y' | next2 == 'y'){
      len <-  nrow(df)
      #len
      #code to print payslips for the different Employee Level based on conditions provided
      for(j in 1:len){
        #If Salary is greater than $7,500 and less than $30,000 and the employee is female, Employee level as "A5-F."
        if(as.integer(df$var3[j]) > 7500 & as.integer(df$var3[j]) < 30000 & toupper(df$var2[j]) == "FEMALE"){
          level <- "A5-F"
          sn <- j
          sn #serial number
          level1 <- "\n\nEmployee Level: "
          slip <- "PAYSLIP "
          name <- "\nName: "
          gender <- "\nGender: "
          salary <- "\nSalary: $"
          line <- "\n---------------------\n"
          #print Payslip
          cat(paste(slip,sn,level1,level,name,df$var1[j]))
          cat(paste(gender,df$var2[j]))
          cat(paste(salary,df$var3[j]))
          cat(paste(line))
        }else if(as.integer(df$var3[j]) > 10000 & as.integer(df$var3[j]) < 20000){
          #If the salary is greater than $10,000 and less than $20,000, assign the Employee level as "A1."
          level <- "A1"
          sn <- j
          sn #serial number
          level1 <- "\n\nEmployee Level: "
          slip <- "PAYSLIP "
          name <- "\nName: "
          gender <- "\nGender: "
          salary <- "\nSalary: $"
          line <- "\n---------------------\n"
          #print Payslip
          cat(paste(slip,sn,level1,level,name,df$var1[j]))
          cat(paste(gender,df$var2[j]))
          cat(paste(salary,df$var3[j]))
          cat(paste(line))
        }else{ #other employees not in condition 1 and 2
          level <- "Others"
          sn <- j
          sn #serial number
          level1 <- "\n\nEmployee Level: "
          slip <- "PAYSLIP "
          name <- "\nName: "
          gender <- "\nGender: "
          salary <- "\nSalary: $"
          line <- "\n---------------------\n"
          #print Payslip
          cat(paste(slip,sn,level1,level,name,df$var1[j]))
          cat(paste(gender,df$var2[j]))
          cat(paste(salary,df$var3[j]))
          cat(paste(line))
        }
      }
      print("Thank you for using this Service.")
      break
      #end of slip printing if i is less than or equal to 400.
    }else if(next2 == 'N' | next2 == 'n'){
      print("Thank you for using this service. Good bye")
      break
    }else{
      print("End of Program.Thank you.")
      break
    }
  }else{
    print("Invalid entry")
    next
  }

  }else if(i>400){
    print("Maximum Number of employees entered")
    next2 <- readline("Would you like to Print all Payslips now (Y/N): ")
    if (next2 == 'Y' | next2 == 'y'){
      len <- nrow(df)
      #code to print payslips for the different Employee Level based on conditions provided
      for(j in 1:len){
        if(as.integer(df$var3[j]) > 7500 & as.integer(df$var3[j]) < 30000 & toupper(df$var2[j]) == "FEMALE"){
          #If Salary is greater than $7,500 and less than $30,000 and the employee is female, Employee level as "A5-F."
          level <- "A5-F"
          sn <- j
          sn #serial number
          level1 <- "\n\nEmployee Level: "
          slip <- "PAYSLIP "
          name <- "\nName: "
          gender <- "\nGender: "
          salary <- "\nSalary: $"
          line <- "\n---------------------\n"
          #print Payslip
          cat(paste(bold(slip,sn),level1,level,name,df$var1[j]))
          cat(paste(gender,df$var2[j]))
          cat(paste(salary,df$var3[j]))
          cat(paste(line))
        }else if(as.integer(df$var3[j]) > 10000 & as.integer(df$var3[j]) < 20000){
          #If the salary is greater than $10,000 and less than $20,000, assign the Employee level as "A1."
          level <- "A1"
          sn <- j
          sn #serial number
          level1 <- "\n\nEmployee Level: "
          slip <- "PAYSLIP "
          name <- "\nName: "
          gender <- "\nGender: "
          salary <- "\nSalary: $"
          line <- "\n---------------------\n"
          #print Payslip
          cat(paste(slip,sn,level1,level,name,df$var1[j]))
          cat(paste(gender,df$var2[j]))
          cat(paste(salary,df$var3[j]))
          cat(paste(line))
        }else{#other employees not in condition 1 and 2
          level <- "Others"
          sn <- j
          sn #serial number
          level1 <- "\n\nEmployee Level: "
          slip <- "PAYSLIP "
          name <- "\nName: "
          gender <- "\nGender: "
          salary <- "\nSalary: $"
          line <- "\n---------------------\n"
          #print Payslip
          cat(paste(slip,sn,level1,level,name,df$var1[j]))
          cat(paste(gender,df$var2[j]))
          cat(paste(salary,df$var3[j]))
          cat(paste(line))
        }
      }
    }else{
      print("End of Program.Thank you.")
      break
    }
  }else{
    print("Invalid entry")
    break
  }
  }
},warning = function(w){
  print("Warning. Invalid record entered.")
}, error = function(e){
  print("Error. Invalid record entered.")
}, finally = function(f){
  print("Program Fully Executed")
}
)
