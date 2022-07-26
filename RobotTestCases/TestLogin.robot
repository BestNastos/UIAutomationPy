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
    # find element by xpath
    click link  xpath://a[@class='ico-login']
    # find element by DOM locator
    input text  id:Email    test
    input text  id:Password     test
    # find element by css
    click element   css:.button-1.login-button

