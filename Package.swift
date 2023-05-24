// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "Fi22",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "Fi22", targets: ["Fi22"]),
    ],
    targets: [
        .target(
            name: "Fi22",
            dependencies: [],
            resources: [.copy("Resources")]),
        
    ]
)
