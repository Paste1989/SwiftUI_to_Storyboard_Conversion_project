//
//  SceneDelegate.swift
//  SwiftUI_to_Storyboard_Conversion_project
//
//  Created by Saša Brezovac on 19.09.2023..
//

import SwiftUI

class SceneDelegate: NSObject, UIWindowSceneDelegate {
    
    var window: UIWindow?
    var rootCoordinator: Coordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        print("SceneDelegate is connected!")
        
        ///coordinator
        rootCoordinator = RootCoordinator()
        window?.rootViewController = rootCoordinator?.start()
        window?.makeKeyAndVisible()
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
