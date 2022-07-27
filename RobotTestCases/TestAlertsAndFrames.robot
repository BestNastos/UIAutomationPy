*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/   chrome
    click element  xpath://*[@id="HTML9"]/div[1]/button  # this opens alert
    alert should be present  Press a button!  # verifies text of the alert
#    handle alert  dismiss
#    handle alert  accept
#    handle alert  leave
    close browser

HandlingFrames
    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html   chrome
    select frame  packageListFrame
    # packageListFrame is a "name attribute in html, if there was no such attribute, we would have to specify
    # the locator type and locator: "css:locator"
    click link  org.openqa.selenium  # org.openqa.selenium is text of the element
    unselect frame

    select frame  packageFrame
    click link  WebDriver
    unselect frame

    select frame  classFrame
    click link  Help
    unselect frame
    close browser




