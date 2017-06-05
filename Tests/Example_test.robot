*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Google something
    Open Browser    http://www.google.com  ff
    Input Text    q    Robot Framework
    Wait Until Page Contains    robotframework.org
    Close All Browsers
