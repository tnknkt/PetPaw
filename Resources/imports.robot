*** Settings ***
Library  AppiumLibrary

Resource    ${CURDIR}/../Resources/Keywords/Login_kw.robot
Resource    ${CURDIR}/../Resources/Keywords/StartApp_kw.robot
Resource    ${CURDIR}/../Resources/Localized/${LANG}/Permission.robot
Resource    ${CURDIR}/../Resources/Repository/xpath.robot
Resource    ${CURDIR}/../Resources/Variables/Guestmode.robot
Resource    ${CURDIR}/../Resources/Variables/Var.robot