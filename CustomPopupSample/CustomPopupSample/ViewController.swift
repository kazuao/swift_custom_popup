//
//  ViewController.swift
//  CustomPopupSample
//
//  Created by Kazunori Aoki on 2021/04/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showPopup(_ sender: Any) {
        let pupupView = PopupViewController.instantiate()
        present(pupupView, animated: true)
    }
    
}


