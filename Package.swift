// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "RxSwiftExt",
    platforms: [
        .iOS(.v12), .tvOS(.v12), .macOS(.v10_13), .watchOS(.v8), .visionOS(.v1)
    ],
    products: [
        .library(name: "RxSwiftExt", targets: ["RxSwiftExt"]),
    ],
    dependencies: [
        .package(url: "https://github.com/RobertDresler/RxSwift.git", branch: "visionOS-compilability"),

    ],
    targets: [
        .target(name: "RxSwiftExt", dependencies: ["RxSwift", .product(name: "RxCocoa", package: "RxSwift")], path: "Source"),
        .testTarget(name: "RxSwiftExtTests", dependencies: ["RxSwiftExt", .product(name: "RxTest", package: "RxSwift")], path: "Tests"),
    ],
    swiftLanguageVersions: [.v5]
)
