*** Settings ***
Library           Selenium2Library

Resource  ../Resources/Common.robot

*** Variables ***
${URL}=  http://www.amazon.com
${BROWSERI}=  ff


*** Test Cases ***
Google something
    [tags]  testi
    Open Browser    ${URLI}  ${BROWSERI}
    Input Text    q    Robot Framework
    press key  q    \\13  #press enter
    Wait Until Page Contains    robotframework.org
    Close All Browsers

Test something
    Open Browser    ${URL}  ${BROWSERI}
    mouse over  id=nav-link-accountList
    click link  xpath=//*[@id='nav-al-wishlist']/a[1]/span
    sleep  5s
    close browser
