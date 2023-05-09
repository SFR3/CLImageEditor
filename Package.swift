// swift-tools-version: 5.7.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CLImageEditor",
  defaultLocalization: "en",
  platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "CLImageEditor",
      targets: ["CLImageEditor"]),
  ],
  targets: [
    .target(
      name: "CLImageEditor",
      path: "Sources/CLImageEditor/",
      publicHeadersPath: ".",
      cSettings: [
        .headerSearchPath("."),
      ],
      linkerSettings: [
        .linkedFramework("UIKit", .when(platforms: [.iOS])),
        .linkedFramework("CoreGraphics", .when(platforms: [.iOS])),
        .linkedFramework("Accelerate", .when(platforms: [.iOS])),
        .linkedFramework("CoreImage", .when(platforms: [.iOS]))
      ]
    )
  ],
  swiftLanguageVersions: [.v5]
)
