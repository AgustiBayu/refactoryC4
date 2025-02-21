api = container "API Application" {
        description "Menangani permintaan data"
        technology "Golang Raiden"

        apiBookPage = component "Api application" {
        description "Book page for the mobile app."
    }

    controllBookPage = component "Controller" {
        description "Book page for the mobile app."
    }

    serviceBookPage = component "Service" {
        description "Book page for the mobile app."
    }

    repositoryBookPage = component "Repository" {
        description "Book page for the mobile app."
    }

    apiBookPage -> controllBookPage
    apiBookPage -> serviceBookPage
    apiBookPage -> repositoryBookPage
}