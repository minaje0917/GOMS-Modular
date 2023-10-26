import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project.makeModule(
    name: "BaseDomain",
    platform: .iOS,
    product: .staticFramework ,
    dependencies: [
        .Core.CoreKeychain
    ]
)
