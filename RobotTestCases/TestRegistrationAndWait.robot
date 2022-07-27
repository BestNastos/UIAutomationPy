*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    # print (default) timeout to console:
    ${speed}=  get selenium speed
    log to console   ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    # set implicit wait (defaule 0 sec):
    set selenium implicit wait  10 seconds
    # waits 1 second once:
    sleep  1
    # waits 1 sec before every statement (default 0 sec):
    set selenium speed  1 seconds
    # set timeout for conditional wait (default 5 sec):
    set selenium timeout  3 seconds
    # conditional wait uses the timeout (default 5 sec):
    wait until page contains  Register
    select radio button  Gender  M
    input text   name:FirstName  David
    input text   name:Email  abc@gmail.com
    input text   name:Password  pass1234
    input text   name:ConfirmPassword  pass1234
    # print speed to console again after it's been changed
    ${speed} =   get selenium speed
    log to console   ${speed}
    close browser

*** Keywords ***


