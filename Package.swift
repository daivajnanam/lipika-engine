// swift-tools-version: 5.3

import PackageDescription

let package = Package(
    name: "LipikaEngine",
    platforms: [
        .macOS(.v11),
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "LipikaEngine",
            targets: ["LipikaEngine"]
        ),
    ],
    targets: [
        .target(
            name: "LipikaEngine"
        ),
        .testTarget(
            name: "LipikaEngineTests",
            dependencies: ["LipikaEngine"]
        ),
    ]
)
