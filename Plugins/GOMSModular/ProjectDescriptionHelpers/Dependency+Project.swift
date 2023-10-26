import ProjectDescription

extension TargetDependency {
    public enum Feature {}
    public enum Shared {}
    public enum Core {}
    public enum Domain {}
}

public extension TargetDependency.Feature {
    static let BaseFeature = TargetDependency.project(
        target: "BaseFeature",
        path: .relativeToRoot("Projects/Feature/BaseFeature")
    )
}

public extension TargetDependency.Shared {
    static let DesignSystem = TargetDependency.project(
        target: "DesignSystem",
        path: .relativeToRoot("Projects/Shared/DesignSystem")
    )
}

public extension TargetDependency.Core {
    static let CoreKeychain = TargetDependency.project(
        target: "CoreKeychain",
        path: .relativeToRoot("Projects/Core/CoreKeychain")
    )
}

public extension TargetDependency.Domain {
    static let BaseDomain = TargetDependency.project(
        target: "BaseDomain",
        path: .relativeToRoot("Projects/Domain/BaseDomain")
    )
}

