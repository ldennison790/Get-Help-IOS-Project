//
//  OthersViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 05/06/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class OthersViewController: UIViewController {
    
    
    var container: UIView = {
        let V = UIView(frame: CGRect(x:0, y:0, width: 500, height : 800))
        V.backgroundColor = UIColor(red: 0/255, green: 116/255, blue: 249/255, alpha: 1.0)
        return V
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 146/255, green: 173/255, blue: 184/225, alpha: 1.0)
        self.view.addSubview(container)
        
        let DrugAbuseHelp = UIButton(frame: CGRect(x:00, y: 50, width: 400, height: 75))
        DrugAbuseHelp.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        DrugAbuseHelp.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        DrugAbuseHelp.addTarget(self, action: #selector(DrugAbuseHelpAction), for: .touchUpInside)
        DrugAbuseHelp.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        DrugAbuseHelp.setTitle("Drug Abuse Help", for: .normal)
        
        self.container.addSubview(DrugAbuseHelp)
        
        let Settings = UIButton(frame: CGRect(x:0, y: 200, width: 400, height: 75))
        Settings.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Settings.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        Settings.addTarget(self, action: #selector(SettingsAction), for: .touchUpInside)
        Settings.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Settings.setTitle("Settings", for: .normal)
        
        let Logout = UIButton(frame: CGRect(x:0, y: 350, width: 400, height: 75))
        Logout.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Logout.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        Logout.addTarget(self, action: #selector(LogoutAction), for: .touchUpInside)
        Logout.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Logout.setTitle("Logout", for: .normal)
        
        
        let Music = UIButton(frame: CGRect(x:0, y: 480, width: 400, height: 75))
        Music.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Music.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        Music.addTarget(self, action: #selector(musicAction), for: .touchUpInside)
        Music.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Music.setTitle("Music", for: .normal)
        
        
        
        let Back = UIButton(frame: CGRect(x:0, y: 600, width: 400, height: 75))
        Back.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Back.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        Back.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        Back.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Back.setTitle("Back", for: .normal)

        
        self.container.addSubview(Settings)
        self.container.addSubview(Back)
        self.container.addSubview(Logout)
        self.container.addSubview(Music)
        
        


        

        
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func DrugAbuseHelpAction()
    {
        self.present(CommonActionViewController(),animated: true, completion: nil)
    }
    func SettingsAction()
    {
        self.present(CommonActionViewController(),animated: true, completion: nil)
    }
    func LogoutAction()
    {
        do
        {
            
            
            try Auth.auth().signOut()
            
            
            self.present(LoginViewController(),animated: true, completion: nil)
        }
        catch{
            print ("There was a problem logging out.")
        }
    }
    
    func backAction()
    {
        self.present(MainMenuViewController(),animated:true, completion: nil)
    }
    
    func musicAction()
    {
        self.present(MusicViewController(), animated: true, completion: nil)
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
