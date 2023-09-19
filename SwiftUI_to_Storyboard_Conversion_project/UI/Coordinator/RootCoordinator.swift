//
//  RootCoordinator.swift
//  SwiftUI_to_Storyboard_Conversion_project
//
//  Created by Saša Brezovac on 19.09.2023..
//

import Foundation
import UIKit

final class RootCoordinator: Coordinator {
    let navigationController = UINavigationController()
    
    func start() -> UIViewController {
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        navigationController.pushViewController(vc, animated: true)
        return vc
    }
    
    
}
