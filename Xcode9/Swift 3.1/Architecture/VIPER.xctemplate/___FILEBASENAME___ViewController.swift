//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___VARIABLE_moduleName___ViewInterface: class, BaseViewInterface {
    
}

class ___VARIABLE_moduleName___ViewController: BaseViewController {
    fileprivate var presenter: ___VARIABLE_moduleName___PresenterInterface?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = basePresenter as? ___VARIABLE_moduleName___PresenterInterface
        presenter?.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter?.viewWillAppear()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        presenter?.viewDidDisappear()
    }
}

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ViewInterface {
    
}
