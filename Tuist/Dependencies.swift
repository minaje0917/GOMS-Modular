import ProjectDescription

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager: SwiftPackageManagerDependencies(
        [
            .remote(
                url: "https://github.com/ReactiveX/RxSwift",
                requirement: .exact("6.6.0")
            ),
            .remote(
                url: "https://github.com/Moya/Moya",
                requirement: .exact("15.0.3")
            ),
            .remote(
                url: "https://github.com/SnapKit/SnapKit",
                requirement: .exact("5.6.0")
            ),
            .remote(
                url: "https://github.com/devxoul/Then",
                requirement: .exact("3.0.0")
            ),
            .remote(
                url: "https://github.com/GSM-MSG/GAuthSignin-Swift",
                requirement: .exact("0.0.3")
            ),
            .remote(
                url: "https://github.com/RxSwiftCommunity/RxFlow",
                requirement: .exact("2.13.0")
            ),
            .remote(
                url: "https://github.com/ReactorKit/ReactorKit.git",
                requirement: .exact("3.2.0")
            )
        ],
        productTypes: [
            "ReactorKit": .framework,
            "GAuthSignin": .framework
        ]
    ),
    platforms: [.iOS]
)
