from selenium import webdriver
import time
from SeleniumTestCases.Tests.conftest import *

from SeleniumTestCases.Model.PageObjects.HomePage import HomePage


def test_home_page(browser):

    page = HomePage(browser)
    page.go_to_site()
    page.login()
    page.click_contact_form()
    time.sleep(1)

    # assert "Картинки" and "Видео" in elements