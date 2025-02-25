dynamic mobile {
    title "Manage Master Data Faskes"

    admin -> webMasterDataFaskesPage "Manage master data Faskes using"
    webMasterDataFaskesPage -> masterDataFaskesController "Make API calls to [JSON/HTTPS]"
    masterDataFaskesController -> masterFaskesTable "Reads from and to [SQL/TCP]"

    autolayout lr
}