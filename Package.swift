// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Carbon",
  platforms: [
    .iOS(.v12)
  ],
  products: [
    .library(
      name: "Carbon",
      targets: ["Carbon"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/ra1028/DifferenceKit.git", .upToNextMinor(from: "1.1.3"))
  ],
  targets: [
    .target(
      name: "Carbon",
      dependencies: ["DifferenceKit"],
      path: "Sources"
    ),
    .testTarget(
      name: "CarbonTests",
      dependencies: ["Carbon"]
    ),
  ],
  swiftLanguageVersions: [.v5]
)
