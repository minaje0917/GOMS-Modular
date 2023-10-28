import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project.makeModule(
    name: "IntroFeature",
    platform: .iOS,
    product: .staticFramework ,
    dependencies: [
        .Shared.DesignSystem,
        .Shared.ThirdPartyLib,
        .Feature.BaseFeature
    ]
)
