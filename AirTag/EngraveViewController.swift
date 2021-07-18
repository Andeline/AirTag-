//
//  EngraveViewController.swift
//  AirTag
//
//  Created by 蔡佳穎 on 2021/7/17.
//

import UIKit

class EngraveViewController: UIViewController {

    @IBOutlet weak var engraveLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var engraveTextField: UITextField!
    
    var engraveText: String = ""
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        engraveLabel.text = ""
        warningLabel.isHidden = true
    }

    @IBAction func showLabel(_ sender: UITextField) {
        
        //從TextField取得文字，顯示於Label
        engraveText = "\(engraveTextField.text ?? "")"
        engraveLabel.text = engraveText
        
        //若超過顯示範圍
        if engraveText.count > 4 {
            warningLabel.isHidden = false
        } else {
            warningLabel.isHidden = true
        }
    }
    
    @IBAction func closeKeyboard(_ sender: UITextField) {
        engraveText = engraveTextField.text!
    }
}
