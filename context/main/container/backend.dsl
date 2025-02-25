backend = container "Backend" {
    description "Backend services for the application."
    technology "Golang Raiden"
    
     paymentController = component "Payment Controller" {
        description "Controller for payment related operations."
        technology "Golang and Raiden Framework"
    }

    doctorDataController = component "Doctor Data Controller"{
        description "Controller for doctor data related operations"
        technology "Golang and Raiden Framework"
    }

    masterDataFaskesController = component "Master Data Faskes Controller"{
        description "Controller for master data Faskes related operations"
    }
    
    reservationController = component "Reservation Controller" {
        description "Controller for reservation related operations."
        technology "Golang and Raiden Framework"
    }
}