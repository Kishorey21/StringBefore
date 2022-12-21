*** Settings ***
Documentation       Template robot main suite.

Library             String


*** Variables ***
${InputStringData}      List of value addition robot framework
${BeforeString}         addition


*** Tasks ***
StringBefore Reusable
    Checking String Before data in Template InputString    ${InputStringData}    ${BeforeString}


*** Keywords ***
Checking String Before data in Template InputString
    [Arguments]    ${InputStringData}    ${BeforeString}
    ${result}=    Split String    ${InputStringData}    ${BeforeString}
    ${result}=    Set Variable    ${result}[0]
    ${result}=    Strip String    ${result}    both
