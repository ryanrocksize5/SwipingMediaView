// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwipingMediaView",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwipingMediaView",
            targets: ["SwipingMediaView"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/ryanrocksize5/SVEVideoUI.git", from: "0.3.2"),
        .package(url: "https://github.com/ryanrocksize5/SDWebImageSwiftUI.git", from: "2.0.2"),
        .package(url: "https://github.com/ryanrocksize5/Kingfisher.git", from: "7.3.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwipingMediaView",
            dependencies: [
                .product(name: "SDWebImageSwiftUI", package: "SDWebImageSwiftUI"),
                .product(name: "SVEVideoUI", package: "SVEVideoUI"),
                .product(name: "Kingfisher", package: "Kingfisher")
            ]),
        .testTarget(
            name: "SwipingMediaViewTests",
            dependencies: ["SwipingMediaView"]),
    ]
)
