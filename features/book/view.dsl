dynamic mobile {
    title "Book"

    user -> mobileBookPage 
    // mobileBookPage -> bookController 
   // bookController -> database
   superAdmin -> web
    superAdmin -> database
    superAdmin -> backend
    backend -> database

    autolayout lr
}
