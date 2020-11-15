//
//  main.swift
//  Budget-Swift
//
//  Created by Aaron Ivie on 11/14/20.
//

import Foundation

func inputExpenses()->(Float?, Float?, Float?, Float?, Float?, Float?){
   print("Please enter the following: ")
   print("\tYour Monthly Income: $", terminator:"")
   let income = Float(readLine()!)
   print("\tYour Budgeted Expenses: $", terminator:"")
   let budgetExpenses = Float(readLine()!)
   print("\tYour Actual Living Expenses: $", terminator:"")
   let actualExpenses = Float(readLine()!)
   print("\tYour Actual Taxes Paid: $", terminator:"")
   let actualTaxes = Float(readLine()!)
   print("\tYour Actual Tithe offerings: $", terminator:"")
   let actualTithing = Float(readLine()!)
   print("\tAny Other Expenses: $")
   let other = Float(readLine()!)
   return (income, budgetExpenses, actualExpenses, actualTaxes, actualTithing, other)
}

func calculateTaxes(income:Float)->Float{
   var tax:Float
   if income < 9875{
      tax = income * 0.1
   }else if 9875...40125 ~= income {
      tax = 987.50 + 0.12*(income - 9875)
   }else if 40125...85525 ~= income{
      tax = 4617.5 + 0.22*(income - 40125)
   }else if 85525...163300 ~= income{
      tax = 14605.5 + 0.24*(income - 85525)
   }else if 163300...207350 ~= income{
      tax = 33271.5 + 0.32*(income - 163300)
   }else if 207350...518400 ~= income{
      tax = 47367.5 + 0.35*(income - 207350)
   }else{
      tax = 156253 + 0.37*(income - 518400)
   }
   return tax
}
   
func calculateTithing(income:Float)->Float{
   return income/10.0
}

func calculateDifference(income:Float, taxes:Float, tithing:Float, living:Float, other:Float)->Float{
   return income - (taxes + tithing + living + other)
}

func display(income:Float, budgetExpenses:Float, actualExpenses:Float, actualTaxes:Float, actualTithing:Float, other:Float){
   print("The following is a report on your monthly expenses:")
   print("""
      
      """)
}


