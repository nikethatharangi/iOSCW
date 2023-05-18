//
//  SceneDelegate.swift
//  iOSCW
//
//  Created by Niketha Tharangi on 2023-05-14.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let navigationController = UINavigationController(rootViewController: ViewController())


        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = navigationController
        self.window = window
        self.window?.makeKeyAndVisible()
        
//        if let windowScene = scene as? UIWindowScene {
//                    let window = UIWindow(windowScene: windowScene)
//
//                    let currentViewController = LoginViewController()
//                    let navigationController = UINavigationController(rootViewController: currentViewController)
//
//                    window.rootViewController = navigationController
//
//                    self.window = window
//                    window.makeKeyAndVisible()
//                }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }


}

