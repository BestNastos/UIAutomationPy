*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    loginToApp
    close browser


*** Keywords ***
loginToApp
    click link  xpath://a[@class='ico-login']
    input text  id:Email    test
    input text  id:Password     test
    click element   css:.button-1.login-button

