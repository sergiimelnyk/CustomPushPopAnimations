//
//  FadePopAnimator.swift
//  CustopPushPopAnimation
//
//  Created by Sergii Melnyk on 9/25/19.
//  Copyright © 2019 Sergii Melnyk. All rights reserved.
//

import UIKit

final class FadePopAnimator: Animator {
    
    override func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {

        guard let fromViewController = transitionContext.viewController(forKey: .from),
            let toViewController = transitionContext.viewController(forKey: .to) else {
            return
        }

        transitionContext.containerView.insertSubview(toViewController.view, belowSubview: fromViewController.view)

        let duration = transitionDuration(using: transitionContext)
        
        UIView.animate(withDuration: duration, animations: {
            fromViewController.view.alpha = 0
        }) { _ in
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        }
    }
}
