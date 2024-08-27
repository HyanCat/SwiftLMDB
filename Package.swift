// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "SwiftLMDB",
    products: [
        .library(name: "SwiftLMDB", targets: ["SwiftLMDB"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/swiftlang/swift-lmdb.git", branch: "swift-5.10.1-RELEASE")
    ],

    targets: [
        .target(name: "SwiftLMDB", dependencies: [.product(name: "CLMDB", package: "swift-lmdb")], path: "Sources"),
        .testTarget(name: "SwiftLMDBTests", dependencies: ["SwiftLMDB"]),
    ]
)
