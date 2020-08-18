-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 17 2020 г., 13:48
-- Версия сервера: 5.5.52-MariaDB-cll-lve
-- Версия PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_basket`
--

CREATE TABLE IF NOT EXISTS `pk_market_basket` (
  `ID` int(10) unsigned NOT NULL,
  `LID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `DATATIME_INSERT` datetime NOT NULL,
  `DATATIME_UPDATE` datetime NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `PRICE` decimal(10,0) NOT NULL DEFAULT '0',
  `OWNER_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL DEFAULT '1',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRICEOLD` float NOT NULL DEFAULT '0',
  `PROPERTY` text COLLATE utf8_unicode_ci,
  `DELAY` int(1) NOT NULL DEFAULT '0',
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Структура таблицы `pk_market_catalog`
--

CREATE TABLE IF NOT EXISTS `pk_market_catalog` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `SKU_IBLOCK_ID` int(11) NOT NULL DEFAULT '0',
  `SKU_PROPERTY_ID` int(11) DEFAULT NULL,
  `VAT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_catalog_currency`
--

CREATE TABLE IF NOT EXISTS `pk_market_catalog_currency` (
  `ID` int(11) NOT NULL,
  `CATALOG_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `ACTIVE` tinyint(4) NOT NULL DEFAULT '1',
  `BASE` tinyint(4) NOT NULL DEFAULT '0',
  `DESCRIPTION` longtext COLLATE utf8_unicode_ci,
  `SETTING` text COLLATE utf8_unicode_ci,
  `XML_ID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_catalog_vat`
--

CREATE TABLE IF NOT EXISTS `pk_market_catalog_vat` (
  `ID` int(11) NOT NULL,
  `ACTIVE` tinyint(4) NOT NULL DEFAULT '1',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RATE` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_coupon`
--

CREATE TABLE IF NOT EXISTS `pk_market_coupon` (
  `ID` int(11) NOT NULL,
  `LID` int(11) NOT NULL,
  `DATATIME_INSERT` datetime NOT NULL,
  `DATATIME_UPDATE` datetime NOT NULL,
  `ACTIVE` tinyint(4) NOT NULL DEFAULT '1',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `PROPERTY` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` longtext COLLATE utf8_unicode_ci,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_delivery`
--

CREATE TABLE IF NOT EXISTS `pk_market_delivery` (
  `ID` int(11) NOT NULL,
  `LID` int(11) NOT NULL,
  `DATATIME_INSERT` datetime NOT NULL,
  `DATATIME_UPDATE` datetime NOT NULL,
  `DEVILERY_SYSTEM_ID` int(11) NOT NULL,
  `DELIVERY_STATUS_ID` int(11) NOT NULL,
  `DATATIME_NEED_DELIVERY` datetime NOT NULL,
  `DATATIME_IS_DELIVERY` datetime NOT NULL,
  `PRICE` decimal(10,0) NOT NULL DEFAULT '0',
  `DELIVERED` tinyint(4) NOT NULL DEFAULT '0',
  `PROPERTY` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` longtext COLLATE utf8_unicode_ci,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_delivery_status`
--

CREATE TABLE IF NOT EXISTS `pk_market_delivery_status` (
  `ID` int(11) NOT NULL,
  `LID` int(11) NOT NULL,
  `DATATIME_INSERT` datetime NOT NULL,
  `DATATIME_UPDATE` datetime NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` tinyint(4) NOT NULL DEFAULT '1',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `PROPERTY` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` longtext COLLATE utf8_unicode_ci,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_delivery_system`
--

CREATE TABLE IF NOT EXISTS `pk_market_delivery_system` (
  `ID` int(11) NOT NULL,
  `LID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `DATATIME_INSERT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATATIME_UPDATE` datetime NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PROPERTY` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` longtext COLLATE utf8_unicode_ci,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(10) DEFAULT NULL,
  `PRICE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `pk_market_delivery_system`
--

INSERT INTO `pk_market_delivery_system` (`ID`, `LID`, `DATATIME_INSERT`, `DATATIME_UPDATE`, `CODE`, `NAME`, `PROPERTY`, `DESCRIPTION`, `XML_ID`, `IMAGE_ID`, `PRICE`) VALUES
(1, 's1', '2019-10-16 09:37:51', '0000-00-00 00:00:00', NULL, 'Курьерская доставка', NULL, 'Получить заказ курьером по любому удобному Вам адресу.', NULL, 1933, '499 руб / 1-2 дня'),
(2, 's1', '2019-10-16 15:24:52', '0000-00-00 00:00:00', NULL, 'Самовывоз из магазина', NULL, 'Вы можете самостоятельно забрать заказ из нашего магазина.', NULL, 1934, 'Бесплатно'),
(3, 's1', '2019-10-16 15:26:15', '0000-00-00 00:00:00', NULL, 'Почта России', NULL, 'Доставка заказа Почтой России со страховкой от кражи и повреждений.', NULL, 1935, 'от 200 руб / 5-7дней');

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_order`
--

CREATE TABLE IF NOT EXISTS `pk_market_order` (
  `ID` int(11) NOT NULL COMMENT 'THIS FIELD USE FOR SAVE ORDER ID',
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'THIS FIELD IS USED TO STORE BINDING TO THE SITE',
  `DATATIME_INSERT` datetime NOT NULL COMMENT 'THIS FIELD IS USED TO STORE DATE AND TIME WHEN INSERT ROW (AUTOCOMPLETE NOW())',
  `DATATIME_UPDATE` datetime NOT NULL COMMENT 'THIS FIELD IS USED TO STORE DATE AND TIME WHEN WAS BE UPDATED ROW(AUTOCOMPLETE)',
  `DATATIME_CANSELED` datetime DEFAULT NULL,
  `ORDER_STATUS_ID` int(11) NOT NULL COMMENT 'THIS FIELD IS USED TO STORE TO BINDING ORDER PAYMENT STATUS ',
  `PAYED` tinyint(4) NOT NULL DEFAULT '0',
  `DELIVER_ID` int(11) NOT NULL,
  `RESULT_PRICE` decimal(10,0) NOT NULL DEFAULT '0' COMMENT 'THIS FIELD IS USED TO STORE COST OF GOODS',
  `DEVILERY_PRICE` decimal(10,0) NOT NULL DEFAULT '0' COMMENT 'THIS FIELD IS USED TO STORE COST OF DELIVERY',
  `PAYED_PRICE` decimal(10,0) NOT NULL DEFAULT '0' COMMENT 'THIS FIELD IS USED TO STORE VALUE HOW MUCH WAS PAYEDS',
  `DISCOUNT_VALUE` decimal(10,0) NOT NULL DEFAULT '0' COMMENT 'THIS FIELD IS USED TO STORE DISCOUNT VALUE',
  `TAX_VALUE` decimal(10,0) NOT NULL DEFAULT '0' COMMENT 'THIS FIELD IS USED TO STORE TAX VALUE',
  `BLOCKED` tinyint(4) NOT NULL DEFAULT '0',
  `REASON_BLOCED` longtext COLLATE utf8_unicode_ci,
  `DESCRIPTION` longtext COLLATE utf8_unicode_ci,
  `CANSELED` tinyint(4) NOT NULL DEFAULT '0',
  `RESAN_CANSELED` longtext COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(11) NOT NULL DEFAULT '0',
  `MODIFIED_BY_ID` int(11) NOT NULL DEFAULT '0',
  `OWNER_ID` int(11) NOT NULL,
  `COUPON_ID` int(11) NOT NULL,
  `SETTING` text COLLATE utf8_unicode_ci,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Структура таблицы `pk_market_order_property`
--

CREATE TABLE IF NOT EXISTS `pk_market_order_property` (
  `ID` int(11) NOT NULL,
  `LID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `DATATIME_INSERT` datetime NOT NULL,
  `DATATIME_UPDATE` datetime NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` tinyint(4) NOT NULL DEFAULT '1',
  `REQUIRED` tinyint(4) NOT NULL DEFAULT '0',
  `MULTIPLE` tinyint(4) NOT NULL DEFAULT '0',
  `PERSON_TYPE_ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `GROUP_ID` int(11) NOT NULL,
  `TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEFAULT_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` longtext COLLATE utf8_unicode_ci,
  `SETTING` text COLLATE utf8_unicode_ci,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `pk_market_order_property`
--

INSERT INTO `pk_market_order_property` (`ID`, `LID`, `DATATIME_INSERT`, `DATATIME_UPDATE`, `CODE`, `ACTIVE`, `REQUIRED`, `MULTIPLE`, `PERSON_TYPE_ID`, `SORT`, `GROUP_ID`, `TYPE`, `NAME`, `DEFAULT_VALUE`, `DESCRIPTION`, `SETTING`, `XML_ID`) VALUES
(1, 's1', '2019-10-15 11:30:05', '2019-10-15 11:30:05', 'NAME', 1, 1, 0, 1, 500, 1, 'string', 'Имя', NULL, NULL, NULL, NULL),
(2, 's1', '2019-10-15 11:35:33', '2019-10-15 11:35:33', 'EMAIL', 1, 1, 0, 1, 500, 1, 'string', 'Электронная почта', NULL, NULL, NULL, NULL),
(3, 's1', '2019-10-15 12:08:21', '2019-10-15 12:08:21', 'PERSONAL_PHONE', 1, 0, 0, 1, 500, 1, 'string', 'Телефон', NULL, NULL, NULL, NULL),
(4, 's1', '2019-10-15 17:19:13', '2019-10-15 17:19:13', 'PERSONAL_COMPANY', 1, 0, 0, 2, 500, 1, 'string', 'Компания', NULL, NULL, NULL, NULL),
(5, 's1', '2019-10-15 19:27:46', '2019-10-15 19:27:46', 'PERSONAL_CITY', 1, 0, 0, 1, 500, 2, 'string', 'Ваш город', 'Санкт-Петербург', NULL, NULL, NULL),
(6, 's1', '2019-10-15 19:29:23', '2019-10-15 19:29:23', '', 1, 0, 0, 1, 500, 2, 'string', 'Улица', NULL, NULL, 'a:1:{s:8:"delivery";a:2:{i:0;i:1;i:1;i:3;}}', NULL),
(7, 's1', '2019-10-15 19:32:51', '2019-10-15 19:32:51', '', 1, 0, 0, 1, 500, 2, 'string', 'Дом, корпус', NULL, NULL, 'a:1:{s:8:"delivery";a:2:{i:0;i:1;i:1;i:3;}}', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_order_satus`
--

CREATE TABLE IF NOT EXISTS `pk_market_order_satus` (
  `ID` int(11) NOT NULL,
  `LID` int(11) NOT NULL,
  `DATATIME_INSERT` datetime NOT NULL,
  `DATATIME_UPDATE` datetime NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` tinyint(4) NOT NULL DEFAULT '1',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_owner`
--

CREATE TABLE IF NOT EXISTS `pk_market_owner` (
  `ID` int(11) NOT NULL,
  `DATATIME_INSERT` datetime NOT NULL,
  `DATATIME_UPDATE` datetime NOT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Структура таблицы `pk_market_payment`
--

CREATE TABLE IF NOT EXISTS `pk_market_payment` (
  `ID` int(11) NOT NULL,
  `LID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `PAYMENT_SUSTEM_ID` int(11) NOT NULL,
  `DATATIME_INSERT` datetime NOT NULL,
  `DATATIME_UPDATE` datetime NOT NULL,
  `DATATIME_PAYMENT` datetime NOT NULL,
  `RECEIPT` longtext COLLATE utf8_unicode_ci,
  `PAYED` tinyint(4) NOT NULL DEFAULT '0',
  `DESCRIPTION` longtext COLLATE utf8_unicode_ci,
  `SETTING` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_payment_system`
--

CREATE TABLE IF NOT EXISTS `pk_market_payment_system` (
  `ID` int(11) NOT NULL,
  `LID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `DATATIME_INSERT` datetime NOT NULL,
  `DATATIME_UPDATE` datetime NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTING` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` longtext COLLATE utf8_unicode_ci,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `pk_market_payment_system`
--

INSERT INTO `pk_market_payment_system` (`ID`, `LID`, `DATATIME_INSERT`, `DATATIME_UPDATE`, `CODE`, `NAME`, `SETTING`, `DESCRIPTION`, `XML_ID`, `IMAGE_ID`) VALUES
(1, 's1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Перевод на банковскую карту', NULL, '', NULL, 1939),
(2, 's1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'ЯндексДеньги', NULL, '', NULL, 1940),
(3, 's1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'Наличными курьеру', NULL, '', NULL, 1941);

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_product`
--

CREATE TABLE IF NOT EXISTS `pk_market_product` (
  `ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL DEFAULT '0',
  `WEIGHT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `LENGTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_product_price`
--

CREATE TABLE IF NOT EXISTS `pk_market_product_price` (
  `ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `CURENCY_TYPE_ID` int(11) NOT NULL,
  `VALUE` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pk_market_property_value`
--

CREATE TABLE IF NOT EXISTS `pk_market_property_value` (
  `ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Структура таблицы `pk_market_relation_order_payment`
--

CREATE TABLE IF NOT EXISTS `pk_market_relation_order_payment` (
  `ORDER_ID` int(11) NOT NULL,
  `PAYMENT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pk_market_basket`
--
ALTER TABLE `pk_market_basket`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_catalog`
--
ALTER TABLE `pk_market_catalog`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_catalog_currency`
--
ALTER TABLE `pk_market_catalog_currency`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_catalog_vat`
--
ALTER TABLE `pk_market_catalog_vat`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `pk_market_coupon`
--
ALTER TABLE `pk_market_coupon`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_delivery`
--
ALTER TABLE `pk_market_delivery`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_delivery_status`
--
ALTER TABLE `pk_market_delivery_status`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_delivery_system`
--
ALTER TABLE `pk_market_delivery_system`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_order`
--
ALTER TABLE `pk_market_order`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `pk_market_order_property`
--
ALTER TABLE `pk_market_order_property`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_order_satus`
--
ALTER TABLE `pk_market_order_satus`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_owner`
--
ALTER TABLE `pk_market_owner`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`),
  ADD UNIQUE KEY `CODE_UNIQUE` (`CODE`);

--
-- Индексы таблицы `pk_market_payment`
--
ALTER TABLE `pk_market_payment`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_payment_system`
--
ALTER TABLE `pk_market_payment_system`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_product`
--
ALTER TABLE `pk_market_product`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_product_price`
--
ALTER TABLE `pk_market_product_price`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `pk_market_property_value`
--
ALTER TABLE `pk_market_property_value`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_UNIQUE` (`ID`);

--
-- Индексы таблицы `pk_market_relation_order_payment`
--
ALTER TABLE `pk_market_relation_order_payment`
  ADD PRIMARY KEY (`ORDER_ID`,`PAYMENT_ID`),
  ADD UNIQUE KEY `PAYMENT_ID_UNIQUE` (`PAYMENT_ID`,`ORDER_ID`),
  ADD UNIQUE KEY `ORDER_ID_UNIQUE` (`ORDER_ID`,`PAYMENT_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pk_market_basket`
--
ALTER TABLE `pk_market_basket`
  MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `pk_market_catalog`
--
ALTER TABLE `pk_market_catalog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pk_market_catalog_vat`
--
ALTER TABLE `pk_market_catalog_vat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pk_market_coupon`
--
ALTER TABLE `pk_market_coupon`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pk_market_delivery`
--
ALTER TABLE `pk_market_delivery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pk_market_delivery_status`
--
ALTER TABLE `pk_market_delivery_status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pk_market_delivery_system`
--
ALTER TABLE `pk_market_delivery_system`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `pk_market_order`
--
ALTER TABLE `pk_market_order`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'THIS FIELD USE FOR SAVE ORDER ID',AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `pk_market_order_property`
--
ALTER TABLE `pk_market_order_property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `pk_market_order_satus`
--
ALTER TABLE `pk_market_order_satus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pk_market_owner`
--
ALTER TABLE `pk_market_owner`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT для таблицы `pk_market_payment`
--
ALTER TABLE `pk_market_payment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pk_market_payment_system`
--
ALTER TABLE `pk_market_payment_system`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `pk_market_property_value`
--
ALTER TABLE `pk_market_property_value`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
