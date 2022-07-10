//
//  NewViewController.swift
//  hwSalomeKhizanishvili
//
//  Created by salo khizanishvili on 09.07.22.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var username2: UITextField!
    @IBOutlet public var email2: UITextField!
    @IBOutlet weak var password2: UITextField!
    @IBOutlet weak var confirmPass: UITextField!
    
    var pass: String?
    var confirmPassword: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(pass != nil && confirmPass != nil){
            password2.text = pass
            confirmPass.text = confirmPassword
        }
    }
    
    func alert1() {
        let alert = UIAlertController(title: "Title", message: "passwords doesn't match", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
        present(alert, animated: true)
    }
    
    func alert2() {
        let alert = UIAlertController(title: "Title", message: "This password is not secure", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
        present(alert, animated: true)
    }
    
    
    @IBAction func SignUp2(_ sender: Any) {
        
        
        if(username2.text == "" || email2.text == "" || password2.text == ""){
            alert()
        }
        
        let str = password2.text!
        var res = ""
        let characters = CharacterSet.decimalDigits
        let range = str.rangeOfCharacter(from: characters)
        if range != nil {
            res = "we have int in password"
        }
        let uppercasedPass = str.uppercased()
        let res2 = (str + uppercasedPass).count - Set(uppercasedPass + str).count
        if(password2.text != confirmPass.text){
            alert1()
        }
        if(str.count < 8 || res != "we have int in password" ||
           res2 == 0){
            alert2()
        }
        
        else{
        let controller = storyboard?.instantiateViewController(identifier: "present")as!ViewController
        controller.password = password2.text
        controller.userName = username2.text
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)

        }
    
    }
    
    func alert() {
        let alert = UIAlertController(title: "Title", message: "Please fill in all textfields", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
        present(alert, animated: true)
    }
    
}
