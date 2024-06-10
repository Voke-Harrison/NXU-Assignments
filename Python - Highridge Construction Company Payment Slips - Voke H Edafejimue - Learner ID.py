#BAN6420 Module 1 Assignment
#Voke Harrison Edafejimue
#Learner ID - 143304
# Highridge Construction Company Payment Slips
# Print payslips for each Employee
# display name, salary, gender and employee level

def payslip():
    #Function to print payslips for the different Employee Level based on conditions provided
    for a in range(len(people)):
        # If Salary is greater than $7,500 and less than $30,000 and the employee is female, Employee level as "A5-F."
        if people[a][3] > 7500 and people[a][3] < 30000 and people[a][2].upper() == 'FEMALE':#condition 1
            emp = "A5-F"
            print("PAYSLIP " + str(people[a][0]))
            print("Name: " + people[a][1])
            print("Gender: " + people[a][2])
            print("Salary: " + str(people[a][3]))
            print("Employee Level: " + emp)
            print("--------------------------")
        elif people[a][3] > 10000 and people[a][3] < 20000:#If the salary is greater than $10,000 and less than $20,000, assign the Employee level as "A1."
            emp = "A1"
            print("PAYSLIP " + str(people[a][0]))
            print("Name: " + people[a][1])
            print("Gender: " + people[a][2])
            print("Salary: " + str(people[a][3]))
            print("Employee Level: " + emp)
            print("--------------------------")
        else:#other employees not in condition 1 and 2
            print("PAYSLIP " + str(people[a][0]))
            print("Name: " + people[a][1])
            print("Gender: " + people[a][2])
            print("Salary: " + str(people[a][3]))
            print("Employee Level: Others")
            print("--------------------------")



def payslipdata():
    # Function to Create a dynamic list of 400 employees
    for i in range(0, 399):
        if i >= 0 and i <= 399:
            l = len(people) + 1
            print("Enter the record number " + str(l) + ".") #serial number
            info = [] #sub-list
            info.append(l) #add serial number to the sub-list
            name = input("Enter Employee's Full Name: ")
            info.append(name) #add Employee name to the sub-list
            gender = input("Enter Employee's gender (Male/Female): ")
            #gender validation
            if gender.capitalize() == "Female" or gender.capitalize() == "Male":
                info.append(gender) #add Employee gender to the sub-list
            else:
                print("Invalid gender data entered. Try again.")
                continue
            salary = int(input("Enter Employee's salary in USD: "))
            #check for salary value greater than zero
            if salary > 0:
                info.append(salary) #add the Employee salary to the sub-list
            else:
                print("Invalid data entered. Try again.")
                continue
            people.append(info)
            print(info)
            print(people)
            # prompt to proceed with accepting data or proceed to payslip generation
            next = input("Enter another Employee record? (Y/N): ")
            if next == 'Y' or next == 'y': #Yes
                continue
            elif next == 'N' or next == 'n':#No
                next2 = input("Would you like to display all payslips now? \n" +
                              "Enter Y/N :")
                if next2 == 'Y' or next2 == 'y':
                    payslip()
                    break
                elif next == 'N' or next == 'n':
                    print("End of Program. Thank you for your confirmation.")
                    break
                else:
                    print("Invalid response")
                    break
            else:#other entry other than Y or N
                print("Invalid Entry")
                next2 = input("Would you like to display all payslips now? \n" +
                              "Enter Y/N :")
                if next2 == 'Y' or next2 == 'y': #Yes print slips
                    payslip() #the print slip function
                    break
                elif next == 'N' or next == 'n': #No do not print slips
                    print("End of Program. Thank you for your confirmation.")
                    break
                else: # other responses other than Y or N
                    print("Invalid response")
                    break
        else:
            break

try:
    people = []
    payslipdata()
except TypeError:
    print("Invalid type entered")
    payslipdata()
except ValueError:
    print("Invalid Data Type entered")
    payslipdata()
except Exception as e:
    print(e)
    payslipdata()
else:
    pass
finally:
    pass