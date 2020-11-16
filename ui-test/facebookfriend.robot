*** Settings ***
Library    SeleniumLibrary
Resource    resource-facebook.robot

*** Test Cases ***
Test login facebook
    พิมพ์ facebook.com
    พิมพ์ facebook email password
    กด Enter
    พิม Post

***Variables***

*** Keywords ***
พิมพ์ facebook.com
	Open Browser	${URL}    ${BROWSER}
พิมพ์ facebook email password
    Input Text    email    ${EMAIL} 
    Input Text    pass    ${PASSWORD}    
กด Enter
    Press Keys    None    RETURN
    Wait Until Page Contains    คุณคิดอะไรอยู่
    Click Element    css:div.oajrlxb2.b3i9ofy5

พิม Post
    Wait Until Page Contains    เพิ่มลงในโพสต์ของคุณ
    Press Keys    None    ${POST}
    Click Element    css:div.s1i5eluu

