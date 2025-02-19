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
}

notificationSystem = softwareSystem "Sistem Notifikasi" {
    description "Mengirimkan notifikasi kepada pengguna dan admin"
}

mainFrameSystem = softwareSystem "Main Frame Medpoint sistem" {
    description "Mengelola komunikasi antar sistem dan integrasi layanan"
}

mainSystem -> mainFrameSystem "Mengelola komunikasi antar sistem dan integrasi layanan"
notificationSystem -> user "Menerima notifikasi"
notificationSystem -> admin "Menerima notifikasi"
notificationSystem -> superAdmin "Menerima notifikasi"
notificationSystem -> doctor "Menerima notifikasi"
mainSystem -> notificationSystem "Mengirimkan notifikasi ke sistem utama"
superAdmin -> mainSystem "Mengelola sistem dan hak akses"
user -> mainSystem "Menggunakan layanan aplikasi"
doctor -> mainSystem "Memberikan konsultasi melalui aplikasi"
admin -> mainSystem "Mengelola data master, jadwal, slot reservasi, dan pembayaran"