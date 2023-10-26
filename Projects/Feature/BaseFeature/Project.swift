import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project.makeModule(
    name: "BaseFeature",
    platform: .iOS,
    product: .staticFramework ,
    dependencies: [
        .Shared.DesignSystem,
        .Shared.ThirdPartyLib
    ]
)
