*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    # "open browser" is a predefined keyword in ROBOT
    open browser    ${url}  ${browser}
    # "loginToApp" is not a predefined keyword in ROBOT, so we defined it ourselves below
    loginToApp
    # "Close browser" is a predefined keyword in ROBOT
    close browser

*** Keywords ***
loginToApp
    click link  xpath://a[@class='ico-login']
    input text  id:Email    test
    input text  id:Password     test
    click element   css:.button-1.login-button

