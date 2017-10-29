//
//  BasePresenter.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol BasePresenterInterface {
    func viewDidLoad()
    func viewWillAppear()
    func viewWillDisappear()
    func viewDidDisappear()
    func viewDidAppeared()
}

class BasePresenter: NSObject {
    weak var baseView: BaseViewInterface?
    var baseWireFrame: BaseWireFrameInterface?
}


extension BasePresenter: BasePresenterInterface {
    
    func viewDidLoad() {

    }
    
    func viewWillAppear() {
        
    }
    
    func viewWillDisappear() {
        
    }
    
    func viewDidDisappear() {

    }
    
    func viewDidAppeared() {
        
    }
    
}
