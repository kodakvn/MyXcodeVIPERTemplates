//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___FILEBASENAMEASIDENTIFIER___PresenterInterface: BasePresenterInterface {

}

class ___FILEBASENAMEASIDENTIFIER___Presenter: BasePresenter {
    fileprivate weak var view: ___FILEBASENAMEASIDENTIFIER___ViewInterface?
    fileprivate var wireFrame: ___FILEBASENAMEASIDENTIFIER___WireFrameInterface?
    var interactor: ___FILEBASENAMEASIDENTIFIER___InteractorInput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = baseView as? ___FILEBASENAMEASIDENTIFIER___ViewInterface
        wireFrame = baseWireFrame as? ___FILEBASENAMEASIDENTIFIER___WireFrameInterface
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
    }
}

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___PresenterInterface {
    
}

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___InteractorOutput {
    
}
