//
//  Cordinator.swift
//  CowryCalculatorTest
//
//  Created by Bakare Waris on 13/07/2023.
//

import UIKit

typealias CoordinatorTransition = (() -> Void)

class Coordinator: NSObject, UINavigationControllerDelegate {
    
    var didFinish: ((Coordinator) -> Void)?
    
    var childCoordinators: [Coordinator] = []
    var bottomSheetHeight: CGFloat = 557
    
    override init() { }
    
    func start() {}
    
    func finish() {
        didFinish?(self)
    }
    
    // MARK: -
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) { }
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) { }
    
    // MARK: -
    func pushCoordinator(_ coordinator: Coordinator, completion: (() -> Void)? = nil) {
        
        coordinator.didFinish = { [weak self] (coordinator) in
            self?.popCoordinator(coordinator)
            completion?()
        }
        
        coordinator.start()
        childCoordinators.append(coordinator)
    }
    
    func popCoordinator(_ coordinator: Coordinator) {
        if let index = childCoordinators.firstIndex(where: { $0 === coordinator }) {
            childCoordinators.remove(at: index)
        }
    }
}



