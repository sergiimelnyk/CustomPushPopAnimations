//
//  NavigationController.swift
//  CustopPushPopAnimation
//
//  Created by Sergii Melnyk on 9/25/19.
//  Copyright © 2019 Sergii Melnyk. All rights reserved.
//

import UIKit

final class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupCustomAnimations()
    }
}

extension NavigationController: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController,
                              animationControllerFor operation: UINavigationController.Operation,
                              from fromVC: UIViewController,
                              to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        switch operation {
        case .push:
            return FadePushAnimator()
        case .pop:
            return FadePopAnimator()
        default:
            return nil
        }
    }
    
    func setupCustomAnimations() {
        
        interactivePopGestureRecognizer?.delegate = nil
        interactivePopGestureRecognizer?.isEnabled = true
        delegate = self
    }
    
    func resetCustomAnimations() {
        
        delegate = nil
    }
}
