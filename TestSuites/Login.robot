*** Settings ***
Library            AppiumLibrary
Resource           ../Resources/imports.robot

Suite Setup        Run Keywords
...                Open Application by Devices    adb-R58N32LCN9K-pwsTl2._adb-tls-connect._tcp.       12.0        Android        false
...    AND         Sleep                          30s
...    AND         Check popup and accept while using       ${verify_popup_camera}        ${verify_popup_image}

Test Setup         Run Keyword
...                Login_kw.Tap Element Show login                   ${broadcast_btn}

Test Teardown      Go Back    

# Suite Teardown     Close Application

*** Test Cases ***
#--variable LANG:("EN" or "TH")

#--Suite Setup & Suite Teardown
Login_TC-001 empty Login-Tap broadcast
    Login_kw.login                                    ${EMPTY}                      ${EMPTY}
    Login_kw.verify login fail                        ${verify_username_empty}      ${verify_passwd_empty}                         

Login_TC-002 invalid Login-Tap broadcast 
    Login_kw.login                                    ${username_invalid}           ${passwd_invalid}
    Login_kw.verify login fail                        ${verify_username_fail}       ${verify_passwd_fail}  

Login_TC-003 not verify email Login-Tap broadcast
    Login_kw.login                                    ${username_not_verify}        ${passwd_not_verify}
    Login_kw.verify login with not verify email       ${wating_verify_email_title}  ${wating_verify_email_subtitle}

Login_TC-004 valid Login-Tap broadcast 
    Login_kw.login                                    ${username_valid}             ${passwd_valid}
    Login_kw.verify login pass                        ${displayname_valid}

