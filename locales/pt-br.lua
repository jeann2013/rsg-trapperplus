local Translations = {
error = {
    something_went_wrong = 'algo deu errado!',
    you_dont_have_any_pelts_to_sell = "você não tem peles para vender!"
},
success = {
    you_have_sold_all_your_pelts_for = 'você vendeu todas as suas peles por $',
},
primary = {
    stored = ' Armazenado',
},
menu = {
    open = 'Abrir ',
    sell_stored_pelts = 'Vender Peles Armazenadas',
    trapper_menu = 'Menu do Trapper',
    open_trapper_shop = 'Abrir Loja do Trapper',
    close_menu = 'Fechar Menu',
},
commands = {
    var = 'o texto vai aqui',
},
progressbar = {
    checking_pelts = 'Verificando Peles',
},
text = {
    buy_items_from_the_trapper = 'comprar itens do trapper',
    sell_store_pelts = 'vender peles armazenadas',
    trapper_shop = 'Loja do Trapper',
}
}

if GetConvar('rsg_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
