*** Settings ***
Library   AppiumLibrary

*** Variables *** 
#Not verify
${wating_verify_email_title}        Your account waiting to verify
${wating_verify_email_subtitle}     Please go to your email and verify your account.

#verify_alert_message
${verify_username_fail}    Username is incorrect
${verify_passwd_fail}      Password is incorrect  
${verify_username_empty}   This field is require
${verify_passwd_empty}     Password is required