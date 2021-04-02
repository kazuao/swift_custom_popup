//
//  PopupView.swift
//  CustomPopupSample
//
//  Created by Kazunori Aoki on 2021/04/02.
//

import UIKit
import Foundation

class PopupViewController: UIViewController {
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var checkbox: UIButton!
    
    private var checked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backView.layer.cornerRadius = 8.0
        checkbox.layer.borderWidth = 2.0
        checkbox.layer.borderColor = UIColor.gray.cgColor
        checkbox.layer.backgroundColor = UIColor.white.cgColor
        checkbox.tintColor = UIColor.hex(string: "6ED227", alpha: 1)
    }
    
    static func instantiate() -> PopupViewController {
        let storyboard = UIStoryboard(name: "Popup", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "Popup") as! PopupViewController
    }
    
    @IBAction func tapCheckbox(_ sender: Any) {
        print("checkbox tap")
        switch checked {
        case false:
            self.checkbox.setImage(UIImage(systemName: "checkmark"), for: .normal)
            checked = true
            break
            
        case true:
            self.checkbox.setImage(nil, for: .normal)
            checked = false
            break
        }
    }
    @IBAction func tapClear(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
