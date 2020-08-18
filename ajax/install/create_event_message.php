<? require($_SERVER["DOCUMENT_ROOT"]."/bitrix/modules/main/include/prolog_before.php"); ?>
<?php


$arr["ACTIVE"] = "Y";
$arr["EVENT_NAME"] = "PK_SEND_USER_FORM";
$arr["LID"] = SITE_ID;
$arr["EMAIL_FROM"] = "#DEFAULT_EMAIL_FROM#";
$arr["EMAIL_TO"] = "#EMAIL#";
$arr["BCC"] = "#BCC#";
$arr["SUBJECT"] = "Заполнена форма #FORM_NAME#";
$arr["BODY_TYPE"] = "text";
$arr["MESSAGE"] = "
Заполнена форма #FORM_NAME#
#PROPS#
";

$emess = new CEventMessage;
var_dump($emess->Add($arr));

$arr["ACTIVE"] = "Y";
$arr["EVENT_NAME"] = "PK_FORM_TO_ADMIN";
$arr["LID"] = SITE_ID;
$arr["EMAIL_FROM"] = "#DEFAULT_EMAIL_FROM#";
$arr["EMAIL_TO"] = "#DEFAULT_EMAIL_FROM#";
$arr["BCC"] = "#BCC#";
$arr["SUBJECT"] = "Заполнена форма #FORM_NAME#";
$arr["BODY_TYPE"] = "text";
$arr["MESSAGE"] = "
Заполнена форма #FORM_NAME#
#PROPS#
";

$emess = new CEventMessage;
var_dump($emess->Add($arr));


$arr["ACTIVE"] = "Y";
$arr["EVENT_NAME"] = "PK_NEW_ORDER";
$arr["LID"] = SITE_ID;
$arr["EMAIL_FROM"] = "#DEFAULT_EMAIL_FROM#";
$arr["EMAIL_TO"] = "#DEFAULT_EMAIL_FROM#";
$arr["BCC"] = "#BCC#";
$arr["SUBJECT"] = "Новый заказ №#ORDER_ID#";
$arr["BODY_TYPE"] = "text";
$arr["MESSAGE"] = "
Состав заказа № #ORDER_ID#<br>
#BASKET#<br>
Сумма #RESULT_PRICE#
";

$emess = new CEventMessage;
var_dump($emess->Add($arr));



?>