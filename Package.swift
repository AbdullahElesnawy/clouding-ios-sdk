// swift-tools-version: 5.9
// Distribution manifest for the closed-source ChatWidgetSDK binary.
// The zip is attached to this repo's GitHub Release for the same version;
// SwiftPM downloads it and verifies it against the checksum below.
import PackageDescription

let package = Package(
    name: "ChatWidgetSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "ChatWidgetSDK", targets: ["ChatWidgetSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "ChatWidgetSDK",
            url: "https://github.com/AbdullahElesnawy/clouding-ios-sdk/releases/download/v1.0.9/ChatWidgetSDK-v1.0.9.xcframework.zip",
            checksum: "bb1ad23a2231220bb7241239da970111b43942c2026993808308543b8573ab38"
        )
    ]
)
