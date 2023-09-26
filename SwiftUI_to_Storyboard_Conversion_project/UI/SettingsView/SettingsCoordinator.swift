//
//  SettingsCoordinator.swift
//  SwiftUI_to_Storyboard_Conversion_project
//
//  Created by Saša Brezovac on 20.09.2023..
//

import Foundation
import UIKit
import SwiftUI

final class SettingsCoordinator: Coordinator {
    private var navigationController: BaseNavigationController
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    func start() -> UIViewController {
        return createSettingsViewController()
    }
    
    private func createSettingsViewController() -> UIViewController {
        let vm = SettingsViewModel()
        let settingsView = SettingsView(viewModel: vm)
        let vc = UIHostingController(rootView: settingsView)
        navigationController.pushViewController(vc, animated: true)
        vm.onGoNext = {
            _ = self.showHomeVC()
        }
        return vc
    }
    
    private func showHomeVC() -> UIViewController {
        let vm = HomeViewModel()
        let homeView = HomeView(viewModel: vm)
        let vc = UIHostingController(rootView: homeView)
        navigationController.pushViewController(vc, animated: true)
        return vc
    }
}
