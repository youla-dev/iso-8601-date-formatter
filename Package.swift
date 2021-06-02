// swift-tools-version:5.3

import PackageDescription
let package = Package(
    name: "ISO8601DateFormatter",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ISO8601DateFormatter",
            targets: ["ISO8601DateFormatter"])
    ],
    targets: [
        .binaryTarget(
            name: "ISO8601DateFormatter",
            path: "ISO8601ForCocoa/ISO8601.xcframework")
    ])
