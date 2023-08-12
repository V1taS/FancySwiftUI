// swift-tools-version: 5.7
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
    .package(url: "https://github.com/V1taS/FancyStyle.git", from: "1.4.0"),
  ],
  targets: [
    .target(
      name: "FancySwiftUI",
      dependencies: [
        .product(name: "FancyStyle", package: "FancyStyle")
      ]
    ),
    .testTarget(
      name: "FancySwiftUITests",
      dependencies: ["FancySwiftUI"]
    ),
  ]
)
