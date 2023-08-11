// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FancySwiftUI",
  platforms: [.iOS(.v13)],
  products: [
    .library(
      name: "FancySwiftUI",
      targets: ["FancySwiftUI"]),
  ],
  dependencies: [
    .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.2.0"),
  ],
  targets: [
    .target(
      name: "FancySwiftUI",
      dependencies: [
        .product(name: "Lottie", package: "lottie-ios")
      ]
    ),
    .testTarget(
      name: "FancySwiftUITests",
      dependencies: ["FancySwiftUI"]
    ),
  ]
)
