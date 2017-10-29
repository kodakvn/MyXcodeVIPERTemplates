//
//  BaseWireFrame.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

protocol BaseWireFrameInterface {
    func dismissInterface()
    func dismissInterface(_ animated: Bool)
    func popInterface()
    func popInterface(_ animated: Bool)
}

class BaseWireFrame: NSObject {
    weak var basePresentedViewController: UIViewController?
    
    func getInterfaceFromStoryboard(_ name: String, presentInterface identifier: String) -> BaseViewController {
        let storyBoard = UIStoryboard(name: name, bundle: Bundle.main)
        let viewController = storyBoard.instantiateViewController(withIdentifier: identifier) as! BaseViewController
        
        return viewController
    }
    
    func getInterfaceFromStoryboardEx(_ name: String, presentInterface identifier: String) -> UIViewController {
        let storyBoard = UIStoryboard(name: name, bundle: Bundle.main)
        let viewController = storyBoard.instantiateViewController(withIdentifier: identifier)
        
        return viewController
    }
    
    func getInterfaceFromStoryboardForTableView(_ name: String, presentInterface identifier: String) -> BaseTableViewController {
        let storyBoard = UIStoryboard(name: name, bundle: Bundle.main)
        let viewController = storyBoard.instantiateViewController(withIdentifier: identifier) as! BaseTableViewController
        
        return viewController
    }
}

extension BaseWireFrame: BaseWireFrameInterface {
    func dismissInterface() {
        dismissInterface(true)
    }
    
    func dismissInterface(_ animated: Bool) {
        DispatchQueue.main.async {
            self.basePresentedViewController?.dismiss(animated: animated, completion: nil)
        }
    }
    
    func popInterface() {
        popInterface(true)
    }
    
    func popInterface(_ animated: Bool) {
        DispatchQueue.main.async {
            _ = self.basePresentedViewController?.navigationController?.popViewController(animated: animated)
        }
    }
}

// Animation
extension BaseWireFrame: UIViewControllerTransitioningDelegate {
    
}
