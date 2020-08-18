<? require($_SERVER["DOCUMENT_ROOT"]."/bitrix/modules/main/include/prolog_before.php"); ?>
<?php
function UET($EVENT_NAME, $NAME, $LID, $DESCRIPTION)
{
    $et = new CEventType;
    $et->Add(array(
        "LID"           => $LID,
        "EVENT_NAME"    => $EVENT_NAME,
        "NAME"          => $NAME,
        "DESCRIPTION"   => $DESCRIPTION
    ));
}

UET(
    "PK_SEND_USER_FORM","Заполнена форма (пользователь)","ru",
    "
#EMAIL# - EMail пользователя
#FORM_NAME# - Название формы
#PROPS# - поля формы
"
);
UET(
    "PK_FORM_TO_ADMIN","Заполнена форма (админ)","ru",
    "
#EMAIL# - EMail пользователя
#FORM_NAME# - Название формы
#PROPS# - поля формы
"
);
UET(
    "PK_NEW_ORDER","Оформлен новый заказ","ru",
    "
#ORDER_ID# - номер закзаа
#DELIVER# - способ доставки
#PAYMENT# - способ оплаты
#RESULT_PRICE# - итоговая стоимость заказа
#DEVILERY_PRICE# - стоимость доставки
#DISCOUNT_VALUE# - скидка
#DESCRIPTION# - комментарий
#BASKET# - товары в корзине
#PROP_{id свойства}# - поля заказа
"
);
?>