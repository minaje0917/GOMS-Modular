import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project.makeModule(
    name: "ThirdPartyLib",
    platform: .iOS,
    product: .framework,
    dependencies: [
        .SPM.Then,
        .SPM.RxCocoa,
        .SPM.RxFlow,
        .SPM.RxMoya,
        .SPM.RxSwift,
        .SPM.SnapKit,
        .SPM.ReactorKit,
        .SPM.GAuthSignin
    ]
)
