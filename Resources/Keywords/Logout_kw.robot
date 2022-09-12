*** Settings ***
Library            AppiumLibrary
Resource           ${CURDIR}/../imports.robot

*** Keywords ***
Tap Element Show logout
    [Arguments]    ${show_logout}
    Wait Until Element is visible        ${show_logout}            30s
    Tap                                  ${show_logout}    

logout    
    [Arguments]    ${verify_logout_text}        
    Wait Until Element Is Visible        ${me_btn}                                30s
    Tap                                  ${me_btn}
    Wait Until Element Is Visible        ${logout_btn}                            30s
    Tap                                  ${logout_btn}
    Wait Until Element Is Visible        ${title_confirmlogoutpopup_text}         30s
    Element Text Should Be               ${title_confirmlogoutpopup_text}         ${verify_logout_text}
    Wait Until Element Is Visible        ${confirm_logout_btn}                    30s
    Tap                                  ${confirm_logout_btn}

verify logout 
    Wait Until Element Is Visible        ${me_btn}                30s
    Tap                                  ${me_btn}
    Wait Until Element is visible        ${sign_in_btn}           30s
    Element Should Be Visible            ${sign_in_btn}
    
Check Already login are not
    [Arguments]    ${do_something}       ${text} 
    Wait Until Element Is Visible        ${me_btn}                30s
    Tap                                  ${me_btn}
    ${passed}  Run Keyword And Return Status     Wait Until Element is visible   ${displayname_text}        30s
    IF  ${passed}
            Run Keyword    ${do_something}    ${text}
            Wait Until Element Is Visible            ${broadcast_btn}        30s
            Tap Element Show login                   ${broadcast_btn}
    END