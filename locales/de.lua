local Translations = {
    error = {
        something_went_wrong = 'Etwas ist schiefgelaufen!',
        you_dont_have_any_pelts_to_sell = "Du hast keine Felle zum Verkaufen!"
    },
    success = {
        you_have_sold_all_your_pelts_for = 'Du hast alle deine Felle für $ verkauft',
    },
    primary = {
        stored = ' Lager',
    },
    menu = {
        open = 'Öffnen ',
        sell_stored_pelts = 'Eingelagerte Felle verkaufen',
        trapper_menu = 'Trapper-Menü',
        open_trapper_shop = 'Trapper-Shop öffnen',
        close_menu = 'Menü schließen',
    },
    commands = {
        var = 'Text hier einfügen',
    },
    progressbar = {
        checking_pelts = 'Felle überprüfen',
    },
    text = {
        buy_items_from_the_trapper = 'Kaufen Sie Gegenstände beim Trapper',
        sell_store_pelts = 'Eingelagerte Felle verkaufen',
        trapper_shop =  'Trapper-Shop',
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
