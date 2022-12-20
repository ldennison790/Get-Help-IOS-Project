//
//  LoginViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 23/05/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    var container: UIView = {
        let V = UIView(frame: CGRect(x:0, y:0, width: 300, height : 300))
        V.backgroundColor = UIColor(red: 69/255, green: 159/255, blue: 134/255, alpha: 1.0)
        return V
    }()
    
    var EmailTextField: MYTextField = {
        
        
        let lemail = MYTextField(frame : CGRect( x: 10, y : 100, width : 280, height: 40))
        lemail.backgroundColor = .white
        lemail.placeholder = "Email"
        lemail.keyboardType = .emailAddress
        lemail.font = UIFont.systemFont(ofSize: 14)
        return lemail
     }()
    
    var PasswordTextField: MYTextField = {
        
        let lpassword = MYTextField(frame : CGRect(x: 10, y : 160, width : 280, height : 40))
        lpassword.backgroundColor = .white
        lpassword.placeholder = "Password"
        lpassword.keyboardType = .emailAddress
        lpassword.font = UIFont.systemFont(ofSize: 14)
        lpassword.isSecureTextEntry = true
        return lpassword
        
    }()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.EmailTextField.delegate = self
        self.PasswordTextField.delegate = self
        self.view.backgroundColor = UIColor(red: 146/255, green: 173/255, blue: 184/225, alpha: 1.0)
        
        self.view.addSubview(self.container)
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))

        
        let circleImage = UIImageView(frame : CGRect(x: self.container.frame.midX - 30, y: 10,
                                                 width:70, height: 60))
        circleImage.backgroundColor = .white
        circleImage.layer.cornerRadius = 10
        circleImage.clipsToBounds = true
        circleImage.image = #imageLiteral(resourceName: "GetHelp logo-2")
        
        self.container.addSubview(circleImage)
        
        self.container.addSubview(self.EmailTextField)
        
        self.container.addSubview(self.PasswordTextField)
        
        let btnLogin = UIButton(frame: CGRect(x: 10, y:210, width: 280, height: 40))
        btnLogin.setBackgroundImage(UIImage(color : UIColor(red:39/255, green: 209/255,blue:169/255, alpha:
            1.0)), for: .normal)
        btnLogin.setTitle("LOGIN", for : .normal)
        btnLogin.addTarget(self, action: #selector(loginAction), for : .touchUpInside)
        
        self.container.addSubview(btnLogin)
        
        
        
        let register = UIButton()
        register.frame = CGRect(x: 70, y: 260, width: 150, height: 40)
        register.setTitle("REGISTER", for: .normal)
        register.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        register.setTitleColor(UIColor(red:39/255, green: 209/255,blue:169/255, alpha:
            1.0), for: .highlighted)
        register.addTarget(self, action: #selector(registerAction), for: .touchUpInside)
        self.container.addSubview(register)
        
        
        self.container.center = self.view.center

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loginAction()
    {
        if (PasswordTextField.text?.characters.count)! < 6
        {
            self.createAlert(title: "Error", message: "Password incorrect!")
        }
        
        if ((EmailTextField.text?.isEmpty)! || (PasswordTextField.text?.isEmpty)!)
        {
            self.createAlert(title: "Error", message: "All fields must be completed!")
            
        }
        
        if ((EmailTextField.text?.isEmpty)! && (PasswordTextField.text?.isEmpty)!)
        {
            self.createAlert(title: "Error", message: "All fields must be completed!")
            
        }
        if let email = EmailTextField.text, let password = PasswordTextField.text
        {
             Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
                if let firebaseError = error
                {
                    print (firebaseError.localizedDescription)
                    self.createAlert(title: "Error", message: "Email or Password incorrect!")
                    return
                    }
                
                self.present(MainMenuViewController(), animated: true, completion: nil)
             })
                
                
            
        }
    }
    
    func registerAction()
    {
        
        self.present(RegisterViewController(), animated: true, completion: nil)
    }
    
    func createAlert(title: String, message: String)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    func dismissKeyboard() {
        EmailTextField.resignFirstResponder()
        PasswordTextField.resignFirstResponder()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
