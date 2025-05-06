// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ToxCore",
    platforms: [
        .macOS(.v11),
        .iOS(.v13)
    ],
    products: [
        .library(name: "ToxCore",
                 targets: ["ToxCore"]),
    ],
    targets: [
        .target(
            name: "ToxCore",
            dependencies: ["libsodium"],
            path: "toxcore",
            publicHeadersPath: "."
        ),
        .systemLibrary(
                name: "libsodium",
                pkgConfig: "libsodium",
                providers: [
                    .brew(["libsodium"])
                ]),
    ]
)
