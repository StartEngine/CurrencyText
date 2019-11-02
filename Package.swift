// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CurrencyText",
    products: [
        .library(
            name: "CurrencyText",
            targets: ["CurrencyFormatter", "CurrencyText"]),
    ],
    targets: [
        // Can be imported and used to have access to `CurrencyFormatter`.
        // Useful to format and represent currency values.
        .target(
            name: "CurrencyFormatter",
            dependencies: [],
            path: "Sources/Formatter"),
        // Can be imported and used to have access to both `CurrencyUITextFieldDelegate` and `CurrencyFormatter`.
        // Useful to format text field inputs as currency, based on a the settings of a CurrencyFormatter.
        .target(
            name: "CurrencyText",
            dependencies: ["CurrencyFormatter"],
            path: "Sources/TextField"),
        .testTarget(
            name: "Tests",
            dependencies: ["CurrencyFormatter", "CurrencyText"],
            path: "Tests"),
    ]
)
