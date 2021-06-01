// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SafariActivity",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "SafariActivity",
            targets: ["SafariActivity"]),
    ],
    targets: [
        .target(
            name: "SafariActivity",
            dependencies: [])
    ]
)
