*** Settings ***
Library         SeleniumLibrary
Variables       locators.py
*** Keywords ***
open the browser
     [Arguments]     ${url}   ${browser}
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
close the browser
    Close All Browsers
click on create a new account button
    Click Link    ${create_account}
set first name
    [Arguments]     ${user_firstname}
    Input Text    ${first_name}    ${user_firstname}
set lastname
    [Arguments]     ${user_lastname}
    Input Text    ${last_name}    ${user_lastname}
set mobile/email
    [Arguments]         ${email/phone}
    Input Text    ${reg_email}    ${email/phone}
confirm mobile/email
    [Arguments]         ${con_email/phone}
    Input Text    ${re_reg_email}    ${con_email/phone}
set password
    [Arguments]     ${user_pwd}
    Input Text    ${password}    ${user_pwd}
select date
    [Arguments]     ${date}
    Select From List By Value    ${dob_d}    ${date}
select month
    [Arguments]     ${month}
    Select From List By Value    ${dob_m}    ${month}
select year
    [Arguments]     ${year}
    select from list by value    ${dob_y}    ${year}
select gender
    Select Radio Button     sex    2
click sign up
    Wait Until Element Is Enabled    ${sign_up}
    Click Element    ${sign_up}
take screenshot
    Capture Page Screenshot     ../Screenshots/fb_registration.png


