*** Settings ***
Library   AppiumLibrary

*** Variables *** 
#Login pass
${username_valid}     0830501407
${passwd_valid}       Tt112233
#verify_username
${displayname_valid}  FIATT

#Login fail
${username_invalid}   test123
${passwd_invalid}     test123

#Not verify
${username_not_verify}   tanakornp@petpaw.com
${passwd_not_verify}     Tt112233

#verify_alert_message
${verify_username_fail}    Username is incorrect
${verify_passwd_fail}      Password is incorrect  
${verify_username_empty}   This field is require
${verify_passwd_empty}     Password is required

