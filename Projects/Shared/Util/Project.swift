import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Util",
    platform: .iOS,
    product: .framework,
    resources: ["Resources/**"]
)
