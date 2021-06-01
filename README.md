# SafariActivity

[![Version](https://img.shields.io/github/v/tag/Ceylo/SafariActivity)](https://github.com/Ceylo/SafariActivity/releases)
[![License](https://img.shields.io/badge/license-BSD-lightgrey)](https://github.com/Ceylo/SafariActivity/blob/master/LICENSE.md)
[![Platform](https://img.shields.io/badge/platform-iOS-lightgrey)](https://github.com/Ceylo/SafariActivity)

`SafariActivity` is a `UIActivity` subclass that provides an "Open In Safari" action to a `UIActivityViewController`.

<img src="https://github.com/Ceylo/SafariActivity/raw/master/Media/screenshot.png" width="300">

## Installation

### SPM

SafariActivity is available through the [Swift Package Manager](https://swift.org/package-manager/). To install
it, simply add the following line to your `Package.swift`:

    dependencies: [
        .package(url: "https://github.com/Ceylo/SafariActivity.git", from: "2.0.0")
    ]

## Usage

Simply create an instance of `SafariActivity` and pass that object into the applicationActivities array when creating a `UIActivityViewController`.
See the Xcode project in [Example](https://github.com/Ceylo/SafariActivity/tree/master/Example) for an example.

### Swift

```swift
let url = URL(string: "https://github.com/")!
let activityViewController =
    UIActivityViewController(activityItems: [url],
                             applicationActivities: [SafariActivity()])
```

Note that you can include the activity in any `UIActivityViewController` and it will only be shown to the user if there is a URL in the activity items.

## Credits

This package is a fork of [TUSafariActivity](https://github.com/davbeck/TUSafariActivity). It was rewritten in Swift and adapted for SPM instead of CocoaPods.
