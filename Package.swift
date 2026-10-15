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
            url: "https://github.com/AbdullahElesnawy/clouding-ios-sdk/releases/download/v1.0.8/ChatWidgetSDK-v1.0.8.xcframework.zip",
            checksum: "08063c0ef3cfaf360d063d33a14dbf8dae57b65c4b77cc48218640fedd956f9e"
        )
    ]
)
