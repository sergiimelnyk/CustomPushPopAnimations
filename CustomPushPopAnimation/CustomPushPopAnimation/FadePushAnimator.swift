//
//  FadePushAnimator.swift
//  CustopPushPopAnimation
//
//  Created by Sergii Melnyk on 9/25/19.
//  Copyright © 2019 Sergii Melnyk. All rights reserved.
//

import UIKit

final class FadePushAnimator: Animator {
    
    override func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {

        guard let toViewController = transitionContext.viewController(forKey: .to) else {
            return
        }

        transitionContext.containerView.addSubview(toViewController.view)
        toViewController.view.alpha = 0

        let duration = transitionDuration(using: transitionContext)
        
        UIView.animate(withDuration: duration, animations: {
            toViewController.view.alpha = 1
        }) { _ in
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        }
    }
}
