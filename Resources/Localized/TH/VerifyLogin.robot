*** Settings ***
Library   AppiumLibrary

*** Variables *** 
#Not verify
${wating_verify_email_title}        บัญชีของคุณยังไม่ได้ยืนยันตัวตน
${wating_verify_email_subtitle}     กรุณาเช็คกล่องข้อความในอีเมล์เพื่อยืนยันตัวตน

#verify_alert_message
${verify_username_fail}    ชื่อผู้ใช้ไม่ถูกต้อง
${verify_passwd_fail}      รหัสผ่านไม่ถูกต้อง 
${verify_username_empty}   กรุณากรอกข้อมูล
${verify_passwd_empty}     กรุณากรอกรหัสผ่าน