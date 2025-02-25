database = container "Database" {
    description "Stores all data for the application."
    technology "PostgreSQL"

   paymentTable = component "Payment Table" {
        description "Stores payment data."
        technology "PostgreSQL"
    }

    doctorTable = component "Doctor Table" {
        description "Stores doctor data"
        technology "PostgreSQL"
    }

    masterFaskesTable = component "Master Faskes Table" {
        description "Stores master data Faskes"
        technology "PostgreSQL"
    }

    reservationTable = component "Reservation Table" {
        description "Stores reservation data."
        technology "PostgreSQL"
    }
}