dynamic mobile {
    title "Manage Doctor Data"

    superadmin -> webDoctorDataPage "Manage doctor data using"
    webDoctorDataPage -> doctorDataController "Make API calls to [JSON/HTTPS]"
    doctorDataController -> doctorTable "Reads from and to [SQL/TCP]"

    autolayout lr
}