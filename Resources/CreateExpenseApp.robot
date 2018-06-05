*** Settings ***
Resource  ./PO/ExpensePage.robot
Resource  ../Resources/PO/ExpensePage.robot
*** Variables ***

*** Keywords ***
Create An Expense Report
    #Click Hamburger Menu
    #Click Menu Item Expenses
    Find And Click Expense Item
    Take Screenshot  ExpenseSelection
    #Click Actions then Click Duplicate
    Click Add To Report
    Take Screenshot  ReportMakingPage
    Input Purpose
    Input ManagerName
    Take Screenshot  ReportPageAfterInput
    Click Submit