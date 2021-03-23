from selenium import webdriver
import time

############ CONFIG START ############
DRIVER_PATH = '/Users/guyaqi/chromedriver'
SITE_URL = 'https://coinlist.co'
DELAY = 15
############ CONFIG END ############

browser = webdriver.Chrome(DRIVER_PATH)
browser.get(SITE_URL)
elements_getter = []
def both_log(param):
  print(param)
  s = f'console.log("{param}")'
  browser.execute_script(s)

def detect_inject():
  inj = browser.execute_script('return window.lk')
  if inj != None:
    # test exist
    test_arr = browser.find_elements_by_link_text(inj)

    if len(test_arr) == 0:
      both_log(f'no such link with text: {inj}')
    else:
      # append into elements_getter
      elements_getter.append(
        lambda: browser.find_elements_by_link_text(inj)[0],
      )
    browser.execute_script('window.lk = undefined')

index = 0
pause = False
while True:

  # delay
  time.sleep(DELAY)

  # on pause
  new_pause = browser.execute_script('return window.pause')
  if new_pause != None:
    pause = new_pause
    browser.execute_script('window.pause = undefined')
  if pause == True:
    both_log('skip click, because pause is true')
    continue

  # detect_inject
  detect_inject()

  # click
  try:
    if len(elements_getter) > 0:
      elements_getter[index]().click()
    else:
      both_log('no elements selected')
  except Exception as e:
    both_log(str(e))

  # next
  index += 1
  if index >= len(elements_getter):
    index = 0
