dynamic mobile {
    title "Make Payment"

    user -> mobilePaymentPage "Make payments using"
    mobilePaymentPage -> paymentController "Make API calls to [JSON/HTTPS]"
    paymentController -> payment "Manage payment, billing, and validation using"
    payment -> user "Manage payment, billing, and validation to"
    paymentController -> paymentTable "Reads from and to [SQL/TCP]"

    autolayout lr
}
