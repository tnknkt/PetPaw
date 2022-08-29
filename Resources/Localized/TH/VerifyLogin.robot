*** Settings ***
Library   AppiumLibrary

*** Variables *** 
#Not verify
${wating_verify_email_title}        บัญชีของคุณยังไม่ได้ยืนยันตัวตน
${wating_verify_email_subtitle}     กรุณาเช็คกล่องข้อความในอีเมล์เพื่อยืนยันตัวตน

#verify_alert_message
${verify_username_fail}    Username is incorrect
${verify_passwd_fail}      Password is incorrect  
${verify_username_empty}   This field is require
${verify_passwd_empty}     Password is required