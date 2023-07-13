//
//  AppCordinator.swift
//  CowryCalculatorTest
//
//  Created by Bakare Waris on 13/07/2023.
//

import UIKit

final class AppCoordinator: Coordinator {
    
    private var window: UIWindow
    private var navigationController = UINavigationController()
    private var userDefaults = UserDefaults.standard
    private var index = 0
    private var currentIndex = 0
    
    init(window: UIWindow) {
        self.window = window
        super.init()
        navigationController.delegate = self
    }
    
  
    
    private func setAppWindow(to viewController: UIViewController) {
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
    
    // MARK: - Overrides
    override func start() {
        navigationController = UINavigationController()
        navigationController.delegate = self
        setAppWindow(to: navigationController)
        startApp()
    }
    
    func startApp() {

        let vc = CalculatorViewController()
        navigationController.pushViewController(vc, animated: true)
    }
    
   
    
}



