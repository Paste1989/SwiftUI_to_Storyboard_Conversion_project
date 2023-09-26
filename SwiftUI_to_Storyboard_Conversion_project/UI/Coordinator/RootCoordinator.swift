//
//  RootCoordinator.swift
//  SwiftUI_to_Storyboard_Conversion_project
//
//  Created by Saša Brezovac on 19.09.2023..
//

import Foundation
import UIKit
import SwiftUI

final class BaseNavigationController: UINavigationController {}

final class RootCoordinator: Coordinator {
    var childCoordinator: Coordinator?
    
    func start() -> UIViewController {
        return showHomeScreen()
    }
    
    private func showHomeScreen() -> UIViewController {
        let homeCoordinator = HomeCoordinator()
        childCoordinator = homeCoordinator
        return homeCoordinator.start()
    }
}
