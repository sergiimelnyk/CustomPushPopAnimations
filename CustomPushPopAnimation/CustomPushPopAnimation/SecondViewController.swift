//
//  SecondViewController.swift
//  CustopPushPopAnimation
//
//  Created by Sergii Melnyk on 9/25/19.
//  Copyright © 2019 Sergii Melnyk. All rights reserved.
//

import UIKit

final class SecondViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.titleLabel?.numberOfLines = 2
        button.titleLabel?.textAlignment = .center
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let navigationController = navigationController as? NavigationController else {
            return
        }
        
        navigationController.setupCustomAnimations()
    }
    
    @IBAction private func showViewControllerAction(_ sender: Any) {
        
        guard let navigationController = navigationController as? NavigationController else {
            return
        }
        
//        navigationController.resetCustomAnimations()
        
        let thirdViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController")
        navigationController.pushViewController(thirdViewController, animated: true)
    }
}
