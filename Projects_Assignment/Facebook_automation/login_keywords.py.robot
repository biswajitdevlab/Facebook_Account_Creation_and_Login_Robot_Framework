*** Settings ***
Library     SeleniumLibrary
Variables       locators.py
*** Keywords ***
input email/phone
    [Arguments]  ${username}
    Input Text   ${login_email}  ${username}
input the password
    [Arguments]  ${password}
    Input text  ${login_password}   ${password}
click login button
    Click Element   ${login_link}
capture confirmation email screenshot
    Capture Page Screenshot         ../Screenshots/fb.png

