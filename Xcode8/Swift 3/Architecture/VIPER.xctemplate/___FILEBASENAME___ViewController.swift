//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___ViewInterface: class, BaseViewInterface {
    
}

class ___FILEBASENAMEASIDENTIFIER___ViewController: BaseViewController {
    fileprivate var presenter: ___FILEBASENAMEASIDENTIFIER___PresenterInterface?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = basePresenter as? ___FILEBASENAMEASIDENTIFIER___PresenterInterface
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

extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___ViewInterface {
    
}
