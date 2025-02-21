mainSystem = softwareSystem "Medpoint system" {
    description "implement c4 refactory"

    // Mobile Application container
    !include container/mobile.dsl
    
    // Web Application container
    !include container/web.dsl
    
    // Backend container
    !include container/backend.dsl
    
    // Database container
    !include container/database.dsl

    !include container/notifikasi.dsl

    !include container/payment.dsl

    !include container/api.dsl
}