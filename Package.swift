// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let name = "Keystore-iOS"
let package = Package(
    name: name,
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: name,
            targets: [name]),
    ],
    targets: [
        .target(
            name: name,
            path: "Keystore-iOS/Classes"
        ),
        .testTarget(
            name: "SettingsManagerTests",
            dependencies: [
                "Keystore-iOS"
            ],
            path: "Tests",
            exclude: [
                // Excluding Keystore tests
                // as swift packages don't have access to Keychain
                "Keystore"
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
