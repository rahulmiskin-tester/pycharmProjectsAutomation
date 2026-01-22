from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By

# chromedriver ka correct path
serv_obj = Service(r"C:\chromedriver")

# chrome browser launch
driver = webdriver.Chrome(service=serv_obj)

driver.get("https://automationexercise.com/test_cases")




