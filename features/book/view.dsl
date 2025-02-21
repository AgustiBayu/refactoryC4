dynamic mobile {
    title "Book"

    webBookPage -> apiBookPage
    mobileBookPage -> apiBookPage
    apiBookPage -> bookController
    bookController -> bookTable

    apiBookPage -> controllBookPage
    apiBookPage -> serviceBookPage
    apiBookPage -> repositoryBookPage

    bookController -> authService
    bookController -> notifService
    bookController -> paymentService

    bookTable -> userTable
    bookTable -> paymentTable
    bookTable -> bookingTable

    autolayout lr
}
