from selenium.webdriver.common.by import By


class HomePage:

    def __init__(self, driver):
        self.driver = driver
        self.base_url = "https://epam.github.io/JDI/"

    def go_to_site(self):
        return self.driver.get(self.base_url)

    def click_contact_form(self):
        element = self.driver.find_element(By.XPATH, "//*[@id='mCSB_1_container']/ul/li[2]")
        element.click()

    def login(self):
        self.driver.find_element(By.ID, "user-icon").click()
        user_name = self.driver.find_element(By.ID, "name")
        user_name.click()
        user_name.send_keys("epam")
        pass_word = self.driver.find_element(By.ID, "password")
        pass_word.click()
        pass_word.send_keys("1234")
        self.driver.find_element(By.ID, "login-button").click()
        #TODO no prompts when calling method
