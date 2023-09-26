//
//  HomeCoordinator.swift
//  SwiftUI_to_Storyboard_Conversion_project
//
//  Created by Saša Brezovac on 20.09.2023..
//

import Foundation
import UIKit
import SwiftUI

final class HomeCoordinator: Coordinator {
    private var navigationController: BaseNavigationController = BaseNavigationController()
    
    func start() -> UIViewController {
        return createHomeController()
    }
    
    private func createHomeController() -> UIViewController {
        let vm = HomeViewModel()
        let homeView = HomeView(viewModel: vm)
        let vc = UIHostingController(rootView: homeView)
        vm.onSettingsTapped = {
            _ = self.createSetttingsView()
        }
        navigationController.pushViewController(vc, animated: true)
        return navigationController
    }
    
    private func createSetttingsView() -> UIViewController {
///1. with using new Coordinator
        let settingsCoordinator = SettingsCoordinator(navigationController: navigationController)
        return settingsCoordinator.start()
        
///2. without using new Coordinator
//        let vm = SettingsViewModel()
//        let settingsView = SettingsView(viewModel: vm)
//        let vc = UIHostingController(rootView: settingsView)
//        navigationController.pushViewController(vc, animated: true)
//        return navigationController
    }
}
