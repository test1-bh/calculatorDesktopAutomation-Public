*** Settings ***
Library           RPA.Windows
Library           RPA.Desktop
Library           run_calculator.py

*** Variables ***
${CALCULATOR_PATH}    C:\Program Files\OldClassicCal\calc1.exe

*** Test Cases ***
Open Calculator
    [Documentation]    Launch the calculator application
    Run Calculator

Perform Addition
    [Documentation]    Perform an addition operation
    RPA.Windows.Click    name:1
    RPA.Windows.Click    name:Add
    RPA.Windows.Click    name:2
    RPA.Windows.Click    name:Equals
    ${result}=    RPA.Windows.Get Text    name:Result
    Should Be Equal As Numbers    ${result}    3

Close Calculator
    [Documentation]    Close the calculator after operation
    RPA.Windows.Close Current Window
