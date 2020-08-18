<?if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true) die();?>

<a href="<?=$arParams['PATH_TO_BASKET']?>">
    <i><svg width="38" height="35" viewBox="0 0 38 35" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M1.24445 0C0.557142 0 0 0.557163 0 1.24445C0 1.93175 0.557142 2.48891 1.24445 2.48891H5.37969C7.43935 7.59013 9.4681 12.7007 11.5112 17.8113L9.63158 22.3354C9.47411 22.7126 9.51842 23.1674 9.74569 23.5071C9.97301 23.8468 10.3765 24.0612 10.7853 24.0595H31.5262C32.1836 24.0686 32.7883 23.4725 32.7883 22.815C32.7883 22.1575 32.1836 21.5613 31.5262 21.5706H12.652L13.7279 19.0039L33.704 17.4094C34.2268 17.3683 34.7002 16.961 34.8188 16.4501L37.3077 5.66486C37.4705 4.93842 36.8336 4.14575 36.0892 4.14818H8.72412L7.37596 0.777784C7.19137 0.321559 6.71441 1.24445e-05 6.22227 0H1.24445ZM9.7223 6.63709H34.5207L32.5891 15.0112L13.6761 16.5149L9.7223 6.63709ZM14.9334 25.7187C12.6572 25.7187 10.7853 27.5907 10.7853 29.8669C10.7853 32.1432 12.6572 34.0151 14.9334 34.0151C17.2097 34.0151 19.0816 32.1432 19.0816 29.8669C19.0816 27.5907 17.2097 25.7187 14.9334 25.7187ZM27.378 25.7187C25.1018 25.7187 23.2298 27.5907 23.2298 29.8669C23.2298 32.1432 25.1018 34.0151 27.378 34.0151C29.6542 34.0151 31.5262 32.1432 31.5262 29.8669C31.5262 27.5907 29.6542 25.7187 27.378 25.7187ZM14.9334 28.2077C15.8646 28.2077 16.5927 28.9358 16.5927 29.8669C16.5927 30.7981 15.8646 31.5262 14.9334 31.5262C14.0024 31.5262 13.2742 30.798 13.2742 29.8669C13.2742 28.9358 14.0024 28.2077 14.9334 28.2077ZM27.378 28.2077C28.309 28.2077 29.0373 28.9358 29.0373 29.8669C29.0373 30.798 28.309 31.5262 27.378 31.5262C26.4468 31.5262 25.7187 30.7981 25.7187 29.8669C25.7187 28.9358 26.4468 28.2077 27.378 28.2077Z" fill="#3B3B3B"/>
        </svg>
    </i>
    <span class="header_cart_count"><?=$arResult['NUM_PRODUCTS'];?></span>
    <span class="header_cart_sum"><?=$arResult['TOTAL_PRICE']?></span>
</a>

<!--<div class="bx_small_cart">

	<span class="icon_cart"></span>

	<?/*if ($arResult['NUM_PRODUCTS'] > 0 && $arParams['SHOW_NUM_PRODUCTS'] == 'N' && $arParams['SHOW_TOTAL_PRICE'] == 'N'):*/?>
		<a href="<?/*=$arParams['PATH_TO_BASKET']*/?>"><?/*=GetMessage('TSB1_CART')*/?></a>
	<?/*else: echo GetMessage('TSB1_CART'); endif*/?>

	<?/*if($arParams['SHOW_NUM_PRODUCTS'] == 'Y'):*/?>
		<?/*if ($arResult['NUM_PRODUCTS'] > 0):*/?>
			<a href="<?/*=$arParams['PATH_TO_BASKET']*/?>"><?/*=$arResult['NUM_PRODUCTS'].' '.$arResult['PRODUCT(S)']*/?></a>
		<?/*else:*/?>
			<?/*=$arResult['NUM_PRODUCTS'].' '.$arResult['PRODUCT(S)']*/?>
		<?/*endif*/?>
	<?/*endif*/?>

	<?/*if($arParams['SHOW_TOTAL_PRICE'] == 'Y'):*/?>
		<br>
		<span class="icon_spacer"></span> <?/*=GetMessage('TSB1_TOTAL_PRICE')*/?>
		<?/*if ($arResult['NUM_PRODUCTS'] > 0):*/?>
			<a href="<?/*=$arParams['PATH_TO_BASKET']*/?>"><?/*=$arResult['TOTAL_PRICE']*/?></a>
		<?/*else:*/?>
			<?/*=$arResult['TOTAL_PRICE']*/?>
		<?/*endif*/?>
	<?/*endif*/?>


	<?/*if($arParams["SHOW_PERSONAL_LINK"] == "Y"):*/?>
		<br>
		<span class="icon_profile"></span>
		<a class="link_profile" href="<?/*=$arParams["PATH_TO_PERSONAL"]*/?>"><?/*=GetMessage("TSB1_PERSONAL")*/?></a>
	<?/*endif*/?>

	<?/*if ($arParams["SHOW_PRODUCTS"] == "Y" && $arResult['NUM_PRODUCTS'] > 0):*/?>
		<div class="bx_item_hr" style="margin-bottom:0"></div>
	<?/*endif*/?>

</div>-->