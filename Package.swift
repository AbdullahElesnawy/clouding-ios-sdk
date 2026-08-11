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
            url: "https://github.com/AbdullahElesnawy/clouding-ios-sdk/releases/download/1.0.3/ChatWidgetSDK-1.0.3.xcframework.zip",
            checksum: "8a3ed0d7afd81124abfcdadb20ad3a6a497c58b6f099bd045428f50d5bfc2f25"
        )
    ]
)
