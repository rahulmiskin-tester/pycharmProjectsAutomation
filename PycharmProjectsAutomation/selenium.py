from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.action_chains import ActionChains
import time

# -------------------------------
# Chrome Options
# -------------------------------
options = Options()
options.add_experimental_option("detach", True)

# -------------------------------
# Chrome Driver Service
# -------------------------------
service = Service(r"C:\Driver\chromedriver_win32\chromedriver.exe")
driver = webdriver.Chrome(service=service, options=options)

# -------------------------------
# Browser Settings
# -------------------------------
driver.maximize_window()
driver.implicitly_wait(10)

# -------------------------------
# Open URL
# -------------------------------
driver.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")

# -------------------------------
# Explicit Wait
# -------------------------------
wait = WebDriverWait(driver, 20)

# -------------------------------
# Login
# -------------------------------
username = wait.until(EC.visibility_of_element_located((By.NAME, "username")))
password = driver.find_element(By.NAME, "password")

username.send_keys("Admin")
password.send_keys("admin123")

driver.find_element(By.XPATH, "//button[@type='submit']").click()

# -------------------------------
# Validation
# -------------------------------
wait.until(EC.visibility_of_element_located((By.XPATH, "//h6[text()='Dashboard']")))
print("✅ Login Successful")

time.sleep(5)
driver.quit()
