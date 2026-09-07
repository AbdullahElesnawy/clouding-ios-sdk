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
            url: "https://github.com/AbdullahElesnawy/clouding-ios-sdk/releases/download/v1.0.6/ChatWidgetSDK-v1.0.6.xcframework.zip",
            checksum: "3ffb3bd7d56d5aef04ec28ec9e1402dd51b9bcee411976efaaefa91e9fb84a1b"
        )
    ]
)
