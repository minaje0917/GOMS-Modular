import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "DesignSystem",
    platform: .iOS,
    product: .framework ,
    resources: ["Resources/**"]
)
