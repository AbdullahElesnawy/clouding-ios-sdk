# ChatWidgetSDK for iOS

AI chat widget for iOS apps — SwiftUI, zero third-party dependencies, iOS 15+.
This repo is the Swift Package Manager distribution manifest; the SDK ships as a
compiled XCFramework attached to each release.

## Install

**Xcode:** File ▸ Add Package Dependencies… ▸ paste this repo URL ▸ add `ChatWidgetSDK`.

**Package.swift:**

```swift
dependencies: [
    .package(url: "https://github.com/AbdullahElesnawy/clouding-ios-sdk.git", from: "1.0.0")
],
targets: [
    .target(name: "MyApp", dependencies: [
        .product(name: "ChatWidgetSDK", package: "clouding-ios-sdk")
    ])
]
```

Voice notes require `NSMicrophoneUsageDescription` in your app's Info.plist.

## Quick start

```swift
import SwiftUI
import ChatWidgetSDK

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
                .task { await ChatWidget.initialize(.init(apiKey: "acp_your_channel_key")) }
        }
    }
}

struct RootView: View {
    @ObservedObject private var state = ChatWidget.state

    var body: some View {
        ZStack {
            // your app…
            ChatWidgetLauncher { ChatWidget.open() }
                .padding(20)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
        }
        .sheet(isPresented: $state.isOpen) { ChatWidgetView() }
    }
}
```

See the SDK's INTEGRATION guide for the full configuration surface
(theme, agent identity, welcome quick actions, typing indicator, strings, callbacks).
