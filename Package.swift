// swift-tools-version:5.11

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
            name: "LipikaEngine",
            dependencies: [],
            exclude: ["Info.plist"],
            resources: [
                .copy("../../Mapping")
            ]
        ),
        .testTarget(
            name: "LipikaEngineTests",
            dependencies: ["LipikaEngine"],
            resources: [
                .copy("../../Mapping"),
                .copy("../../TestMapping")
            ]
        ),
    ]
)
