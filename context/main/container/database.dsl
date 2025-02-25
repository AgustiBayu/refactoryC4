database = container "Database" {
    description "Stores all data for the application."
    technology "PostgreSQL"

    bookTable = component "Database" {
        description "Stores book data."
    }
}