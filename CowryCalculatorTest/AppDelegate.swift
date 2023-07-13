//
//  AppDelegate.swift
//  CowryCalculatorTest
//
//  Created by Bakare Waris on 13/07/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var time: Date?
    private var appCoordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setupCoordinator()
        return true
    }

    // MARK: - Initiatialize coordinator
    private func setupCoordinator() {
        let appWindow = UIWindow(frame: UIScreen.main.bounds)
        appCoordinator = AppCoordinator(window: appWindow)
        window = appWindow
        appCoordinator?.start()
    }


}

