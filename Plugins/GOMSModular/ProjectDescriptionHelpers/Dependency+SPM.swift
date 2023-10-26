import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let RxSwift = TargetDependency.external(name: "RxSwift")
    static let RxCocoa = TargetDependency.external(name: "RxCocoa")
    static let RxMoya = TargetDependency.external(name: "RxMoya")
    static let SnapKit = TargetDependency.external(name: "SnapKit")
    static let RxFlow = TargetDependency.external(name: "RxFlow")
    static let Then = TargetDependency.external(name: "Then")
    static let ReactorKit = TargetDependency.external(name: "ReactorKit")
    static let GAuthSignin = TargetDependency.external(name: "GAuthSignin")
}
