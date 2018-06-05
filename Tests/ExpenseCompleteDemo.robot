*** Settings ***
Documentation  This script is used to create an Expense Report
Resource  ../Resources/CreateItemApp.robot
Resource  ../Resources/CreateExpenseApp.robot
Resource  ../Resources/CommonWeb.robot
Library  ../Lib/jutil.py
Test Setup  Begin Web Test
#Test Teardown  End Web Test

*** Variables ***
${BROWESR} =  chrome
${URL} =  https://efrx-test.login.ap4.oraclecloud.com/oam/server/obrareq.cgi?encquery%3DjlfWqDFCxOJZYGdFz7rcdprX8BbkUrjSGulfyzd7253LQrrO9JucGh8g1J6viR3Bi5qoJ5eQQM3nzkdiVgA0GY4o0w38jOwN4D6hKc10VCStm8QSLKxkl%2FEet%2BIIJ6TWlA4NRXVkT9LaXo3TCZEl5weqpaPdYxUI4Alj5Z4POvjUVypjAf1G0Woj2VMy7zXpFU3qINTwpmjO7wQaZpp7uCQYC0m3vcXIGT6AxmaDAKRd2NHX4tQtrCSFtWkvqr94%2F9Y1K5DTO5wrcqTKSExal7nM9qglOV3acm4W7Nr7q0qe8MJaQ9Q48QGxd6QBi%2BTnQUfuosCB0hlj8QzXebtWWLU99wCxzoXPGyziJS1xJl67APK6lwH4oYdrbyO0q9roflg086XVbTWxFbFj7LF8j2vA6%2F%2F%2F%2B56nUBC3Vyzy3eJkuEUTSvWqX8VWyX975zZSi3%2Bp0NwJzfo4i234HNT4RapjvxVKNMCjaxNxYRZR2GuEnBFpbMQVWeWDBWUxVnYzucmlGPN2IhO3XkBc9OEgIQ%3D%3D%20agentid%3DOraFusionApp_11AG%20ver%3D1%20crmethod%3D2&ECID-Context=1.005RStPt96D4AxSLmEc9yZ0001cV0003if%3BkXhgv0ZCLILIIV8QjTPPGHRP_V9O%5EMPGpKSQ_UOTdJPOoPRRiG
${DATA_PATH} =  C:\\Users\\SOAIS\\PycharmProjects\\Demo\\Data\\data.csv

*** Test Cases ***
Should be able to create an Expense Report
    [Documentation]  This script is used to login to Orcale HCM
    [Tags]  Smoke
    @{csvData} =  Get CSV Data  ${DATA_PATH}
    :FOR  ${singledata}  IN  @{csvData}
    \  CommonWeb.HCM Login  ${singledata}
    \  CreateItemApp.Create An Item
    \  CreateExpenseApp.Create An Expense Report
    \  #CommonWeb.HCM Logout
#pybot -d results tests/TC.robot