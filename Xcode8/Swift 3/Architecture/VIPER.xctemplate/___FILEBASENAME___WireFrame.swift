//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___WireFrameInterface: BaseWireFrameInterface {
    
}

class ___FILEBASENAMEASIDENTIFIER___WireFrame: BaseWireFrame {
    func presentInterfaceFromViewController(from viewController: BaseViewController, presentWireFrame wireFrame: ___FILEBASENAMEASIDENTIFIER___WireFrame) {
        guard let viewInterface = getInterfaceFromStoryboard("___FILEBASENAMEASIDENTIFIER___", presentInterface: "___FILEBASENAMEASIDENTIFIER___ViewController") as? ___FILEBASENAMEASIDENTIFIER___ViewController else {
            return
        }
        
        let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        let interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        
        viewInterface.basePresenter = presenter
        
        presenter.baseView = viewInterface
        presenter.baseWireFrame = wireFrame
        presenter.interactor = interactor
        
        basePresentedViewController = viewInterface
        
        interactor.output = presenter
        
        main_thread {
            viewController.navigationController?.pushViewController(viewInterface, animated: true)
        }
    }
}

extension ___FILEBASENAMEASIDENTIFIER___WireFrame: ___FILEBASENAMEASIDENTIFIER___WireFrameInterface {

}
