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

    !include container/reservasi.dsl

    !include container/api.dsl
}

// setup contex
notificationSystem = softwareSystem "Sistem Notifikasi" {
    description "Mengirimkan notifikasi kepada pengguna dan admin"
}

reservation = softwareSystem "Reservation" {
    description "Menampilkan list reservasi dan dapat dikelola oleh Super Admin seperti Booking, Reschedule dan Cancel Reservation"
}

payment = softwareSystem "Payment" {
    description "Mengelola pembayaran"
}

mainSystem -> reservation "Menampilkan list reservasi dan dapat dikelola oleh Super Admin seperti Booking, Reschedule dan Cancel Reservation"
doctor -> reservation "Menyediakan slot reservasi, menyetujui reservasi, memberikan konsultasi dan resep obat."
notificationSystem -> user "Menerima notifikasi"
notificationSystem -> admin "Menerima notifikasi"
notificationSystem -> superAdmin "Menerima notifikasi"
notificationSystem -> doctor "Menerima notifikasi"
mainSystem -> notificationSystem "Mengirimkan notifikasi ke sistem utama"
superAdmin -> mainSystem "Mengelola sistem dan hak akses"
user -> mainSystem "Menggunakan layanan aplikasi"
doctor -> mainSystem "Memberikan konsultasi melalui aplikasi"
admin -> mainSystem "Mengelola data master, jadwal, slot reservasi, dan pembayaran"
mainSystem -> payment "Mengelola pembayaran"
user -> payment "Melakaukan transaksi"

// setup container
superAdmin -> web "Mengelola semua data master dan hak akses pengguna"
superAdmin -> mobile "Mengelola aplikasi mobile"
superAdmin -> backend "Mengelola service backend"
superAdmin -> database "Mengelola database" 
admin -> web "Mengelola data master"
doctor -> mobile "Menyediakan slot reservasi, menyetujui reservasi, memberikan konsultasi dan resep obat"
notifikasi -> user "Menerima notifikasi"
notifikasi -> admin "Menerima notifikasi"
notifikasi -> superAdmin "Menerima notifikasi"
notifikasi -> doctor "Menerima notifikasi"
backend -> reservasi "Mengelola komunikasi antar sistem dan integrasi layanan"
backend -> api "Menangani permintaan data"
backend -> notifikasi "Mengirimkan event notifikasi"
mobile -> api "mengambil data dari api"
