import UIKit
import Then
import SnapKit
import GAuthSignin
import RxCocoa
import RxSwift

import BaseFeature
import DesignSystem
import Util
 
class IntroViewController: BaseViewController<IntroReactor> {
    override func viewDidLoad() {
        super.viewDidLoad()
        gauthButtonSetUp()
    }
    
    private let logoImage = UIImageView().then {
        $0.image = UIImage(named: "colorLogo.svg")
    }
    
    private let explainText = UILabel().then {
        $0.text = "간편한 수요 외출제 서비스"
        $0.font = DesignSystemFontFamily.SFProText.bold.font(size: 20)
        $0.textColor = DesignSystemAsset.Color.gomsBlack.color
        let fullText = $0.text ?? ""
        let attribtuedString = NSMutableAttributedString(string: fullText)
        let range = (fullText as NSString).range(of: "수요 외출제")
        attribtuedString.addAttribute(
            .foregroundColor,
            value: DesignSystemAsset.Color.p10.color,
            range: range
        )
        $0.attributedText = attribtuedString
    }
    
    private let subExplainText = UILabel().then {
        $0.text = "앱으로 간편하게 GSM의 \n수요 외출제를 이용해 보세요!"
        $0.numberOfLines = 2
        $0.textAlignment = .center
        $0.font = DesignSystemFontFamily.SFProText.medium.font(size: 16)
        $0.textColor = DesignSystemAsset.Color.n20.color
    }
    
    private let gauthSignInButton = GAuthButton(auth: .signin, color: .colored, rounded: .default)
    
    private let cannotLoginText = UILabel().then {
        $0.text = "GAuth가 안된다면?"
        $0.font = DesignSystemFontFamily.SFProText.medium.font(size: 12)
        $0.textColor = DesignSystemAsset.Color.n10.color
    }
    
    private let loginWithNumberButton = UIButton().then {
        $0.setTitle(
            "인증번호로 로그인",
            for: .normal
        )
        $0.setTitleColor(
            DesignSystemAsset.Color.n10.color,
            for: .normal
        )
        $0.titleLabel?.font = DesignSystemFontFamily.SFProText.medium.font(size: 12)
    }
    
    private func gauthButtonSetUp() {
        gauthSignInButton.prepare(
            clientID: GAuthInfo.clientID,
            redirectURI: GAuthInfo.redirectURI,
            presenting: self
        ) { code in
            self.reactor.action.onNext(.gauthSigninCompleted(code: code))
        }
    }
        
    override func addView() {
        [
            logoImage,
            explainText,
            subExplainText,
            gauthSignInButton
        ].forEach{
            view.addSubview($0)
        }
    }
    
    override func setLayout() {
        logoImage.snp.makeConstraints {
            $0.top.equalToSuperview().offset((bounds.height) / 7.31)
            $0.centerX.equalToSuperview()
        }
        explainText.snp.makeConstraints {
            $0.top.equalTo(logoImage.snp.bottom).offset(34)
            $0.centerX.equalToSuperview()
        }
        subExplainText.snp.makeConstraints {
            $0.top.equalTo(explainText.snp.bottom).offset(15)
            $0.centerX.equalToSuperview()
        }
        gauthSignInButton.snp.makeConstraints {
            $0.bottom.equalTo(view.snp.bottom).inset(96)
            $0.centerX.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(26)
            $0.height.equalTo(60)
        }
        //        cannotLoginText.snp.makeConstraints {
        //            $0.top.equalTo(gauthSignInButton.snp.bottom).offset(14)
        //            $0.leading.equalToSuperview().offset((bounds.width) / 4)
        //        }
        //        loginWithNumberButton.snp.makeConstraints {
        //            $0.top.equalTo(gauthSignInButton.snp.bottom).offset(14)
        //            $0.leading.equalTo(cannotLoginText.snp.trailing).offset(8)
        //            $0.height.equalTo(cannotLoginText.snp.height)
        //        }
    }
}
