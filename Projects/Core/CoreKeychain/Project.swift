import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project.makeModule(
    name: "CoreKeychain",
    platform: .iOS,
    product: .staticFramework
)
