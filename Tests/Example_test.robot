*** Settings ***
Library           Selenium2Library

Resource  ../Resources/Common.robot


*** Test Cases ***
Google something
    Open Browser    ${URLI}  ${BROWSER}
    Input Text    q    Robot Framework
    Wait Until Page Contains    robotframework.org
    Close All Browsers
