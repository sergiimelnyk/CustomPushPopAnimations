//
//  FirstViewController.swift
//  CustopPushPopAnimation
//
//  Created by Sergii Melnyk on 9/25/19.
//  Copyright © 2019 Sergii Melnyk. All rights reserved.
//

import UIKit

final class FirstViewController: UIViewController {
    
    @IBAction private func showViewControllerAction(_ sender: Any) {
        
        let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
