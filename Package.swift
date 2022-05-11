// swift-tools-version:5.3

import PackageDescription
import Foundation

let SCADE_SDK = ProcessInfo.processInfo.environment["SCADE_SDK"] ?? ""

let package = Package(
    name: "GridLayout",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "GridLayout",
            type: .static,
            targets: [
                "GridLayout"
            ]
        )
    ],
    dependencies: [
      
    ],
    targets: [
        .target(
            name: "GridLayout",
            dependencies: [],
            exclude: ["main.page"],
            swiftSettings: [
                .unsafeFlags(["-F", SCADE_SDK], .when(platforms: [.macOS, .iOS])),
                .unsafeFlags(["-I", "\(SCADE_SDK)/include"], .when(platforms: [.android])),
            ]
        )
    ]
)