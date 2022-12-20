//
//  RegisterViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 24/05/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class RegisterViewController: UIViewController, UITextFieldDelegate {
    
    
    
    
    var container : UIView = {
    let v = UIView (frame: CGRect(x: 0, y: 0, width: 300, height:350))
    v.backgroundColor = UIColor(red: 42/255, green: 68/255, blue: 91/255, alpha: 1.0)
    return v
    
    }()
    
    
    var EmailTextField:  MYTextField = {
        let rEmail = MYTextField(frame: CGRect(x: 10,y : 100, width : 280, height : 40))
        rEmail.backgroundColor = .white
        rEmail.placeholder = "Email"
        rEmail.font = UIFont.systemFont(ofSize: 14)
        
        return rEmail
    }()
    
    var passwordTextField:MYTextField = {
        let rPass = MYTextField(frame: CGRect(x: 10, y: 160, width : 280, height : 40))
        rPass.backgroundColor = .white
        rPass.placeholder = "Password(6 or more characters)"
        rPass.font = UIFont.systemFont(ofSize: 14)
        rPass.isSecureTextEntry = true
        return rPass
    }()

    override func viewDidLoad() {
        
        
       
        super.viewDidLoad()
        self.EmailTextField.delegate = self
        self.passwordTextField.delegate = self
        self.view.backgroundColor = UIColor(red:146/255, green: 173/255, blue: 184/255, alpha: 1.0)
        self.view.addSubview(self.container)
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))
   
        
        let circleImage = UIImageView(frame : CGRect(x: self.container.frame.midX - 30, y: 10,
                                                     width:70, height: 60))
        circleImage.backgroundColor = .white
        circleImage.layer.cornerRadius = 10
        circleImage.clipsToBounds = true
        circleImage.image = #imageLiteral(resourceName: "GetHelp logo-2")
        
        self.container.addSubview(circleImage)
        
        self.container.center = self.view.center
        
        self.container.addSubview(self.EmailTextField)
        
        self.container.addSubview(self.passwordTextField)
        
        
        
        let btnRegister = UIButton(frame: CGRect(x:10, y: 270, width: 280, height: 40))
        btnRegister.setBackgroundImage(UIImage(color: UIColor(red:146/255, green: 173/255, blue: 184/255, alpha: 1.0)), for: .normal)
        btnRegister.addTarget(self, action: #selector(registerAction), for: .touchUpInside)
        btnRegister.setTitle("REGISTER", for: .normal)
        
        self.container.addSubview(btnRegister)
        
        let btnLogin = UIButton(frame: CGRect(x: 230, y: 310, width: 70, height : 40))
        btnLogin.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        btnLogin.setTitle("LOGIN", for: .normal)
        btnLogin.setTitleColor(UIColor(red: 39/255, green:209/255, blue: 169/255, alpha: 1.0), for: .highlighted)
        btnLogin.addTarget(self, action: #selector (loginAction) , for: .touchUpInside)
        
        self.container.addSubview(btnLogin)
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func registerAction()
    {
      if ((passwordTextField.text?.characters.count)! < 6)
      {
        createAlert(title: "Error", message: "Password must be more than 6 characters!")
        }
        
        if ((EmailTextField.text?.isEmpty)! || (passwordTextField.text?.isEmpty)!)
        {
            self.createAlert(title: "Error", message: "All fields must be completed!")
            
        }
        
        if ((EmailTextField.text?.isEmpty)! && (passwordTextField.text?.isEmpty)!)
        {
            self.createAlert(title: "Error", message: "All fields must be completed!")
            
        }
        
        if let email = EmailTextField.text, let password = passwordTextField.text
        {
            Auth.auth().createUser(withEmail: email, password: password, completion: { user, error in
               
                
                if let firebaseError = error
                {
                    print (firebaseError.localizedDescription)
                    self.createAlert(title: "Error", message: "Email is already being used!!")
                    
                    return
                }
                self.present(MainMenuViewController(), animated: true, completion: nil)
                
                
                
            })
        }
        
        
    }
    
    func loginAction()
    {
        self.present(LoginViewController(), animated: true, completion: nil)
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
        passwordTextField.resignFirstResponder()
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
