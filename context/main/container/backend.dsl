backend = container "Backend / API" {
    description "Backend services for the application."
    technology "Golang Raiden"
    
   bookController = component "Backend" {
       description "Controller for book related operations."
    }
}