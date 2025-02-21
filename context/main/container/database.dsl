database = container "Database" {
    description "Stores all data for the application."
    technology "PostgreSQL"

    bookTable = component "Database" {
        description "Stores book data."
    }

    userTable = component "User table" {
        description "Stores book data."
    }

    paymentTable = component "Payment table" {
        description "Stores book data."
    }

    bookingTable = component "Booking table" {
        description "Stores book data."
    }

    bookTable -> userTable
    bookTable -> paymentTable
    bookTable -> bookingTable
}