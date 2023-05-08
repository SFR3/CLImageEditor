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
      sources: [
        "CLImageEditor.h",
        "CLImageEditor.m",
        "_CLImageEditorViewController.h",
        "_CLImageEditorViewController.m",
        "CLImageEditorTheme.h",
        "CLImageEditorTheme.m",
        "CLImageToolInfo.h",
        "CLImageToolInfo.m",
        "CLImageToolProtocol.h",
        "Utils/UIImage+Utility.h",
        "Utils/UIImage+Utility.m",
        "Utils/UIView+Frame.h",
        "Utils/UIView+Frame.m",
        "Utils/CLToolbarMenuItem.h",
        "Utils/CLToolbarMenuItem.m",
        "Utils/CLImageEditorUtils.h",
        "Utils/CLImageEditorUtils.m",
        "ViewController/CLImageEditorAllTools.h"
      ],
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

