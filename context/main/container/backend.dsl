backend = container "Backend" {
    description "Backend services for the application."
    technology "Golang Raiden"
    
   bookController = component "Backend" {
       description "Controller for book related operations."
    }
    authService = component "Autentikasi service" {
        description "Book page for the mobile app."
    }

    notifService = component "Notifikasi service" {
        description "Book page for the mobile app."
    }

    paymentService = component "Payment service" {
        description "Book page for the mobile app."
    }

    bookController -> authService
    bookController -> notifService
    bookController -> paymentService
}