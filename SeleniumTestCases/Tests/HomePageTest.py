from selenium import webdriver
import time
from SeleniumTestCases.Model.PageObjects.HomePage import HomePage


def test_home_page():
    driver = webdriver.Chrome()
    page = HomePage(driver)
    page.go_to_site()
    page.login()
    page.click_contact_form()
    time.sleep(1)
    driver.quit()


test_home_page()


    # assert "Картинки" and "Видео" in elements