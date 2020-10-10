// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "API",
    products: [
        .library(name: "API", targets: ["API"])
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "API", dependencies: [
        ], path: "Sources")
    ]
)
