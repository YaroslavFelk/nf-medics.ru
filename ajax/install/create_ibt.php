<? require($_SERVER["DOCUMENT_ROOT"]."/bitrix/modules/main/include/prolog_before.php"); ?>
<?php
\Bitrix\Main\Loader::IncludeModule("iblock");

$arFields[] = Array(
    'ID'=>'catalog',
    'SECTIONS'=>'Y',
    'IN_RSS'=>'N',
    'SORT'=>100,
    'LANG'=>Array(
        'en'=>Array(
            'NAME'=>'Каталоги',
            'SECTION_NAME'=>'Разделы',
            'ELEMENT_NAME'=>'Элементы'
        ),
        'ru'=>Array(
            'NAME'=>'Каталоги',
            'SECTION_NAME'=>'Разделы',
            'ELEMENT_NAME'=>'Элементы'
        )
    )
);

$arFields[] = Array(
    'ID'=>'content_m1',
    'SECTIONS'=>'Y',
    'IN_RSS'=>'N',
    'SORT'=>100,
    'LANG'=>Array(
        'en'=>Array(
            'NAME'=>'Контент',
            'SECTION_NAME'=>'Разделы',
            'ELEMENT_NAME'=>'Элементы'
        ),
        'ru'=>Array(
            'NAME'=>'Контент',
            'SECTION_NAME'=>'Разделы',
            'ELEMENT_NAME'=>'Элементы'
        )
    )
);

$arFields[] = Array(
    'ID'=>'profitkit_forms',
    'SECTIONS'=>'Y',
    'IN_RSS'=>'N',
    'SORT'=>100,
    'LANG'=>Array(
        'en'=>Array(
            'NAME'=>'Формы',
            'SECTION_NAME'=>'Разделы',
            'ELEMENT_NAME'=>'Элементы'
        ),
        'ru'=>Array(
            'NAME'=>'Формы',
            'SECTION_NAME'=>'Разделы',
            'ELEMENT_NAME'=>'Элементы'
        )
    )
);

$arFields[] = Array(
    'ID'=>'offers',
    'SECTIONS'=>'Y',
    'IN_RSS'=>'N',
    'SORT'=>100,
    'LANG'=>Array(
        'en'=>Array(
            'NAME'=>'Торговые предложения',
            'SECTION_NAME'=>'Разделы',
            'ELEMENT_NAME'=>'Элементы'
        ),
        'ru'=>Array(
            'NAME'=>'Торговые предложения',
            'SECTION_NAME'=>'Разделы',
            'ELEMENT_NAME'=>'Элементы'
        )
    )
);

$obBlocktype = new CIBlockType;
foreach ($arFields as $item) {
    $DB->StartTransaction();
    $res = $obBlocktype->Add($item);
    if (!$res) {
        $DB->Rollback();
        echo 'Error: ' . $obBlocktype->LAST_ERROR . '<br>';
    } else
        $DB->Commit();
}