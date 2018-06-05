*** Settings ***
Library  Selenium2Library
Resource  ../CommonWeb.robot
*** Variables ***


*** Keywords ***
Click Save & Close
    wait dynamically for an element and then click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:SaveAndCloseButton"]
Pick City From Dropdown
    sleep  5s
    select from list by label  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:dff_ExpenseDffVOIteratorcityInternetCharges::content"]  New Delhi
Pick Project Id From Dropdown
    sleep  6s
    select from list by label  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:dff_ExpenseDffVOIteratorprojectIdInternetCharges::content"]  Concentrix
    sleep  5s
Pick Unit From Dropdown
    sleep  4s
    select from list by label  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:dff_ExpenseDffVOIteratorunitInternetCharges::content"]  2
Click On Plus Icon
    sleep  3s
    wait dynamically for an element and then click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:0:t2::oc"]/table/tbody/tr/td[2]
    sleep  4s
Click Submit
    sleep  3s
    wait dynamically for an element and then click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:2:AP1:ctb2"]/table/tbody/tr/td[1]/a
    sleep  4s
    Take Screenshot  AfterSubmit
    wait dynamically for an element and then click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:OKSubmitDialogButton"]
    sleep  5s
Click Actions then Click Duplicate
    sleep  3s
    wait dynamically for an element and then click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:0:m1"]/div/table/tbody/tr/td[2]/a
    wait dynamically for an element and then click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:0:commandMenuItem6"]
    wait dynamically for an element and then click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:SaveAndCloseButton"]/table/tbody/tr/td[1]/a
    sleep  3s
Input ManagerName
    sleep  3s
    select from list by label  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:2:AP1:df1G_ExpenseHeaderDffVOIteratormanagerName__FLEX_EMPTY::content"]  Anirban Chaudhuri
    sleep  4s
Input Purpose
    sleep  5s
    input text  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:2:AP1:it1::content"]  Internet Charges Reimbursement

Click Add To Report
    sleep  3s
    Wait Dynamically For An Element And Then Click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:0:commandToolbarButton4"]/table/tbody/tr/td[1]/a
Click Hamburger Menu
    Wait Dynamically For An Element And Then Click  id=pt1:_UISmmLink
Click On Create Expense Report
    Wait Dynamically For An Element And Then Click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:AP1:commandLink1"]
Click Menu Item Expenses
    sleep  4S
    Wait Dynamically For An Element And Then Click  xpath=//*[@id="pt1:nv_itemNode_my_information_expenses"]
Find And Click Expense Item
    sleep  5s
    wait dynamically for an element and then click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:0:lv3:0:listItem3"]
    #wait dynamically for an element and then click  xpath=//*[contains(text(), "Internet Charges")]
    #Wait Dynamically For An Element And Then Click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:r1:0:ITPdtl:0:lv3:1:panelGridLayout3"]/div[20]
Click On Actions Dropdown
    Wait Dynamically For An Element And Then Click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:m1"]
Click On Create Expense Item
    Wait Dynamically For An Element And Then Click  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:_FOTsr1:0:pt0:pt1:commandMenuItem6"]/td[2]
Click Menu Item Expenses Again
    Wait Dynamically For An Element And Then Click  xpath=//*[@id="pt1:j_id16"]/tbody/tr/td[3]
Enter Item Date
    ${sys_date} =  Fetch Current Date  %m/%d/%Y
    wait until page contains element  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:StartDate::content"]
    input text  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:StartDate::content"]  ${sys_date}
Pick Template From Dropdown
    Select From List By Label  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:ExpenseTemplateId::content"]  Rent and Regular charges
    sleep  6s
Pick Type From Dropdown
    Select From List By Label  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:ExpenseTypeId::content"]  Internet Charges
    sleep  6s
Enter Amount
    input text  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:ReceiptAmount::content"]  1300
    sleep  6s
    #${x} =  Get Value  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:ReceiptAmount::content"]
    #Convert To Integer  ${x}
    #run keyword if  ${x} != 12000  Enter Amount  Else  LOG  SILENT
Enter Number Of Days
    wait until page contains element  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:NumberOfDays::content"]  10s
    input text  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:NumberOfDays::content"]  31
Enter Description
    input text  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:Description::content"]  Monthly internet charges
Enter Merchant Name
    input text  xpath=//*[@id="_FOpt1:_FOr1:0:_FOSritemNode_my_information_expenses:0:MAnt2:1:AP1:MerchantName::content"]  Airtel
    sleep  5s