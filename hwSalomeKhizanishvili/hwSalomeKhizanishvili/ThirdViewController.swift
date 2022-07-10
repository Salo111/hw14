//
//  ThirdViewController.swift
//  hwSalomeKhizanishvili
//
//  Created by salo khizanishvili on 09.07.22.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    var userName: String?
    var email: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(userName != nil && email != nil){
            label1.text = userName
            label2.text = email
        }
    }

}













