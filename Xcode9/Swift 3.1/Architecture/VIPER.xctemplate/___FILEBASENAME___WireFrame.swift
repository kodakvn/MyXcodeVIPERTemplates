//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_moduleName___WireFrameInterface: BaseWireFrameInterface {
    
}

class ___VARIABLE_moduleName___WireFrame: BaseWireFrame {
    func presentInterfaceFromViewController(from viewController: UIViewController, presentWireFrame wireFrame: ___VARIABLE_moduleName___WireFrame) {
        guard let viewInterface = getInterfaceFromStoryboard("___VARIABLE_moduleName___", presentInterface: "___VARIABLE_moduleName___ViewController") as? ___VARIABLE_moduleName___ViewController else {
            return
        }
        
        let presenter = ___VARIABLE_moduleName___Presenter()
        let interactor = ___VARIABLE_moduleName___Interactor()
        
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

extension ___VARIABLE_moduleName___WireFrame: ___VARIABLE_moduleName___WireFrameInterface {

}
