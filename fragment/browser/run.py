from selenium import webdriver

DRIVER_PATH = '/Users/guyaqi/chromedriver'

browser = webdriver.Chrome(DRIVER_PATH)
browser.get("https://www.baidu.com")

browser = webdriver.Chrome(DRIVER_PATH)
browser.get("https://www.runoob.com")