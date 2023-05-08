// swift-tools-version: 5.8
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
      dependencies: [],
      path: "Sources/CLImageEditor",
      resources: [
        .process("../Support/CLImageEditor.bundle")
      ],
      publicHeadersPath: ".",
      cSettings: [
        .headerSearchPath("."),
        .headerSearchPath("../Support"),
        .headerSearchPath("../Support/ImageTools"),
        .headerSearchPath("../Support/Utils"),
        .headerSearchPath("../Support/ViewController")
      ]
    )
  ],
  swiftLanguageVersions: [.v5]
)

