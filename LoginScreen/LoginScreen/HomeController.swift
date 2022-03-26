//
//  ViewController.swift
//  LoginScreen
//
//  Created by SP10472 on 22/03/22.
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var autenticatorButton: UIButton!
    
    let storedLogin = "example@gmail.com"
    let storedPass = "123456"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
    }
    
    @IBAction func goButton(_ sender: UIButton){
        if let enteredEmail = emailTextField.text,
           let enteredPassword = passwordTextField.text {
            
            
            if enteredEmail == "" || enteredPassword == ""{
                let alert = UIAlertController(title: nil, message: "É necessário inserir login e senha", preferredStyle: .alert)
                alert.addAction(UIAlertAction (title: "Ok", style: .destructive, handler: nil))
                present(alert, animated: true, completion: nil)
                }
            
            else{
                if validateEmail(email: enteredEmail) {
                                            
            if enteredEmail == storedLogin && enteredPassword == storedPass{
            let alert = UIAlertController(title: nil, message: "SUCCESS", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default , handler: nil))
            present(alert, animated: true, completion: nil)
            }
                else{
                    let alert = UIAlertController(title: nil, message: "Login ou senha incorretas.", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .destructive , handler: nil))
                            present(alert, animated: true, completion: nil)
                    passwordTextField.text = ""
                }
            }
                else{
                    let alert = UIAlertController(title: nil, message: "Formato de email inválido.", preferredStyle: .alert)
                    alert.addAction(UIAlertAction (title: "OK", style: .destructive, handler: nil))
                    present(alert,animated: true, completion: nil)
                    passwordTextField.text = ""
                }
                
              }
           }
        func validateEmail(email:String) -> Bool {
            let regexEmail = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
                        let emailPred = NSPredicate(format: "SELF MATCHES %@", regexEmail)
                        return emailPred.evaluate(with: email)
        }
    }
}
        
        extension HomeController: UITextFieldDelegate{
            
            func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                textField.resignFirstResponder()
                return true
            }
            
            override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
                view.endEditing(true)
            }
            
        }
            
            
        
         

    


