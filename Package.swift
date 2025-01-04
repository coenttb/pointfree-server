// swift-tools-version:5.10.1

import Foundation
import PackageDescription

extension String {
    static let pointfreeServer: Self = "PointFree Server"
}

extension Target.Dependency {
    static var pointfreeServer: Self { .target(name: .pointfreeServer) }
}

extension Target.Dependency {
    static var async_http_client: Self { .product(name: "AsyncHTTPClient", package: "async-http-client") }
    static var dependencies: Self { .product(name: "Dependencies", package: "swift-dependencies") }
    static var logging: Self { .product(name: "Logging", package: "swift-log") }
    static var nio: Self { .product(name: "NIO", package: "swift-nio") }
    static var pointfreeWeb: Self { .product(name: "PointFree Web", package: "pointfree-web") }
}

extension [Package.Dependency] {
    static var `default`: Self {
        [
            .package(url: "https://github.com/apple/swift-nio", from: "2.61.0"),
            .package(url: "https://github.com/apple/swift-nio-extras.git", from: "1.0.0"),
            .package(url: "https://github.com/apple/swift-log", from: "1.5.0"),
            .package(url: "https://github.com/coenttb/pointfree-web", branch: "main"),
            .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.1.5"),
            .package(url: "https://github.com/swift-server/async-http-client", from: "1.19.0"),
        ]
    }
}

let package = Package(
    name: "pointfree-server",
    platforms: [
        .macOS(.v14),
        .iOS(.v16)
    ],
    products: [
        .library(name: .pointfreeServer, targets: [.pointfreeServer]),
    ],
    dependencies: .default,
    targets: [
        .target(
            name: .pointfreeServer,
            dependencies: [
                .async_http_client,
                .dependencies,
                .pointfreeWeb,
                .nio,
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
