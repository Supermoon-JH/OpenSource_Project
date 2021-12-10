import time

from openpyxl import Workbook
from selenium import webdriver as wd
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By


def main():
    service = Service(r"C:"\Users\dknl1\Desktop\vegan2\vegan\py\chromedriver.exe")
    oprions = wd.ChromeOptions()      # 크롬 브라우저 열 때 넣는 옵션 사용
    options.add_experimental_option("excludeSwitches", ["enable-logging"])
    # options.add_argument("--disable-javascript")
    # options.add_argument('headless') # 브라우저를 띄우지 않음
    driver = wd.Chrome(service=service, options=options)
    data = []

    write_wb = Workbook()         # 새 워크북 생성
    write_ws = write_wb.active    # 현재 활성화된 sheet 가져옴

    write_ws.append(
        ['prd_brand', 'prd_name', 'prd_price', 'prd_img', 'prd_detail'])

    for i in range(1, 28):         # 페이지 수가 총 27페이지
        driver.get(
            'https://www.oliveyoung.co.kr/store/display/getMCategoryList.do?dispCatNo=100000200020023&fltDispCatNo=&prdSort=01&pageIdx={}&rowsPerPage=24&searchTypeSort=btn_thumb&plusButtonFlag=N&isLoginCnt=null&aShowCnt=&bShowCnt=&cShowCnt=&trackingCd=Cat100000200020023_MID'.format(
                i))
        for j in range(2, 8):      # ul태그가 2~7까지
            for k in range(1, 5):  # li 태그가 1~4까지
                driver.find_element(By.XPATH,
                                    '/html/body/div[3]/div[7]/div[1]/ul[{}]/li[{}]/div/a'.format(j, k)).click()
                driver.implicitly_wait(5)    # 로딩이 다 되면 5초가 되지않아도 대기 종료
                prd_brand = driver.find_element(
                    By.XPATH, '/html/body/div[3]/div[7]/div/div[2]/div[2]/div/p[1]').text
                prd_name = driver.find_element(
                    By.XPATH, '/html/body/div[3]/div[7]/div/div[2]/div[2]/div/p[2]').text
                prd_price = driver.find_element(
                    By.XPATH, '/html/body/div[3]/div[7]/div/div[2]/div[2]/div/div[1]/span/strong').text
                prd_img = driver.fine_element(
                    By.XPATH, '/html/body/div[3]/div[7]/div/div[2]/div[1]/div[1]/img').get_attribute('src')

                time.sleep(10)

                btn = driver.find_element(
                    By.XPATH, '/html/body/div[3]/div[7]/div/ul/li[2]/a')  # 앵커 태그안에 href주소가 없어서 click 대신에 btn 도입
                driver.execute_script("arguments[0].click();", btn)
                # enter 기능을 javascrip로 구현

                prd_detail = driver.find_element(
                    By.XPATH, '/html/body/div[3]/div[7]/div/div[7]/div[2]/dl[6]/dd').text
                item = [prd_brand, prd_name, prd_price, prd_img, prd_detail]
                data.append(item)
                print(item)                 # 터미널 창에서 확인
                write_ws.append(item)       # sheet에 아이템 추가
                driver.back()               # 웹에서 들어간 페이지에서 다시 나옴
                write_wb.save('./data.xlsx')     # sheet를 xlsx파일로 저장


if __name__ == "__main__":
    main()
