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
            url: "https://github.com/AbdullahElesnawy/clouding-ios-sdk/releases/download/1.0.0/ChatWidgetSDK-1.0.0.xcframework.zip",
            checksum: "80cc945cd5ebe363ff80047f81db2b33f7d6acc38d6aff47fbe0988b2185894b"
        )
    ]
)
