*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Tabs
    open browser  https://demo.automationtesting.in/Windows.html  chrome
    click element  css:.btn.btn-info  # click to open page in another tab
    switch window  title=Selenium
    click element  css:.nav-link
    sleep  1
    close all browsers

Multibrowser
    open browser  https://google.com  chrome
    maximize browser window
    sleep  2
    open browser  https://bing.com  chrome
    maximize browser window
    switch browser  1  # works, but visibly there is not switch
    click element  name:q
    input text  name:q   test
    switch browser  2
    close all browsers


