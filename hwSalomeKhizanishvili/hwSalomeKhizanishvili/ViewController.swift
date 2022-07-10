//
//  ViewController.swift
//  hwSalomeKhizanishvili
//
//  Created by salo khizanishvili on 09.07.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var username1: UITextField!
    @IBOutlet weak var password1: UITextField!
    var userName: String?
    var password: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if(userName != nil && password != nil){
            username1.text = userName
            password1.text = password
        }
        
    }
    
    
    @IBAction func SignInButton(_ sender: Any) {
        if(username1.text == userName && password1.text == password){
            let nextPage = self.storyboard?.instantiateViewController(withIdentifier: "third") as! ThirdViewController
            nextPage.userName = username1.text
            nextPage.email = ""
            nextPage.modalPresentationStyle = .fullScreen
            present(nextPage, animated: true, completion: nil)
        }
        else{
            alert()
        }
        
    }
    
    func alert() {
        let alert = UIAlertController(title: "Title", message: "incorrect credentials", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
        present(alert, animated: true)
    }
   
        


    

    @IBAction func signUpButton(_ sender: Any) {
    }
    
}

