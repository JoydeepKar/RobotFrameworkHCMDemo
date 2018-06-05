*** Settings ***
Resource  ./PO/ExpensePage.robot
Resource  ../Resources/PO/ExpensePage.robot
*** Variables ***

*** Keywords ***
Create An Item
    Click Hamburger Menu
    Click Menu Item Expenses
    Click On Plus Icon
    Enter Item Date
    Pick Template From Dropdown
    Pick Type From Dropdown
    Enter Amount
    Enter Number Of Days
    Enter Description
    Enter Merchant Name
    Pick Project Id From Dropdown
    Pick Unit From Dropdown
    Pick City From Dropdown
    Take Screenshot  ItemDetails
    Click Save & Close
