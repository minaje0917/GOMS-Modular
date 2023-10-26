import UIKit
import RxSwift
import RxCocoa
import RxFlow
import Moya

class BaseReactor{
    var disposeBag = DisposeBag()
    var steps = PublishRelay<Step>()
}
