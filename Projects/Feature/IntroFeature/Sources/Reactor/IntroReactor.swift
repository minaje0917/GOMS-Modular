import Foundation
import RxFlow
import RxCocoa
import RxSwift
import Moya
import ReactorKit

class IntroReactor: Reactor, Stepper{
    // MARK: - Properties
    var initialState: State

    var steps: PublishRelay<Step> = .init()

    // MARK: - Reactor
    
    enum Action {
        case gauthSigninCompleted(code: String)
    }

    enum Mutation {

    }

    struct State {

    }

    // MARK: - Init
    init(initialState: State) {
        self.initialState = State()
    }
}

// MARK: - Mutate
extension IntroReactor {
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case let .gauthSigninCompleted(code):
            return gauthSigninCompleted(code: code)
        }
    }
}

// MARK: - Method
private extension IntroReactor {
    private func gauthSigninCompleted(code: String) -> Observable<Mutation> {
        return .empty()
    }
}
