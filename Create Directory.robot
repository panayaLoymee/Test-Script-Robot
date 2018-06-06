*** Settings ***
Library     OperatingSystem
Library     SeleniumLibrary

*** Keywords ***

*** Variables ***
${path_Directory}    Capture
${path_screenshot}    Nextzy/test keyword/${path_Directory}

*** Testcases ***
Create Directory Test
    Create Directory    ${path_Directory}
    Open Browser	https://www.youtube.com/	Chrome
    Maximize Browser Window
    Set Screenshot Directory    ${path_Directory}
    Capture Page Screenshot     
