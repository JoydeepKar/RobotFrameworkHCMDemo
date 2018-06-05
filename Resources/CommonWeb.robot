*** Settings ***
Library  Selenium2Library
Library  DateTime
Library  ../Lib/jutil.py

*** Variables ***

*** Keywords ***
Wait Dynamically For An Element And Then Click
    [Arguments]  ${locator}
    wait until page contains element  ${locator}  18
    click element  ${locator}
Begin Web Test
    open browser  ${URL}  ${BROWESR}
    maximize browser window
End Web Test
    close all browsers
    DISPLAY LOG ONTO BROWSER  ${LOG_FILE}
HCM Login
    [Arguments]  ${data}
    Enter URL
    #Delete All Cookies
    Enter UserID  ${data[0]}
    Enter Password  ${data[1]}
    Take Screenshot  HCMLogin
    Click Signin Button
    Wait For Hamburger Menu
    Take Screenshot  HCMDashboard
HCM Logout
    Click onto the Name at the Right Hand Corner
    Take Screenshot  HCMLogout
    Click Sign Out Link
    Take Screenshot  LogoutConfirmation
    Click Confirm Button
Enter URL
    go to  ${URL}
Enter UserID
    [Arguments]  ${userid}
    input text  id=userid  ${userid}
Enter Password
    [Arguments]  ${password}
    input password  id=password  ${password}
Click Signin Button
    click button  id=btnActive
Wait For Hamburger Menu
     wait until page contains element  id=pt1:_UISmmLink
Click onto the Name at the Right Hand Corner
    Wait Dynamically For An Element And Then Click  xpath=//*[@id="_FOpt1:_UIScmil1u"]
Click Sign Out Link
    Wait Dynamically For An Element And Then Click  xpath=//*[@id="_FOpt1:_UISlg1"]
Click Confirm Button
    Wait Dynamically For An Element And Then Click  xpath=//*[@id="Confirm"]
Fetch Current Date
    [Arguments]  ${format}
    ${x} =  Get Current Date  result_format=${format}
    [Return]  ${x}
Take Screenshot
    [Arguments]  ${fname}
    sleep  2s
    ${x} =  Fetch Current Date  -%m-%d-%Y-%H-%M-%S
    ${name} =   catenate  ${fname}  ${x}
    ${name} =  catenate  ${name}  .png
    Capture Page Screenshot  filename=${OUTPUTDIR}/${name}
Get CSV Data
    [Arguments]  ${filepath}
    ${data} =  read csv file  ${filepath}
    [Return]  ${data}