*** Settings ***
Library            AppiumLibrary
Resource           ../Resources/imports.robot  

Suite Setup        Run Keywords
...                Open Application by Devices    adb-R58N32LCN9K-pwsTl2._adb-tls-connect._tcp.       12.0        Android        false
...    AND         Check popup and accept while using       ${verify_popup_camera}        ${verify_popup_image}

Test Setup         Run Keywords
...                Tap Element Show login                   ${broadcast_btn}
...    AND         login                                    ${username_valid}             ${passwd_valid}

Test Teardown      Go Back

Suite Teardown     Close Application

*** Test Cases ***
S_TC-001 Logout
    log out
    verify logout 