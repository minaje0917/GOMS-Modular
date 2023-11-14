import UIKit
import RxCocoa
import RxSwift
import Then
import DesignSystem

open class BaseViewController<T>: UIViewController {
    public let reactor: T
    public var disposeBag = DisposeBag()
    public let bounds = UIScreen.main.bounds
    
    public init(_ reactor: T) {
        self.reactor = reactor
        super .init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = DesignSystemAsset.Color.gomsBlack.color
        view.backgroundColor = DesignSystemAsset.Color.bg.color
        self.navigationItem.backButtonTitle = ""
        addView()
        setLayout()
        bind(reactor: reactor)
    }
    
    open func addView() {
        
    }
    
    open func setLayout() {
        
    }
    
    open func bind(reactor: T) {
        bindView(reactor: reactor)
        bindAction(reactor: reactor)
        bindState(reactor: reactor)
    }
    
    open func bindView(reactor: T) {}
    open func bindAction(reactor: T) {}
    open func bindState(reactor: T) {}
    
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
