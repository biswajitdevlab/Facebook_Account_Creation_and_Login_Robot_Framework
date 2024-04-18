*** Settings ***
Resource    Register_Keywords.robot
Resource    login_keywords.py.robot
Library   SeleniumLibrary
Library    Process
*** Variables ***
${url}=     https://www.facebook.com
${browser}=     chrome
*** Test Cases ***
facebook create new account
    Set Selenium Implicit Wait    10
    open the browser    ${url}    ${browser}
    click on create a new account button
    set first name     Rama
    set lastname     Das
    set mobile/email     ramadas23@gmail.com
    confirm mobile/email    ramadas23@gmail.com
    set password     ramadas@23
    select date     12
    select month     10
    select year     2001
    select gender
    click sign up
    take screenshot
    Sleep     10
    close the browser
facebook login
    open the browser    ${url}    ${browser}
    input email/phone    ramadas23@gmail.com
    Input the Password       ramadas@23
    click login button
    capture confirmation email screenshot
    close the browser

