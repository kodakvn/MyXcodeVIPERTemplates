//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___VARIABLE_moduleName___PresenterInterface: BasePresenterInterface {

}

class ___VARIABLE_moduleName___Presenter: BasePresenter {
    fileprivate weak var view: ___VARIABLE_moduleName___ViewInterface?
    fileprivate var wireFrame: ___VARIABLE_moduleName___WireFrameInterface?
    var interactor: ___VARIABLE_moduleName___InteractorInput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = baseView as? ___VARIABLE_moduleName___ViewInterface
        wireFrame = baseWireFrame as? ___VARIABLE_moduleName___WireFrameInterface
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
    }
}

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___PresenterInterface {
    
}

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___InteractorOutput {
    
}
