*** Settings ***
Library     OperatingSystem

*** Keywords ***

*** Variables ***
${path_Directory}    Capture

*** Testcases ***
Create Directory Test
    Create Directory    ${path_Directory}