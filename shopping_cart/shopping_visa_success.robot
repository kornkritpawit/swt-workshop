*** Settings ***
Library    SeleniumLibrary
# Suite Teardown    Close All Browsers
*** Variables ***
${URL}    https://dminer.in.th/Product-list.html

*** Test Cases ***
ีuser ซื้อของเล่นให้ลูกสาว เลือกวิธีการจัดส่งเป็น kerry ชำระเงินด้วยบัตรเครดิต visa และชำระเงินสำเร็จ
    แสดงสินค้า
    แสดงรายละเอียดสินค้า
    นำสินค้าใส่ตะกร้า
    ยืนยันการสั่งซื้อและชำระเงินด้วยบัตรเครดิตวีซ่าคาร์ด
    # ขอบคุณ

*** Keywords ***
แสดงสินค้า
    Open Browser    ${URL}    chrome
    Element Should Contain    id:productName-1    expected=43 Piece Dinner Set
    Element Should Contain    id:productPrice-1    expected=12.95 USD
    # Wait Until Page Contains    43 Piece Dinner Set
    Click Element    id:viewMore-1
แสดงรายละเอียดสินค้า
    Wait Until Page Contains Element    id:productQuantity
    Press Keys    id:productQuantity    1
    Click Element    id:addToCart

นำสินค้าใส่ตะกร้า
    Wait Until Page Contains Element    id:confirmPayment
    Element Should Contain    id:totalProductPrice    expected=12.95 USD
    Element Should Contain    id:totalShippingCharge    expected=2.00 USD
    Element Should Contain    id:totalAmount    expected=14.95 USD
    Element Attribute Value Should Be    id:productQuantity-1    value    1
    Element Should Contain    id:productPrice-1    expected=12.95
    Click Element    id:confirmPayment

ยืนยันการสั่งซื้อและชำระเงินด้วยบัตรเครดิตวีซ่าคาร์ด
    Wait Until Page Contains Element    id:Payment
    Input text    id:cardNumber    479700591590995
    Press Keys    id:cvv    752
    Press Keys    id:expiredMonth    7
    Press Keys    id:expiredYear    20
    Press Keys    id:cardName    Karnwat Wongudom
    Click Element    id:Payment

ชำระเงินด้วยบัตร credit-visa card
    Wait Until Page Contains Element    id:goHome
    Click Element    id:goHome
# ขอบคุณ

