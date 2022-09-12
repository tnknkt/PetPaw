*** Settings ***
Library     AppiumLibrary
Resource    ${CURDIR}/../imports.robot

*** Keywords ***
# Guest mode 
Tap Element Show login
    [Arguments]    ${show_login}
    Wait Until Element is visible        ${show_login}        30s
    Tap                                  ${show_login}                                        

login
    [Arguments]    ${username}    ${password}
    Wait Until Element is visible        ${sign_in_btn}                   30s
    Element Should Be Visible            ${sign_in_btn} 
    Wait Until Element is visible        ${username_input_field}          30s
    Input Text                           ${username_input_field}          ${username}
    Wait Until Element is visible        ${password_input_field}          30s  
    Input Password                       ${password_input_field}          ${password}
    Tap                                  ${sign_in_btn} 
verify login pass
    [Arguments]    ${displayname}
    Wait Until Element Is Visible        ${me_btn}                  30s
    Tap                                  ${me_btn} 
    Wait Until Element is visible        ${displayname_text}        30s
    Element Text Should Be               ${displayname_text}        ${displayname}
verify login fail
    [Arguments]    ${username_fail}    ${passwd_fail}
    Wait Until Element is visible        ${username_alertmessage_text}        30s
    Element Text Should Be               ${username_alertmessage_text}        ${username_fail}
    Wait Until Element is visible        ${password_alertmessage_text}        30s
    Element Text Should Be               ${password_alertmessage_text}        ${passwd_fail}
    
verify login with not verify email
    [Arguments]    ${title}    ${subtitle}
    Wait Until Element Is Visible        ${title_notverifypopup_text}         30s
    Element Text Should Be               ${title_notverifypopup_text}         ${title}
    Wait Until Element Is Visible        ${subtitle_notverifypopup_text}      30s
    Element Text Should Be               ${subtitle_notverifypopup_text}      ${subtitle}
    Tap                                  ${got_it_noverifypopup_btn}
    Wait Until Element is visible        ${sign_in_btn}                       30s
    Element Should Be Visible            ${sign_in_btn} 
