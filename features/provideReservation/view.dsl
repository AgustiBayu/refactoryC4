dynamic mobile {
    title "Provide Reservation"

    doctor -> mobileProvideReservationPage "Provide reservation using"
    mobileProvideReservationPage -> reservationController "Make API calls to [JSON/HTTPS]"
    reservationController -> reservationTable "Reads from and to [SQL/TCP]" 
    
    autolayout lr
}