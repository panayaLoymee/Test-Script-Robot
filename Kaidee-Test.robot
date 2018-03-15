*** Settings ***
Library  Selenium2Library

*** Variables ***
${BROWSER}      chrome
${URL}          https://www.kaidee.com/
${TYPE}         หาซื้อ
${CATEGORY}     อสังหาริมทรัพย์
${INPUTTEXT}    เชียงใหม่

*** Keyword ***
Access to website
    Open Browser                        ${URL}          ${BROWSER}
    Click Element                       xpath=//a[contains(.,"${TYPE}")]

Select category
    Wait Until Element Is Visible       //*[@class="category-list-item"]
    Click Element                       xpath=//a[contains(.,"${CATEGORY}")]

Search the data
    Wait Until Element Is Visible       Hello
    Input Text                          Hello           ${INPUTTEXT}
    Press Key                           Hello           \\13

Select element
    Wait Until Element Is Visible       //*[@class="crow"]
    Click Element                       //*[@class="crow"]//span[contains(.,"${INPUTTEXT}")]

*** Testcases ***
Search
    Access to website
    Select category
    Search the data
    Select element

# Test Teardown    Close Browser